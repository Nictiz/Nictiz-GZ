<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9432
Name: MP HL7 Medicatieafspraken Organizer
Description: Lijst van medicatieafspraken.
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057-closed"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP HL7 Medicatieafspraken Organizer</title>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432'] | self::hl7:code[(@code = '419891008' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:statusCode[@code = 'completed'] | self::hl7:recordTarget[hl7:patientRole] | self::hl7:participant[@typeCode='RESP'] | self::hl7:participant[@typeCode='CST'] | self::hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]] | self::hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]])]"
         id="d40e8971-true-d417986e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d40e8971-true-d417986e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432'] | hl7:code[(@code = '419891008' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:statusCode[@code = 'completed'] | hl7:recordTarget[hl7:patientRole] | hl7:participant[@typeCode='RESP'] | hl7:participant[@typeCode='CST'] | hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]] | hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]] (rule-reference: d40e8971-true-d417986e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:recordTarget[hl7:patientRole]/*[not(@xsi:nil = 'true')][not(self::hl7:patientRole)]"
         id="d418009e19-true-d418113e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d418009e19-true-d418113e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patientRole (rule-reference: d418009e19-true-d418113e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:patient)]"
         id="d418009e21-true-d418228e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d418009e21-true-d418228e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:patient (rule-reference: d418009e21-true-d418228e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d418009e79-true-d418278e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d418009e79-true-d418278e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d418009e79-true-d418278e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d418009e84-true-d418351e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d418009e84-true-d418351e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d418009e84-true-d418351e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d418009e89-true-d418364e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d418009e89-true-d418364e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d418009e89-true-d418364e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:birthTime | self::sdtc:deceasedInd | self::sdtc:deceasedTime | self::sdtc:multipleBirthInd | self::hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:guardian)]"
         id="d418009e94-true-d418477e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d418009e94-true-d418477e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code] | hl7:birthTime | sdtc:deceasedInd | sdtc:deceasedTime | sdtc:multipleBirthInd | hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:guardian (rule-reference: d418009e94-true-d418477e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | self::hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d418009e96-true-d418498e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d418009e96-true-d418498e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d418009e96-true-d418498e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:guardianPerson)]"
         id="d418009e173-true-d418691e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d418009e173-true-d418691e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:guardianPerson (rule-reference: d418009e173-true-d418691e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d418009e182-true-d418743e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d418009e182-true-d418743e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d418009e182-true-d418743e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d418009e187-true-d418816e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d418009e187-true-d418816e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d418009e187-true-d418816e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d418009e192-true-d418829e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d418009e192-true-d418829e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d418009e192-true-d418829e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]])]"
         id="d418009e200-true-d418863e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d418009e200-true-d418863e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] (rule-reference: d418009e200-true-d418863e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | self::hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d418009e202-true-d418884e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d418009e202-true-d418884e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d418009e202-true-d418884e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/*[not(@xsi:nil = 'true')][not(self::sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d418009e207-true-d418991e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d418009e207-true-d418991e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d418009e207-true-d418991e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:participant[@typeCode='RESP']/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:participantRole[@classCode = 'ASSIGNED'])]"
         id="d419004e9-true-d419016e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9031-2014-11-13T000000.html"
              test="not(.)">(kezo-CDAInhoudsverantwoordelijke)/d419004e9-true-d419016e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:participantRole[@classCode = 'ASSIGNED'] (rule-reference: d419004e9-true-d419016e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:participant[@typeCode='RESP']/hl7:participantRole[@classCode = 'ASSIGNED']/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[@codeSystem = '2.16.840.1.113883.2.4.15.111' or @nullFlavor] | self::hl7:addr | self::hl7:telecom | self::hl7:playingEntity[@classCode = 'PSN'][@determinerCode = 'INSTANCE'] | self::hl7:scopingEntity[@classCode = 'ORG'][@determinerCode = 'INSTANCE'])]"
         id="d419021e46-true-d419066e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9030-2014-11-13T000000.html"
              test="not(.)">(kezo-CDAResponsiblePartyBody)/d419021e46-true-d419066e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[@codeSystem = '2.16.840.1.113883.2.4.15.111' or @nullFlavor] | hl7:addr | hl7:telecom | hl7:playingEntity[@classCode = 'PSN'][@determinerCode = 'INSTANCE'] | hl7:scopingEntity[@classCode = 'ORG'][@determinerCode = 'INSTANCE'] (rule-reference: d419021e46-true-d419066e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:participant[@typeCode='RESP']/hl7:participantRole[@classCode = 'ASSIGNED']/hl7:playingEntity[@classCode = 'PSN'][@determinerCode = 'INSTANCE']/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:name)]"
         id="d419021e68-true-d419116e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9030-2014-11-13T000000.html"
              test="not(.)">(kezo-CDAResponsiblePartyBody)/d419021e68-true-d419116e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:name (rule-reference: d419021e68-true-d419116e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:participant[@typeCode='RESP']/hl7:participantRole[@classCode = 'ASSIGNED']/hl7:scopingEntity[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[@codeSystem = '2.16.840.1.113883.2.4.15.1060' or @nullFlavor] | self::hl7:desc)]"
         id="d419021e85-true-d419157e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9030-2014-11-13T000000.html"
              test="not(.)">(kezo-CDAResponsiblePartyBody)/d419021e85-true-d419157e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[@codeSystem = '2.16.840.1.113883.2.4.15.1060' or @nullFlavor] | hl7:desc (rule-reference: d419021e85-true-d419157e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:participant[@typeCode='CST']/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:participantRole[@classCode = 'ASSIGNED'])]"
         id="d419180e9-true-d419192e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9032-2014-11-13T000000.html"
              test="not(.)">(kezo-CDADossierhouder)/d419180e9-true-d419192e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:participantRole[@classCode = 'ASSIGNED'] (rule-reference: d419180e9-true-d419192e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:participant[@typeCode='CST']/hl7:participantRole[@classCode = 'ASSIGNED']/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom | self::hl7:playingEntity[@classCode = ('PSN', 'ORG')][@determinerCode = 'INSTANCE'] | self::hl7:scopingEntity[@classCode = 'ORG'][@determinerCode = 'INSTANCE'])]"
         id="d419197e76-true-d419254e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9041-2018-10-16T000000.html"
              test="not(.)">(kezo-CDACustodianPartyBody)/d419197e76-true-d419254e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom | hl7:playingEntity[@classCode = ('PSN', 'ORG')][@determinerCode = 'INSTANCE'] | hl7:scopingEntity[@classCode = 'ORG'][@determinerCode = 'INSTANCE'] (rule-reference: d419197e76-true-d419254e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:participant[@typeCode='CST']/hl7:participantRole[@classCode = 'ASSIGNED']/hl7:playingEntity[@classCode = ('PSN', 'ORG')][@determinerCode = 'INSTANCE']/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d419197e106-true-d419301e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9041-2018-10-16T000000.html"
              test="not(.)">(kezo-CDACustodianPartyBody)/d419197e106-true-d419301e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d419197e106-true-d419301e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:participant[@typeCode='CST']/hl7:participantRole[@classCode = 'ASSIGNED']/hl7:scopingEntity[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:desc)]"
         id="d419197e120-true-d419338e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9041-2018-10-16T000000.html"
              test="not(.)">(kezo-CDACustodianPartyBody)/d419197e120-true-d419338e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:desc (rule-reference: d419197e120-true-d419338e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/*[not(@xsi:nil = 'true')][not(self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']])]"
         id="d40e9020-true-d419576e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d40e9020-true-d419576e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']] (rule-reference: d40e9020-true-d419576e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] | self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429'] | self::cda:id | self::cda:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::cda:text | self::cda:effectiveTime[@value] | self::cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | self::cda:routeCode | self::cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | self::cda:author[hl7:assignedAuthor] | self::cda:participant[@typeCode = 'CALLBCK'][cda:participantRole] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | self::cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] | self::hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter] | self::hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]] | self::cda:precondition[cda:criterion])]"
         id="d419365e7-true-d419786e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d419365e7-true-d419786e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] | cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429'] | cda:id | cda:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | cda:text | cda:effectiveTime[@value] | cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | cda:routeCode | cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | cda:author[hl7:assignedAuthor] | cda:participant[@typeCode = 'CALLBCK'][cda:participantRole] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] | hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter] | hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]] | cda:precondition[cda:criterion] (rule-reference: d419365e7-true-d419786e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:width | self::hl7:high)]"
         id="d419808e63-true-d419849e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9427-2022-11-22T115521.html"
              test="not(.)">(MPCDAVoorstelMedicatieAfspraakDelen1v3)/d419808e63-true-d419849e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:width | hl7:high (rule-reference: d419808e63-true-d419849e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']])]"
         id="d419797e27-true-d419919e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d419797e27-true-d419919e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] (rule-reference: d419797e27-true-d419919e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | self::hl7:manufacturedMaterial)]"
         id="d419893e1-true-d419958e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d419893e1-true-d419958e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | hl7:manufacturedMaterial (rule-reference: d419893e1-true-d419958e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d419969e112-true-d420006e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d419969e112-true-d420006e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d419969e112-true-d420006e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d420011e40-true-d420028e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d420011e40-true-d420028e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d420011e40-true-d420028e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d420061e7-true-d420084e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d420061e7-true-d420084e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d420061e7-true-d420084e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d420061e11-true-d420121e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d420061e11-true-d420121e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d420061e11-true-d420121e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d420091e5-true-d420136e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d420091e5-true-d420136e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d420091e5-true-d420136e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d420091e19-true-d420157e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d420091e19-true-d420157e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d420091e19-true-d420157e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code)]"
         id="d420168e11-true-d420215e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d420168e11-true-d420215e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code (rule-reference: d420168e11-true-d420215e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d420172e4-true-d420248e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d420172e4-true-d420248e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d420172e4-true-d420248e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/*[not(@xsi:nil = 'true')][not(self::hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:time | self::hl7:assignedAuthor)]"
         id="d419797e29-true-d420405e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d419797e29-true-d420405e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:time | hl7:assignedAuthor (rule-reference: d419797e29-true-d420405e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.528.1.1007.5.1'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:assignedPerson | self::hl7:representedOrganization)]"
         id="d420261e15-true-d420519e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d420261e15-true-d420519e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.528.1.1007.5.1'] | hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:assignedPerson | hl7:representedOrganization (rule-reference: d420261e15-true-d420519e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d420524e26-true-d420615e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(.)">(zorgverlener-assigned-contents)/d420524e26-true-d420615e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d420524e26-true-d420615e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d420524e34-true-d420688e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(.)">(zorgverlener-assigned-contents)/d420524e34-true-d420688e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d420524e34-true-d420688e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d420524e42-true-d420701e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(.)">(zorgverlener-assigned-contents)/d420524e42-true-d420701e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d420524e42-true-d420701e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d420524e50-true-d420738e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d420524e50-true-d420738e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d420524e50-true-d420738e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | self::hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d420715e1-true-d420759e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d420715e1-true-d420759e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d420715e1-true-d420759e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode | self::hl7:asOrganizationPartOf)]"
         id="d420859e42-true-d420933e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d420859e42-true-d420933e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode | hl7:asOrganizationPartOf (rule-reference: d420859e42-true-d420933e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d420859e67-true-d420987e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d420859e67-true-d420987e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d420859e67-true-d420987e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d420859e76-true-d421000e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d420859e76-true-d421000e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d420859e76-true-d421000e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d420859e84-true-d421046e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d420859e84-true-d421046e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d420859e84-true-d421046e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d420859e102-true-d421142e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d420859e102-true-d421142e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d420859e102-true-d421142e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d420859e121-true-d421167e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d420859e121-true-d421167e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d420859e121-true-d421167e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:participant[@typeCode = 'CALLBCK'][cda:participantRole]/*[not(@xsi:nil = 'true')][not(self::cda:participantRole)]"
         id="d419797e39-true-d421211e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d419797e39-true-d421211e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:participantRole (rule-reference: d419797e39-true-d421211e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:participant[@typeCode = 'CALLBCK'][cda:participantRole]/cda:participantRole/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.528.1.1007.5.1'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | self::cda:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::cda:playingEntity | self::cda:scopingEntity)]"
         id="d421180e3-true-d421269e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d421180e3-true-d421269e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.528.1.1007.5.1'] | hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | cda:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | cda:playingEntity | cda:scopingEntity (rule-reference: d421180e3-true-d421269e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:participant[@typeCode = 'CALLBCK'][cda:participantRole]/cda:participantRole/cda:playingEntity/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d421180e22-true-d421337e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d421180e22-true-d421337e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d421180e22-true-d421337e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:participant[@typeCode = 'CALLBCK'][cda:participantRole]/cda:participantRole/cda:playingEntity/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | self::hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d421342e16-true-d421360e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2018-06-11T000000.html"
              test="not(.)">(persoon)/d421342e16-true-d421360e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d421342e16-true-d421360e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:participant[@typeCode = 'CALLBCK'][cda:participantRole]/cda:participantRole/cda:scopingEntity/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::cda:code | self::cda:desc)]"
         id="d421180e32-true-d421474e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d421180e32-true-d421474e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | cda:code | cda:desc (rule-reference: d421180e32-true-d421474e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']])]"
         id="d421533e14-true-d421550e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421533e14-true-d421550e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']] (rule-reference: d421533e14-true-d421550e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414'] | self::hl7:code[(@code = '410684002' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-12-16T102010.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d421537e6-true-d421581e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421537e6-true-d421581e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414'] | hl7:code[(@code = '410684002' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-12-16T102010.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d421537e6-true-d421581e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']])]"
         id="d421533e22-true-d421621e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421533e22-true-d421621e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']] (rule-reference: d421533e22-true-d421621e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438'] | self::hl7:code[(@code = '160111000146106' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.42-2022-11-14T132525.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.42-2022-11-14T132525.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d421608e9-true-d421652e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421608e9-true-d421652e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438'] | hl7:code[(@code = '160111000146106' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.42-2022-11-14T132525.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.42-2022-11-14T132525.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d421608e9-true-d421652e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']])]"
         id="d421533e33-true-d421707e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421533e33-true-d421707e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']] (rule-reference: d421533e33-true-d421707e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] | self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19'] | self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:text | self::hl7:effectiveTime | self::hl7:value | self::hl7:entryRelationship[@typeCode = 'REFR'][not(@nullFlavor)] | self::hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]] | self::hl7:entryRelationship[@typeCode = 'SUBJ'])]"
         id="d421679e6-true-d421778e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421679e6-true-d421778e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] | hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19'] | hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:text | hl7:effectiveTime | hl7:value | hl7:entryRelationship[@typeCode = 'REFR'][not(@nullFlavor)] | hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]] | hl7:entryRelationship[@typeCode = 'SUBJ'] (rule-reference: d421679e6-true-d421778e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:effectiveTime/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d421679e70-true-d421832e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421679e70-true-d421832e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:high (rule-reference: d421679e70-true-d421832e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[@typeCode = 'REFR'][not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.20']])]"
         id="d421679e107-true-d421870e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421679e107-true-d421870e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.20']] (rule-reference: d421679e107-true-d421870e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[@typeCode = 'REFR'][not(@nullFlavor)]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.20']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.20'] | self::hl7:id | self::hl7:code[(@code = '33999-4' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor] | self::hl7:text | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.2-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d421859e15-true-d421911e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421859e15-true-d421911e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.20'] | hl7:id | hl7:code[(@code = '33999-4' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor] | hl7:text | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.2-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d421859e15-true-d421911e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']])]"
         id="d421679e125-true-d421963e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421679e125-true-d421963e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']] (rule-reference: d421679e125-true-d421963e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54'] | self::hl7:id | self::hl7:code[(@code = '408729009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:text | self::hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] | self::hl7:effectiveTime | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d421950e9-true-d422018e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421950e9-true-d422018e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54'] | hl7:id | hl7:code[(@code = '408729009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:text | hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] | hl7:effectiveTime | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d421950e9-true-d422018e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[@typeCode = 'SUBJ']/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d421679e136-true-d422082e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421679e136-true-d422082e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d421679e136-true-d422082e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[@typeCode = 'SUBJ']/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d422071e15-true-d422109e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d422071e15-true-d422109e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d422071e15-true-d422109e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']])]"
         id="d421533e41-true-d422150e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421533e41-true-d422150e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']] (rule-reference: d421533e41-true-d422150e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d422134e9-true-d422169e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d422134e9-true-d422169e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d422134e9-true-d422169e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d422180e43-true-d422201e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9000-2016-06-26T175534.html"
              test="not(.)">(NHGTabel25Bcodes)/d422180e43-true-d422201e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d422180e43-true-d422201e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']])]"
         id="d421533e52-true-d422227e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421533e52-true-d422227e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']] (rule-reference: d421533e52-true-d422227e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401'] | self::hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.45-2022-03-10T164013.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d422214e6-true-d422258e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d422214e6-true-d422258e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401'] | hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.45-2022-03-10T164013.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d422214e6-true-d422258e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d421533e60-true-d422298e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421533e60-true-d422298e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d421533e60-true-d422298e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d422285e7-true-d422325e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d422285e7-true-d422325e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d422285e7-true-d422325e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/*[not(@xsi:nil = 'true')][not(self::cda:sequenceNumber | self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']])]"
         id="d421533e71-true-d422409e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9428-2022-11-22T124407.html"
              test="not(.)">(MPCDAVoorstelMedicatieAfspraakDelen2_v4)/d421533e71-true-d422409e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:sequenceNumber | cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] (rule-reference: d421533e71-true-d422409e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | self::f:effectiveTime | self::hl7:doseQuantity[hl7:center] | self::hl7:doseQuantity[hl7:low|hl7:high] | self::cda:rateQuantity | self::cda:maxDoseQuantity | self::cda:consumable | self::cda:precondition[cda:criterion])]"
         id="d422420e47-true-d422500e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d422420e47-true-d422500e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | f:effectiveTime | hl7:doseQuantity[hl7:center] | hl7:doseQuantity[hl7:low|hl7:high] | cda:rateQuantity | cda:maxDoseQuantity | cda:consumable | cda:precondition[cda:criterion] (rule-reference: d422420e47-true-d422500e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/f:effectiveTime/*[not(@xsi:nil = 'true')][not(self::f:modifierExtension | self::f:repeat)]"
         id="d422420e66-true-d422526e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d422420e66-true-d422526e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: f:modifierExtension | f:repeat (rule-reference: d422420e66-true-d422526e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/*[not(@xsi:nil = 'true')][not(self::hl7:center)]"
         id="d422545e9-true-d422570e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d422545e9-true-d422570e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:center (rule-reference: d422545e9-true-d422570e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/hl7:center/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d422545e36-true-d422588e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d422545e36-true-d422588e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d422545e36-true-d422588e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d422545e45-true-d422625e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d422545e45-true-d422625e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:high (rule-reference: d422545e45-true-d422625e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d422545e68-true-d422643e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d422545e68-true-d422643e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d422545e68-true-d422643e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d422545e76-true-d422676e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d422545e76-true-d422676e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d422545e76-true-d422676e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:rateQuantity/*[not(@xsi:nil = 'true')][not(self::cda:low | self::cda:center | self::cda:high)]"
         id="d422696e25-true-d422720e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9150-2016-07-26T150449.html"
              test="not(.)">(MPCDARateQuantity)/d422696e25-true-d422720e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:low | cda:center | cda:high (rule-reference: d422696e25-true-d422720e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator | self::hl7:denominator)]"
         id="d422420e87-true-d422775e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d422420e87-true-d422775e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator | hl7:denominator (rule-reference: d422420e87-true-d422775e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/hl7:numerator/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d422745e5-true-d422793e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d422745e5-true-d422793e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d422745e5-true-d422793e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/*[not(@xsi:nil = 'true')][not(self::cda:criterion)]"
         id="d422420e103-true-d422840e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d422420e103-true-d422840e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:criterion (rule-reference: d422420e103-true-d422840e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/*[not(@xsi:nil = 'true')][not(self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d422420e118-true-d422855e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d422420e118-true-d422855e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d422420e118-true-d422855e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d422847e17-true-d422874e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d422847e17-true-d422874e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d422847e17-true-d422874e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']])]"
         id="d421533e93-true-d422900e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421533e93-true-d422900e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']] (rule-reference: d421533e93-true-d422900e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | self::hl7:id | self::hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d422887e9-true-d422932e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d422887e9-true-d422932e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | hl7:id | hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d422887e9-true-d422932e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']])]"
         id="d421533e104-true-d422976e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421533e104-true-d422976e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']] (rule-reference: d421533e104-true-d422976e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101'] | self::hl7:id | self::hl7:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d422963e9-true-d423010e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d422963e9-true-d423010e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101'] | hl7:id | hl7:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d422963e9-true-d423010e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386']])]"
         id="d421533e115-true-d423055e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d421533e115-true-d423055e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386']] (rule-reference: d421533e115-true-d423055e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386'] | self::hl7:id | self::hl7:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] | self::hl7:consumable)]"
         id="d423042e9-true-d423087e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d423042e9-true-d423087e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386'] | hl7:id | hl7:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] | hl7:consumable (rule-reference: d423042e9-true-d423087e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']])]"
         id="d419797e43-true-d423131e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d419797e43-true-d423131e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']] (rule-reference: d419797e43-true-d423131e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | self::hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value)]"
         id="d423118e13-true-d423158e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d423118e13-true-d423158e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value (rule-reference: d423118e13-true-d423158e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d419797e58-true-d423196e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d419797e58-true-d423196e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d419797e58-true-d423196e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d423183e14-true-d423223e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d423183e14-true-d423223e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d423183e14-true-d423223e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]/*[not(@xsi:nil = 'true')][not(self::hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN'])]"
         id="d423249e10-true-d423261e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="not(.)">(partEncounterReference)/d423249e10-true-d423261e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN'] (rule-reference: d423249e10-true-d423261e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]/hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN']/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)])]"
         id="d423249e28-true-d423278e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="not(.)">(partEncounterReference)/d423249e28-true-d423278e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] (rule-reference: d423249e28-true-d423278e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]])]"
         id="d423292e10-true-d423304e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="not(.)">(partConcernReference)/d423292e10-true-d423304e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]] (rule-reference: d423292e10-true-d423304e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)] | self::hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')])]"
         id="d423292e28-true-d423326e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="not(.)">(partConcernReference)/d423292e28-true-d423326e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')] (rule-reference: d423292e28-true-d423326e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:precondition[cda:criterion]/*[not(@xsi:nil = 'true')][not(self::cda:criterion)]"
         id="d419797e94-true-d423355e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d419797e94-true-d423355e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:criterion (rule-reference: d419797e94-true-d423355e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9430'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:precondition[cda:criterion]/cda:criterion/*[not(@xsi:nil = 'true')][not(self::cda:text)]"
         id="d419797e110-true-d423372e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d419797e110-true-d423372e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:text (rule-reference: d419797e110-true-d423372e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/*[not(@xsi:nil = 'true')][not(self::cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']])]"
         id="d40e9030-true-d423596e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d40e9030-true-d423596e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']] (rule-reference: d40e9030-true-d423596e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] | self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429'] | self::cda:id | self::cda:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::cda:text | self::cda:effectiveTime[@value] | self::cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | self::cda:routeCode | self::cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | self::cda:author[hl7:assignedAuthor] | self::cda:participant[@typeCode = 'CALLBCK'][cda:participantRole] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | self::cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] | self::hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter] | self::hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]] | self::cda:precondition[cda:criterion])]"
         id="d423385e7-true-d423806e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d423385e7-true-d423806e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] | cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429'] | cda:id | cda:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | cda:text | cda:effectiveTime[@value] | cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | cda:routeCode | cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | cda:author[hl7:assignedAuthor] | cda:participant[@typeCode = 'CALLBCK'][cda:participantRole] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]] | cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] | hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter] | hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]] | cda:precondition[cda:criterion] (rule-reference: d423385e7-true-d423806e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:width | self::hl7:high)]"
         id="d423828e63-true-d423869e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9427-2022-11-22T115521.html"
              test="not(.)">(MPCDAVoorstelMedicatieAfspraakDelen1v3)/d423828e63-true-d423869e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:width | hl7:high (rule-reference: d423828e63-true-d423869e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']])]"
         id="d423817e27-true-d423939e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d423817e27-true-d423939e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] (rule-reference: d423817e27-true-d423939e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | self::hl7:manufacturedMaterial)]"
         id="d423913e1-true-d423978e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d423913e1-true-d423978e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | hl7:manufacturedMaterial (rule-reference: d423913e1-true-d423978e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d423989e112-true-d424026e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d423989e112-true-d424026e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d423989e112-true-d424026e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d424031e40-true-d424048e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d424031e40-true-d424048e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d424031e40-true-d424048e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d424081e7-true-d424104e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d424081e7-true-d424104e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d424081e7-true-d424104e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d424081e11-true-d424141e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d424081e11-true-d424141e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d424081e11-true-d424141e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d424111e5-true-d424156e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d424111e5-true-d424156e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d424111e5-true-d424156e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d424111e19-true-d424177e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d424111e19-true-d424177e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d424111e19-true-d424177e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code)]"
         id="d424188e11-true-d424235e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d424188e11-true-d424235e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code (rule-reference: d424188e11-true-d424235e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d424192e4-true-d424268e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d424192e4-true-d424268e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d424192e4-true-d424268e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/*[not(@xsi:nil = 'true')][not(self::hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:time | self::hl7:assignedAuthor)]"
         id="d423817e29-true-d424425e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d423817e29-true-d424425e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:time | hl7:assignedAuthor (rule-reference: d423817e29-true-d424425e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.528.1.1007.5.1'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:assignedPerson | self::hl7:representedOrganization)]"
         id="d424281e15-true-d424539e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d424281e15-true-d424539e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.528.1.1007.5.1'] | hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:assignedPerson | hl7:representedOrganization (rule-reference: d424281e15-true-d424539e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d424544e26-true-d424635e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(.)">(zorgverlener-assigned-contents)/d424544e26-true-d424635e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d424544e26-true-d424635e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d424544e34-true-d424708e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(.)">(zorgverlener-assigned-contents)/d424544e34-true-d424708e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d424544e34-true-d424708e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d424544e42-true-d424721e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(.)">(zorgverlener-assigned-contents)/d424544e42-true-d424721e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d424544e42-true-d424721e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d424544e50-true-d424758e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d424544e50-true-d424758e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d424544e50-true-d424758e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | self::hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d424735e1-true-d424779e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d424735e1-true-d424779e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d424735e1-true-d424779e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode | self::hl7:asOrganizationPartOf)]"
         id="d424879e42-true-d424953e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d424879e42-true-d424953e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode | hl7:asOrganizationPartOf (rule-reference: d424879e42-true-d424953e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d424879e67-true-d425007e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d424879e67-true-d425007e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d424879e67-true-d425007e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d424879e76-true-d425020e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d424879e76-true-d425020e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d424879e76-true-d425020e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d424879e84-true-d425066e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d424879e84-true-d425066e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d424879e84-true-d425066e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d424879e102-true-d425162e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d424879e102-true-d425162e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d424879e102-true-d425162e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d424879e121-true-d425187e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d424879e121-true-d425187e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d424879e121-true-d425187e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:participant[@typeCode = 'CALLBCK'][cda:participantRole]/*[not(@xsi:nil = 'true')][not(self::cda:participantRole)]"
         id="d423817e39-true-d425231e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d423817e39-true-d425231e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:participantRole (rule-reference: d423817e39-true-d425231e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:participant[@typeCode = 'CALLBCK'][cda:participantRole]/cda:participantRole/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.528.1.1007.5.1'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | self::cda:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::cda:playingEntity | self::cda:scopingEntity)]"
         id="d425200e3-true-d425289e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d425200e3-true-d425289e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.528.1.1007.5.1'] | hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | cda:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | cda:playingEntity | cda:scopingEntity (rule-reference: d425200e3-true-d425289e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:participant[@typeCode = 'CALLBCK'][cda:participantRole]/cda:participantRole/cda:playingEntity/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d425200e22-true-d425357e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d425200e22-true-d425357e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d425200e22-true-d425357e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:participant[@typeCode = 'CALLBCK'][cda:participantRole]/cda:participantRole/cda:playingEntity/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | self::hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d425362e16-true-d425380e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.0.4-2018-06-11T000000.html"
              test="not(.)">(persoon)/d425362e16-true-d425380e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d425362e16-true-d425380e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:participant[@typeCode = 'CALLBCK'][cda:participantRole]/cda:participantRole/cda:scopingEntity/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::cda:code | self::cda:desc)]"
         id="d425200e32-true-d425494e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d425200e32-true-d425494e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | cda:code | cda:desc (rule-reference: d425200e32-true-d425494e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']])]"
         id="d425553e14-true-d425570e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425553e14-true-d425570e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']] (rule-reference: d425553e14-true-d425570e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414'] | self::hl7:code[(@code = '410684002' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-12-16T102010.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d425557e6-true-d425601e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425557e6-true-d425601e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414'] | hl7:code[(@code = '410684002' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-12-16T102010.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d425557e6-true-d425601e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']])]"
         id="d425553e22-true-d425641e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425553e22-true-d425641e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']] (rule-reference: d425553e22-true-d425641e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438'] | self::hl7:code[(@code = '160111000146106' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.42-2022-11-14T132525.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.42-2022-11-14T132525.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d425628e9-true-d425672e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425628e9-true-d425672e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9438'] | hl7:code[(@code = '160111000146106' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.42-2022-11-14T132525.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.42-2022-11-14T132525.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d425628e9-true-d425672e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']])]"
         id="d425553e33-true-d425727e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425553e33-true-d425727e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']] (rule-reference: d425553e33-true-d425727e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] | self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19'] | self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:text | self::hl7:effectiveTime | self::hl7:value | self::hl7:entryRelationship[@typeCode = 'REFR'][not(@nullFlavor)] | self::hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]] | self::hl7:entryRelationship[@typeCode = 'SUBJ'])]"
         id="d425699e6-true-d425798e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425699e6-true-d425798e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] | hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19'] | hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:text | hl7:effectiveTime | hl7:value | hl7:entryRelationship[@typeCode = 'REFR'][not(@nullFlavor)] | hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]] | hl7:entryRelationship[@typeCode = 'SUBJ'] (rule-reference: d425699e6-true-d425798e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:effectiveTime/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d425699e70-true-d425852e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425699e70-true-d425852e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:high (rule-reference: d425699e70-true-d425852e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[@typeCode = 'REFR'][not(@nullFlavor)]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.20']])]"
         id="d425699e107-true-d425890e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425699e107-true-d425890e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.20']] (rule-reference: d425699e107-true-d425890e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[@typeCode = 'REFR'][not(@nullFlavor)]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.20']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.20'] | self::hl7:id | self::hl7:code[(@code = '33999-4' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor] | self::hl7:text | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.2-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d425879e15-true-d425931e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425879e15-true-d425931e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.20'] | hl7:id | hl7:code[(@code = '33999-4' and @codeSystem = '2.16.840.1.113883.6.1') or @nullFlavor] | hl7:text | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.2-2017-12-31T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d425879e15-true-d425931e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']])]"
         id="d425699e125-true-d425983e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425699e125-true-d425983e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']] (rule-reference: d425699e125-true-d425983e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54'] | self::hl7:id | self::hl7:code[(@code = '408729009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:text | self::hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] | self::hl7:effectiveTime | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d425970e9-true-d426038e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425970e9-true-d426038e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.7.10.54'] | hl7:id | hl7:code[(@code = '408729009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:text | hl7:statusCode[@code = doc('include/voc-2.16.840.1.113883.1.11.15933-DYNAMIC.xml')//valueSet[1]/conceptList/*/@code or @nullFlavor] | hl7:effectiveTime | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.4-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.5.1.4-DYNAMIC.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d425970e9-true-d426038e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[@typeCode = 'SUBJ']/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d425699e136-true-d426102e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425699e136-true-d426102e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d425699e136-true-d426102e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.121.10.24'] and hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.3.19']]/hl7:entryRelationship[@typeCode = 'SUBJ']/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d426091e15-true-d426129e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d426091e15-true-d426129e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d426091e15-true-d426129e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']])]"
         id="d425553e41-true-d426170e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425553e41-true-d426170e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']] (rule-reference: d425553e41-true-d426170e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d426154e9-true-d426189e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d426154e9-true-d426189e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d426154e9-true-d426189e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d426200e43-true-d426221e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9000-2016-06-26T175534.html"
              test="not(.)">(NHGTabel25Bcodes)/d426200e43-true-d426221e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d426200e43-true-d426221e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']])]"
         id="d425553e52-true-d426247e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425553e52-true-d426247e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']] (rule-reference: d425553e52-true-d426247e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401'] | self::hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.45-2022-03-10T164013.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d426234e6-true-d426278e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d426234e6-true-d426278e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9401'] | hl7:code[(@code = '11' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.45-2022-03-10T164013.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d426234e6-true-d426278e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d425553e60-true-d426318e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425553e60-true-d426318e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d425553e60-true-d426318e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d426305e7-true-d426345e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d426305e7-true-d426345e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d426305e7-true-d426345e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/*[not(@xsi:nil = 'true')][not(self::cda:sequenceNumber | self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']])]"
         id="d425553e71-true-d426429e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9428-2022-11-22T124407.html"
              test="not(.)">(MPCDAVoorstelMedicatieAfspraakDelen2_v4)/d425553e71-true-d426429e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:sequenceNumber | cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] (rule-reference: d425553e71-true-d426429e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | self::f:effectiveTime | self::hl7:doseQuantity[hl7:center] | self::hl7:doseQuantity[hl7:low|hl7:high] | self::cda:rateQuantity | self::cda:maxDoseQuantity | self::cda:consumable | self::cda:precondition[cda:criterion])]"
         id="d426440e47-true-d426520e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d426440e47-true-d426520e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | f:effectiveTime | hl7:doseQuantity[hl7:center] | hl7:doseQuantity[hl7:low|hl7:high] | cda:rateQuantity | cda:maxDoseQuantity | cda:consumable | cda:precondition[cda:criterion] (rule-reference: d426440e47-true-d426520e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/f:effectiveTime/*[not(@xsi:nil = 'true')][not(self::f:modifierExtension | self::f:repeat)]"
         id="d426440e66-true-d426546e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d426440e66-true-d426546e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: f:modifierExtension | f:repeat (rule-reference: d426440e66-true-d426546e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/*[not(@xsi:nil = 'true')][not(self::hl7:center)]"
         id="d426565e9-true-d426590e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d426565e9-true-d426590e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:center (rule-reference: d426565e9-true-d426590e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/hl7:center/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d426565e36-true-d426608e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d426565e36-true-d426608e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d426565e36-true-d426608e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d426565e45-true-d426645e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d426565e45-true-d426645e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:high (rule-reference: d426565e45-true-d426645e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d426565e68-true-d426663e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d426565e68-true-d426663e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d426565e68-true-d426663e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d426565e76-true-d426696e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d426565e76-true-d426696e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d426565e76-true-d426696e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:rateQuantity/*[not(@xsi:nil = 'true')][not(self::cda:low | self::cda:center | self::cda:high)]"
         id="d426716e25-true-d426740e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9150-2016-07-26T150449.html"
              test="not(.)">(MPCDARateQuantity)/d426716e25-true-d426740e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:low | cda:center | cda:high (rule-reference: d426716e25-true-d426740e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator | self::hl7:denominator)]"
         id="d426440e87-true-d426795e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d426440e87-true-d426795e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator | hl7:denominator (rule-reference: d426440e87-true-d426795e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/hl7:numerator/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d426765e5-true-d426813e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d426765e5-true-d426813e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d426765e5-true-d426813e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/*[not(@xsi:nil = 'true')][not(self::cda:criterion)]"
         id="d426440e103-true-d426860e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d426440e103-true-d426860e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:criterion (rule-reference: d426440e103-true-d426860e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/*[not(@xsi:nil = 'true')][not(self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d426440e118-true-d426875e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d426440e118-true-d426875e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d426440e118-true-d426875e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d426867e17-true-d426894e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d426867e17-true-d426894e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d426867e17-true-d426894e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']])]"
         id="d425553e93-true-d426920e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425553e93-true-d426920e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']] (rule-reference: d425553e93-true-d426920e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | self::hl7:id | self::hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d426907e9-true-d426952e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d426907e9-true-d426952e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | hl7:id | hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d426907e9-true-d426952e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']])]"
         id="d425553e104-true-d426996e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425553e104-true-d426996e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']] (rule-reference: d425553e104-true-d426996e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101'] | self::hl7:id | self::hl7:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d426983e9-true-d427030e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d426983e9-true-d427030e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101'] | hl7:id | hl7:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d426983e9-true-d427030e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386']])]"
         id="d425553e115-true-d427075e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d425553e115-true-d427075e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386']] (rule-reference: d425553e115-true-d427075e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386'] | self::hl7:id | self::hl7:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] | self::hl7:consumable)]"
         id="d427062e9-true-d427107e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d427062e9-true-d427107e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9386'] | hl7:id | hl7:code[(@code = '422979000' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '6' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] | hl7:consumable (rule-reference: d427062e9-true-d427107e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']])]"
         id="d423817e43-true-d427151e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d423817e43-true-d427151e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']] (rule-reference: d423817e43-true-d427151e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | self::hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | self::hl7:value)]"
         id="d427138e13-true-d427178e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d427138e13-true-d427178e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9200'] | hl7:code[(@code = '16' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.2')] | hl7:value (rule-reference: d427138e13-true-d427178e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d423817e58-true-d427216e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d423817e58-true-d427216e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d423817e58-true-d427216e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d427203e14-true-d427243e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9432-2022-11-22T134057.html"
              test="not(.)">(MPHL7MedicatieafsprakenOrganizer4)/d427203e14-true-d427243e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d427203e14-true-d427243e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]/*[not(@xsi:nil = 'true')][not(self::hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN'])]"
         id="d427269e10-true-d427281e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="not(.)">(partEncounterReference)/d427269e10-true-d427281e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN'] (rule-reference: d427269e10-true-d427281e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]/hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN']/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)])]"
         id="d427269e28-true-d427298e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="not(.)">(partEncounterReference)/d427269e28-true-d427298e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] (rule-reference: d427269e28-true-d427298e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]])]"
         id="d427312e10-true-d427324e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="not(.)">(partConcernReference)/d427312e10-true-d427324e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]] (rule-reference: d427312e10-true-d427324e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)] | self::hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')])]"
         id="d427312e28-true-d427346e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="not(.)">(partConcernReference)/d427312e28-true-d427346e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')] (rule-reference: d427312e28-true-d427346e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:precondition[cda:criterion]/*[not(@xsi:nil = 'true')][not(self::cda:criterion)]"
         id="d423817e94-true-d427375e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d423817e94-true-d427375e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:criterion (rule-reference: d423817e94-true-d427375e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9432']]/hl7:component[cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]]/cda:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9431'] and cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9429']]/cda:precondition[cda:criterion]/cda:criterion/*[not(@xsi:nil = 'true')][not(self::cda:text)]"
         id="d423817e110-true-d427392e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9429-2022-11-22T130054.html"
              test="not(.)">(MPCDAMedicatieAfspraakSchemaInhoud5)/d423817e110-true-d427392e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:text (rule-reference: d423817e110-true-d427392e0)</assert>
   </rule>
</pattern>
<?xml version="1.0" encoding="UTF-8"?>

<!--
Template derived pattern
===========================================
ID: 2.16.840.1.113883.2.4.3.11.60.20.77.10.9413
Name: MP HL7 Wisselend doseerschema Organizer
Description: 
                 Lijst van Wisselend doseerschema's. 
            
-->
<pattern id="template-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644-closed"
         xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>MP HL7 Wisselend doseerschema Organizer</title>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413'] | self::hl7:code[(@code = '419891008' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:statusCode[@code = 'completed'] | self::hl7:recordTarget[hl7:patientRole] | self::hl7:participant[@typeCode='RESP'] | self::hl7:participant[@typeCode='CST'] | self::hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]])]"
         id="d40e7125-true-d181413e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d40e7125-true-d181413e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413'] | hl7:code[(@code = '419891008' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:statusCode[@code = 'completed'] | hl7:recordTarget[hl7:patientRole] | hl7:participant[@typeCode='RESP'] | hl7:participant[@typeCode='CST'] | hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]] (rule-reference: d40e7125-true-d181413e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:recordTarget[hl7:patientRole]/*[not(@xsi:nil = 'true')][not(self::hl7:patientRole)]"
         id="d181436e19-true-d181540e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d181436e19-true-d181540e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:patientRole (rule-reference: d181436e19-true-d181540e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:patient)]"
         id="d181436e21-true-d181655e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d181436e21-true-d181655e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:patient (rule-reference: d181436e21-true-d181655e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d181436e79-true-d181705e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d181436e79-true-d181705e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d181436e79-true-d181705e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d181436e84-true-d181778e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d181436e84-true-d181778e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d181436e84-true-d181778e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d181436e89-true-d181791e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d181436e89-true-d181791e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d181436e89-true-d181791e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code] | self::hl7:birthTime | self::sdtc:deceasedInd | self::sdtc:deceasedTime | self::sdtc:multipleBirthInd | self::hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:guardian)]"
         id="d181436e94-true-d181904e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d181436e94-true-d181904e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code] | hl7:birthTime | sdtc:deceasedInd | sdtc:deceasedTime | sdtc:multipleBirthInd | hl7:maritalStatusCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:guardian (rule-reference: d181436e94-true-d181904e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | self::hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d181436e96-true-d181925e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d181436e96-true-d181925e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d181436e96-true-d181925e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:guardianPerson)]"
         id="d181436e173-true-d182118e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d181436e173-true-d182118e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.3.1.2-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:guardianPerson (rule-reference: d181436e173-true-d182118e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d181436e182-true-d182170e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d181436e182-true-d182170e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d181436e182-true-d182170e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d181436e187-true-d182243e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d181436e187-true-d182243e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d181436e187-true-d182243e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d181436e192-true-d182256e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d181436e192-true-d182256e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d181436e192-true-d182256e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]])]"
         id="d181436e200-true-d182290e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d181436e200-true-d182290e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]] (rule-reference: d181436e200-true-d182290e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | self::hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d181436e202-true-d182311e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d181436e202-true-d182311e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d181436e202-true-d182311e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:recordTarget[hl7:patientRole]/hl7:patientRole/hl7:patient/hl7:guardian/hl7:guardianPerson/sdtc:asPatientRelationship[sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor]]/*[not(@xsi:nil = 'true')][not(self::sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d181436e207-true-d182418e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.3.10.1-2021-07-01T000000.html"
              test="not(.)">(CDArecordTargetSDTC-NL)/d181436e207-true-d182418e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: sdtc:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.7.9.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d181436e207-true-d182418e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:participant[@typeCode='RESP']/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:participantRole[@classCode = 'ASSIGNED'])]"
         id="d182431e9-true-d182443e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9031-2014-11-13T000000.html"
              test="not(.)">(kezo-CDAInhoudsverantwoordelijke)/d182431e9-true-d182443e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:participantRole[@classCode = 'ASSIGNED'] (rule-reference: d182431e9-true-d182443e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:participant[@typeCode='RESP']/hl7:participantRole[@classCode = 'ASSIGNED']/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[@codeSystem = '2.16.840.1.113883.2.4.15.111' or @nullFlavor] | self::hl7:addr | self::hl7:telecom | self::hl7:playingEntity[@classCode = 'PSN'][@determinerCode = 'INSTANCE'] | self::hl7:scopingEntity[@classCode = 'ORG'][@determinerCode = 'INSTANCE'])]"
         id="d182448e46-true-d182493e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9030-2014-11-13T000000.html"
              test="not(.)">(kezo-CDAResponsiblePartyBody)/d182448e46-true-d182493e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[@codeSystem = '2.16.840.1.113883.2.4.15.111' or @nullFlavor] | hl7:addr | hl7:telecom | hl7:playingEntity[@classCode = 'PSN'][@determinerCode = 'INSTANCE'] | hl7:scopingEntity[@classCode = 'ORG'][@determinerCode = 'INSTANCE'] (rule-reference: d182448e46-true-d182493e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:participant[@typeCode='RESP']/hl7:participantRole[@classCode = 'ASSIGNED']/hl7:playingEntity[@classCode = 'PSN'][@determinerCode = 'INSTANCE']/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:name)]"
         id="d182448e68-true-d182543e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9030-2014-11-13T000000.html"
              test="not(.)">(kezo-CDAResponsiblePartyBody)/d182448e68-true-d182543e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.1.11.2-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:name (rule-reference: d182448e68-true-d182543e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:participant[@typeCode='RESP']/hl7:participantRole[@classCode = 'ASSIGNED']/hl7:scopingEntity[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[@codeSystem = '2.16.840.1.113883.2.4.15.1060' or @nullFlavor] | self::hl7:desc)]"
         id="d182448e85-true-d182584e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9030-2014-11-13T000000.html"
              test="not(.)">(kezo-CDAResponsiblePartyBody)/d182448e85-true-d182584e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[@codeSystem = '2.16.840.1.113883.2.4.15.1060' or @nullFlavor] | hl7:desc (rule-reference: d182448e85-true-d182584e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:participant[@typeCode='CST']/*[not(@xsi:nil = 'true')][not(self::hl7:time | self::hl7:participantRole[@classCode = 'ASSIGNED'])]"
         id="d182607e9-true-d182619e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9032-2014-11-13T000000.html"
              test="not(.)">(kezo-CDADossierhouder)/d182607e9-true-d182619e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:time | hl7:participantRole[@classCode = 'ASSIGNED'] (rule-reference: d182607e9-true-d182619e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:participant[@typeCode='CST']/hl7:participantRole[@classCode = 'ASSIGNED']/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom | self::hl7:playingEntity[@classCode = ('PSN', 'ORG')][@determinerCode = 'INSTANCE'] | self::hl7:scopingEntity[@classCode = 'ORG'][@determinerCode = 'INSTANCE'])]"
         id="d182624e76-true-d182681e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9041-2018-10-16T000000.html"
              test="not(.)">(kezo-CDACustodianPartyBody)/d182624e76-true-d182681e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom | hl7:playingEntity[@classCode = ('PSN', 'ORG')][@determinerCode = 'INSTANCE'] | hl7:scopingEntity[@classCode = 'ORG'][@determinerCode = 'INSTANCE'] (rule-reference: d182624e76-true-d182681e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:participant[@typeCode='CST']/hl7:participantRole[@classCode = 'ASSIGNED']/hl7:playingEntity[@classCode = ('PSN', 'ORG')][@determinerCode = 'INSTANCE']/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d182624e106-true-d182728e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9041-2018-10-16T000000.html"
              test="not(.)">(kezo-CDACustodianPartyBody)/d182624e106-true-d182728e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d182624e106-true-d182728e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:participant[@typeCode='CST']/hl7:participantRole[@classCode = 'ASSIGNED']/hl7:scopingEntity[@classCode = 'ORG'][@determinerCode = 'INSTANCE']/*[not(@xsi:nil = 'true')][not(self::hl7:id | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:desc)]"
         id="d182624e120-true-d182765e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.9041-2018-10-16T000000.html"
              test="not(.)">(kezo-CDACustodianPartyBody)/d182624e120-true-d182765e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:desc (rule-reference: d182624e120-true-d182765e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/*[not(@xsi:nil = 'true')][not(self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']])]"
         id="d40e7174-true-d183015e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d40e7174-true-d183015e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']] (rule-reference: d40e7174-true-d183015e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412'] | self::cda:id | self::cda:code[(@code = '395067002' and @codeSystem = '2.16.840.1.113883.6.96')] | self::cda:text | self::cda:statusCode | self::cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | self::cda:routeCode | self::cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | self::cda:author[hl7:assignedAuthor] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] | self::cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9439']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | self::cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | self::cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]] | self::cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9381']]] | self::cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] | self::hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter] | self::hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]])]"
         id="d182792e9-true-d183309e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d182792e9-true-d183309e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412'] | cda:id | cda:code[(@code = '395067002' and @codeSystem = '2.16.840.1.113883.6.96')] | cda:text | cda:statusCode | cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ] | cda:routeCode | cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]] | cda:author[hl7:assignedAuthor] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]] | cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9439']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]] | cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]] | cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]] | cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9381']]] | cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]] | hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter] | hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]] (rule-reference: d182792e9-true-d183309e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:effectiveTime[(local-name-from-QName(resolve-QName(@xsi:type,.))='IVL_TS' and namespace-uri-from-QName(resolve-QName(@xsi:type,.))='urn:hl7-org:v3') ]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:width | self::hl7:high)]"
         id="d182792e49-true-d183356e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d182792e49-true-d183356e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:width | hl7:high (rule-reference: d182792e49-true-d183356e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/*[not(@xsi:nil = 'true')][not(self::hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']])]"
         id="d182792e86-true-d183426e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d182792e86-true-d183426e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']] (rule-reference: d182792e86-true-d183426e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | self::hl7:manufacturedMaterial)]"
         id="d183400e1-true-d183465e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d183400e1-true-d183465e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362'] | hl7:manufacturedMaterial (rule-reference: d183400e1-true-d183465e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/*[not(@xsi:nil = 'true')][not(self::hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | self::hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | self::hl7:name | self::pharm:desc | self::pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | self::pharm:ingredient[@classCode='INGR'])]"
         id="d183476e112-true-d183513e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9361-2021-06-02T154629.html"
              test="not(.)">(MPCDAMedicationInformationContents2)/d183476e112-true-d183513e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')] | hl7:code[not(@codeSystem=('2.16.840.1.113883.2.4.4.1.750','2.16.840.1.113883.2.4.4.1.725','2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8', '2.16.840.1.113883.6.73', '1.3.160'))] | hl7:name | pharm:desc | pharm:formCode[@codeSystem = '2.16.840.1.113883.2.4.4.11'] | pharm:ingredient[@classCode='INGR'] (rule-reference: d183476e112-true-d183513e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/hl7:code[@codeSystem=('2.16.840.1.113883.2.4.4.1','2.16.840.1.113883.2.4.4.10','2.16.840.1.113883.2.4.4.7','2.16.840.1.113883.2.4.4.8')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d183518e40-true-d183535e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9360-2021-06-02T150453.html"
              test="not(.)">(MPCDAMedicationCode3)/d183518e40-true-d183535e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d183518e40-true-d183535e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/*[not(@xsi:nil = 'true')][not(self::pharm:quantity | self::pharm:ingredient[@classCode='MMAT'])]"
         id="d183568e7-true-d183591e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d183568e7-true-d183591e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:quantity | pharm:ingredient[@classCode='MMAT'] (rule-reference: d183568e7-true-d183591e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | self::hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')])]"
         id="d183568e11-true-d183628e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d183568e11-true-d183628e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] | hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')] (rule-reference: d183568e11-true-d183628e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:numerator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d183598e5-true-d183643e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d183598e5-true-d183643e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d183598e5-true-d183643e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:quantity/hl7:denominator[resolve-QName(@xsi:type, .) = QName('urn:hl7-org:v3', 'PQ')]/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'])]"
         id="d183598e19-true-d183664e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d183598e19-true-d183664e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] (rule-reference: d183598e19-true-d183664e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/*[not(@xsi:nil = 'true')][not(self::pharm:code)]"
         id="d183675e11-true-d183722e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d183675e11-true-d183722e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: pharm:code (rule-reference: d183675e11-true-d183722e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:consumable[hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]]/hl7:manufacturedProduct[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9362']]/hl7:manufacturedMaterial/pharm:ingredient[@classCode='INGR']/pharm:ingredient[@classCode='MMAT']/pharm:code/*[not(@xsi:nil = 'true')][not(self::hl7:translation)]"
         id="d183679e4-true-d183755e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9367-2021-06-02T171147.html"
              test="not(.)">(MPCDAIngredient2)/d183679e4-true-d183755e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation (rule-reference: d183679e4-true-d183755e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:author[hl7:assignedAuthor]/*[not(@xsi:nil = 'true')][not(self::hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:time | self::hl7:assignedAuthor)]"
         id="d182792e88-true-d183912e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d182792e88-true-d183912e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:functionCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.1.11.10267-DYNAMIC.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:time | hl7:assignedAuthor (rule-reference: d182792e88-true-d183912e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.528.1.1007.5.1'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:addr | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:assignedPerson | self::hl7:representedOrganization)]"
         id="d183768e12-true-d184026e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d183768e12-true-d184026e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.528.1.1007.5.1'] | hl7:id[not(@root = ('2.16.528.1.1007.3.1', '2.16.840.1.113883.2.4.6.1', '2.16.528.1.1007.5.1'))] | hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.7-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.1.6-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:addr | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:assignedPerson | hl7:representedOrganization (rule-reference: d183768e12-true-d184026e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d184031e26-true-d184122e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(.)">(zorgverlener-assigned-contents)/d184031e26-true-d184122e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d184031e26-true-d184122e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d184031e34-true-d184195e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(.)">(zorgverlener-assigned-contents)/d184031e34-true-d184195e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d184031e34-true-d184195e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d184031e42-true-d184208e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.37-2021-07-01T000000.html"
              test="not(.)">(zorgverlener-assigned-contents)/d184031e42-true-d184208e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d184031e42-true-d184208e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/*[not(@xsi:nil = 'true')][not(self::hl7:name | self::hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d184031e50-true-d184245e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d184031e50-true-d184245e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name | hl7:administrativeGenderCode[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.0.1.1-2020-09-01T000000.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d184031e50-true-d184245e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:assignedPerson/hl7:name/*[not(@xsi:nil = 'true')][not(self::hl7:prefix[@qualifier='NB'] | self::hl7:given[@qualifier='BR'] | self::hl7:given[@qualifier='CL'] | self::hl7:given[@qualifier='IN'] | self::hl7:given[not(@qualifier)] | self::hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | self::hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | self::hl7:family[@qualifier='BR'] | self::hl7:delimiter[not(@nullFlavor)] | self::hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | self::hl7:family[@qualifier='SP'] | self::hl7:suffix[not(@nullFlavor)] | self::hl7:validTime)]"
         id="d184222e1-true-d184266e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d184222e1-true-d184266e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:prefix[@qualifier='NB'] | hl7:given[@qualifier='BR'] | hl7:given[@qualifier='CL'] | hl7:given[@qualifier='IN'] | hl7:given[not(@qualifier)] | hl7:prefix[.[not(@qualifier)] | .[tokenize(@qualifier,'\s')='VV'][not(tokenize(@qualifier,'\s')=('BR', 'SP'))][following-sibling::hl7:family[1][not(tokenize(@qualifier,'\s')=('BR', 'SP'))]]] | hl7:family[not(tokenize(@qualifier,'\s')=('BR', 'SP'))] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='BR']] | hl7:family[@qualifier='BR'] | hl7:delimiter[not(@nullFlavor)] | hl7:prefix[tokenize(@qualifier,'\s')='VV'][following-sibling::hl7:family[1][@qualifier='SP']] | hl7:family[@qualifier='SP'] | hl7:suffix[not(@nullFlavor)] | hl7:validTime (rule-reference: d184222e1-true-d184266e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:id[@root = '2.16.528.1.1007.3.3'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | self::hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | self::hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | self::hl7:name | self::hl7:telecom[starts-with(@value,'tel:')] | self::hl7:telecom[starts-with(@value,'mailto:')] | self::hl7:addr | self::hl7:standardIndustryClassCode | self::hl7:asOrganizationPartOf)]"
         id="d184366e42-true-d184440e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d184366e42-true-d184440e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[@root = '2.16.528.1.1007.3.3'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.1'] | hl7:id[@root = '2.16.840.1.113883.2.4.6.8'] | hl7:id[not(@root = ('2.16.528.1.1007.3.3', '2.16.840.1.113883.2.4.6.1', '2.16.840.1.113883.2.4.6.8'))] | hl7:name | hl7:telecom[starts-with(@value,'tel:')] | hl7:telecom[starts-with(@value,'mailto:')] | hl7:addr | hl7:standardIndustryClassCode | hl7:asOrganizationPartOf (rule-reference: d184366e42-true-d184440e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'tel:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d184366e67-true-d184494e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d184366e67-true-d184494e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d184366e67-true-d184494e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:telecom[starts-with(@value,'mailto:')]/*[not(@xsi:nil = 'true')][not(*)]"
         id="d184366e76-true-d184507e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d184366e76-true-d184507e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: * (rule-reference: d184366e76-true-d184507e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:addr/*[not(@xsi:nil = 'true')][not(self::hl7:streetName | self::hl7:houseNumber | self::hl7:buildingNumberSuffix | self::hl7:additionalLocator | self::hl7:postalCode | self::hl7:county | self::hl7:city | self::hl7:country | self::hl7:unitID | self::hl7:useablePeriod)]"
         id="d184366e84-true-d184553e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d184366e84-true-d184553e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:streetName | hl7:houseNumber | hl7:buildingNumberSuffix | hl7:additionalLocator | hl7:postalCode | hl7:county | hl7:city | hl7:country | hl7:unitID | hl7:useablePeriod (rule-reference: d184366e84-true-d184553e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/*[not(@xsi:nil = 'true')][not(self::hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | self::hl7:wholeOrganization)]"
         id="d184366e102-true-d184649e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d184366e102-true-d184649e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4-2020-09-01T000000.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] | hl7:wholeOrganization (rule-reference: d184366e102-true-d184649e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:author[hl7:assignedAuthor]/hl7:assignedAuthor/hl7:representedOrganization/hl7:asOrganizationPartOf/hl7:wholeOrganization/*[not(@xsi:nil = 'true')][not(self::hl7:name)]"
         id="d184366e121-true-d184674e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.121.10.33-2021-07-01T000000.html"
              test="not(.)">(representedOrganization1)/d184366e121-true-d184674e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:name (rule-reference: d184366e121-true-d184674e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']])]"
         id="d182792e95-true-d184700e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d182792e95-true-d184700e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']] (rule-reference: d182792e95-true-d184700e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414'] | self::hl7:code[(@code = '410684002' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-12-16T102010.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor])]"
         id="d184687e6-true-d184731e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d184687e6-true-d184731e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9414'] | hl7:code[(@code = '410684002' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.50-2022-12-16T102010.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor] (rule-reference: d184687e6-true-d184731e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9439']]]/*[not(@xsi:nil = 'true')][not(self::hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9439']])]"
         id="d182792e108-true-d184771e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d182792e108-true-d184771e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9439']] (rule-reference: d182792e108-true-d184771e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9439']]]/hl7:observation[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9439']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9439'] | self::hl7:code[(@code = '160111000146106' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.54-2022-11-14T181621.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.54-2022-11-14T181621.xml')//valueSet[1]/conceptList/exception/@code])]"
         id="d184758e9-true-d184802e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d184758e9-true-d184802e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9439'] | hl7:code[(@code = '160111000146106' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:value[concat(@code, @codeSystem) = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.54-2022-11-14T181621.xml')//valueSet[1]/conceptList/concept/concat(@code, @codeSystem) or @nullFlavor = doc('include/voc-2.16.840.1.113883.2.4.3.11.60.20.77.11.54-2022-11-14T181621.xml')//valueSet[1]/conceptList/exception/@code] (rule-reference: d184758e9-true-d184802e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']])]"
         id="d182792e119-true-d184845e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d182792e119-true-d184845e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']] (rule-reference: d182792e119-true-d184845e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d184829e9-true-d184864e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d184829e9-true-d184864e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085'] | hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d184829e9-true-d184864e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9085']]/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d184875e43-true-d184896e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9000-2016-06-26T175534.html"
              test="not(.)">(NHGTabel25Bcodes)/d184875e43-true-d184896e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d184875e43-true-d184896e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']])]"
         id="d182792e130-true-d184922e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d182792e130-true-d184922e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']] (rule-reference: d182792e130-true-d184922e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]]/hl7:act[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | self::hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | self::hl7:text[not(@nullFlavor)])]"
         id="d184909e10-true-d184949e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d184909e10-true-d184949e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.3.10.0.32'] | hl7:code[(@code = '48767-8' and @codeSystem = '2.16.840.1.113883.6.1')] | hl7:text[not(@nullFlavor)] (rule-reference: d184909e10-true-d184949e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/*[not(@xsi:nil = 'true')][not(self::cda:sequenceNumber | self::cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']])]"
         id="d182792e144-true-d185033e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d182792e144-true-d185033e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:sequenceNumber | cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']] (rule-reference: d182792e144-true-d185033e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/*[not(@xsi:nil = 'true')][not(self::cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | self::f:effectiveTime | self::hl7:doseQuantity[hl7:center] | self::hl7:doseQuantity[hl7:low|hl7:high] | self::cda:rateQuantity | self::cda:maxDoseQuantity | self::cda:consumable | self::cda:precondition[cda:criterion])]"
         id="d185044e47-true-d185124e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d185044e47-true-d185124e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359'] | f:effectiveTime | hl7:doseQuantity[hl7:center] | hl7:doseQuantity[hl7:low|hl7:high] | cda:rateQuantity | cda:maxDoseQuantity | cda:consumable | cda:precondition[cda:criterion] (rule-reference: d185044e47-true-d185124e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/f:effectiveTime/*[not(@xsi:nil = 'true')][not(self::f:modifierExtension | self::f:repeat)]"
         id="d185044e66-true-d185150e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d185044e66-true-d185150e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: f:modifierExtension | f:repeat (rule-reference: d185044e66-true-d185150e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/*[not(@xsi:nil = 'true')][not(self::hl7:center)]"
         id="d185169e9-true-d185194e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d185169e9-true-d185194e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:center (rule-reference: d185169e9-true-d185194e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:center]/hl7:center/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d185169e36-true-d185212e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d185169e36-true-d185212e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d185169e36-true-d185212e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/*[not(@xsi:nil = 'true')][not(self::hl7:low | self::hl7:high)]"
         id="d185169e45-true-d185249e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d185169e45-true-d185249e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:low | hl7:high (rule-reference: d185169e45-true-d185249e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:low/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d185169e68-true-d185267e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d185169e68-true-d185267e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d185169e68-true-d185267e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/hl7:doseQuantity[hl7:low|hl7:high]/hl7:high/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d185169e76-true-d185300e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9048-2016-06-14T145840.html"
              test="not(.)">(DoseQuantity)/d185169e76-true-d185300e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d185169e76-true-d185300e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:rateQuantity/*[not(@xsi:nil = 'true')][not(self::cda:low | self::cda:center | self::cda:high)]"
         id="d185320e25-true-d185344e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9150-2016-07-26T150449.html"
              test="not(.)">(MPCDARateQuantity)/d185320e25-true-d185344e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:low | cda:center | cda:high (rule-reference: d185320e25-true-d185344e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/*[not(@xsi:nil = 'true')][not(self::hl7:numerator | self::hl7:denominator)]"
         id="d185044e87-true-d185399e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d185044e87-true-d185399e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:numerator | hl7:denominator (rule-reference: d185044e87-true-d185399e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:maxDoseQuantity/hl7:numerator/*[not(@xsi:nil = 'true')][not(self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | self::hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'])]"
         id="d185369e5-true-d185417e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d185369e5-true-d185417e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.900.2'] | hl7:translation[@codeSystem='2.16.840.1.113883.2.4.4.1.361'] (rule-reference: d185369e5-true-d185417e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/*[not(@xsi:nil = 'true')][not(self::cda:criterion)]"
         id="d185044e103-true-d185464e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d185044e103-true-d185464e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: cda:criterion (rule-reference: d185044e103-true-d185464e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/*[not(@xsi:nil = 'true')][not(self::hl7:code[@code] | self::hl7:code[@nullFlavor])]"
         id="d185044e118-true-d185479e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d185044e118-true-d185479e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:code[@code] | hl7:code[@nullFlavor] (rule-reference: d185044e118-true-d185479e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9359']]/cda:precondition[cda:criterion]/cda:criterion/hl7:code[@nullFlavor]/*[not(@xsi:nil = 'true')][not(self::hl7:originalText)]"
         id="d185471e17-true-d185498e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9359-2021-05-17T141255.html"
              test="not(.)">(MPCDADosering4)/d185471e17-true-d185498e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:originalText (rule-reference: d185471e17-true-d185498e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']])]"
         id="d182792e172-true-d185524e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d182792e172-true-d185524e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']] (rule-reference: d182792e172-true-d185524e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | self::hl7:id | self::hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d185511e9-true-d185556e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d185511e9-true-d185556e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9384'] | hl7:id | hl7:code[(@code = '33633005' and @codeSystem = '2.16.840.1.113883.6.96') or (@code = '16076005' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d185511e9-true-d185556e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']])]"
         id="d182792e183-true-d185600e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d182792e183-true-d185600e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']] (rule-reference: d182792e183-true-d185600e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101'] | self::hl7:id | self::hl7:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d185587e9-true-d185634e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d185587e9-true-d185634e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9101'] | hl7:id | hl7:code[(@code = '422037009' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d185587e9-true-d185634e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9381']]]/*[not(@xsi:nil = 'true')][not(self::hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9381']])]"
         id="d182792e194-true-d185679e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d182792e194-true-d185679e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9381']] (rule-reference: d182792e194-true-d185679e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9381']]]/hl7:substanceAdministration[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9381']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9381'] | self::hl7:id | self::hl7:code[(@code = '395067002' and @codeSystem = '2.16.840.1.113883.6.96')] | self::hl7:consumable)]"
         id="d185666e9-true-d185711e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d185666e9-true-d185711e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9381'] | hl7:id | hl7:code[(@code = '395067002' and @codeSystem = '2.16.840.1.113883.6.96')] | hl7:consumable (rule-reference: d185666e9-true-d185711e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/*[not(@xsi:nil = 'true')][not(self::hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']])]"
         id="d182792e205-true-d185755e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d182792e205-true-d185755e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']] (rule-reference: d182792e205-true-d185755e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/cda:entryRelationship[hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]]/hl7:procedure[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084']]/*[not(@xsi:nil = 'true')][not(self::hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | self::hl7:id | self::hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')])]"
         id="d185742e10-true-d185782e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.20.77.10.9413-2022-11-18T132644.html"
              test="not(.)">(MPHL7WisselendDoseerschemaOrganizer2)/d185742e10-true-d185782e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9084'] | hl7:id | hl7:code[(@code = '1' and @codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.5.3')] (rule-reference: d185742e10-true-d185782e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]/*[not(@xsi:nil = 'true')][not(self::hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN'])]"
         id="d185805e10-true-d185817e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="not(.)">(partEncounterReference)/d185805e10-true-d185817e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN'] (rule-reference: d185805e10-true-d185817e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:encounter]/hl7:encounter[not(@nullFlavor)][@classCode = 'ENC'][@moodCode = 'EVN']/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)])]"
         id="d185805e28-true-d185834e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.32-2017-12-21T123947.html"
              test="not(.)">(partEncounterReference)/d185805e28-true-d185834e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] (rule-reference: d185805e28-true-d185834e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/*[not(@xsi:nil = 'true')][not(self::hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]])]"
         id="d185845e10-true-d185857e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="not(.)">(partConcernReference)/d185845e10-true-d185857e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]] (rule-reference: d185845e10-true-d185857e0)</assert>
   </rule>
   <!-- Checking undefined contents for template/element @isClosed="false". Match context that we did not already match -->
   <rule fpi="RUL-QQQ"
         context="//hl7:organizer[hl7:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9413']]/hl7:component[cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]]/cda:substanceAdministration[cda:templateId[@root = '2.16.840.1.113883.2.4.3.11.60.20.77.10.9412']]/hl7:entryRelationship[@typeCode = 'REFR'][hl7:act[hl7:code[@code = 'CONC'][@codeSystem = '2.16.840.1.113883.5.6']]]/hl7:act[hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')]]/*[not(@xsi:nil = 'true')][not(self::hl7:id[not(@nullFlavor)] | self::hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')])]"
         id="d185845e28-true-d185879e0">
      <assert role="warning"
              see="http://decor.nictiz.nl/pub/medicatieproces/mp-html-develop/tmp-2.16.840.1.113883.2.4.3.11.60.7.10.33-2017-12-21T124050.html"
              test="not(.)">(partConcernReference)/d185845e28-true-d185879e0: dit element '
<name/>' is niet gedefinieerd, of niet gedefinieerd met deze inhoud. Mogelijk betreft dit het templateId, code, of id. Verwacht in deze context: hl7:id[not(@nullFlavor)] | hl7:code[(@code = 'CONC' and @codeSystem = '2.16.840.1.113883.5.6')] (rule-reference: d185845e28-true-d185879e0)</assert>
   </rule>
</pattern>
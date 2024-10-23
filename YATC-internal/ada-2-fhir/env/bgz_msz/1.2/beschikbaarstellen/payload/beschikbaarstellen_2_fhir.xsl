<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" exclude-result-prefixes="#all" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:util="urn:hl7:utilities" xmlns:f="http://hl7.org/fhir" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:local="#local.2023100511155154126040200">
    <!-- ================================================================== -->
    <!--
        TBD
    -->
    <!-- ================================================================== -->
    <!--
        Copyright © Nictiz
        
        This program is free software; you can redistribute it and/or modify it under the terms of the
        GNU Lesser General Public License as published by the Free Software Foundation; either version
        2.1 of the License, or (at your option) any later version.
        
        This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
        without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
        See the GNU Lesser General Public License for more details.
        
        The full text of the license is available at http://www.gnu.org/copyleft/lesser.html
    -->
    <!-- ================================================================== -->
    <!-- SETUP: -->

    <!-- import because we want to be able to override the param for macAddress for UUID generation and the param for referById -->
    <xsl:import href="../../../../zibs2017/payload/package-2.2.x.xsl"/>
    <xsl:import href="../../../../fhir/2_fhir_fixtures_Touchstone.xsl"/>

    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:include href="../../../../../../../YATC-shared/xslmod/general.mod.xsl"/>
    <xsl:include href="../../../../../../../YATC-shared/xslmod/href.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- PARAMETERS: -->

    <!-- If the desired output is to be a Bundle, then a self link string of type url is required. 
         See: https://www.hl7.org/fhir/stu3/search.html#conformance -->
    <xsl:param name="bundleSelfLink" as="xs:string?"/>

    <!-- This is a required parameter and matches the [base] of a FHIR server. Expects *not* to end in / so we can make fullUrls like ${baseUrl}/Observation/[id] -->
    <!--<xsl:param name="baseUrl" as="xs:string"/>-->

    <!-- pass an appropriate macAddress to ensure uniqueness of the UUID -->
    <!-- 02-00-00-00-00-00 may not be used in a production situation -->
    <xsl:param name="macAddress">02-00-00-00-00-00</xsl:param>

    <!-- parameter to determine whether to refer by resource/id -->
    <!-- should be false when there is no FHIR server available to retrieve the resources -->
    <xsl:param name="referById" as="xs:boolean" select="true()"/>

    <!-- if false produces a Bundle. if true produces separate resources -->
    <xsl:param name="separateResources" as="xs:boolean" select="$referById"/>

    <!-- OID separated list of oids like 2.16.840.1.113883.2.4.6.3 (bsn) to mask in output -->
    <xsl:param name="mask-ids" select="
            (:$oidBurgerservicenummer:)
            ''" as="xs:string"/>

    <xsl:param name="adaProcessedDirectory" as="xs:string" required="yes"/>

    <xsl:param name="outputDirectory" as="xs:string" required="yes"/>
    <xsl:param name="outputDirectoryBundles" as="xs:string?" required="no" select="()">
        <!-- If a bundle is created but no $outputDirectoryBundles is specified, the system will raise an error. -->
    </xsl:param>

    <!-- ======================================================================= -->
    <!-- GLOBAL DECLARATIONS: -->

    <xsl:variable name="usecase" as="xs:string" select="'bgz-msz'"/>

    <xsl:variable name="adaProcessedDocuments" as="document-node()*" select="yatcs:get-document-collection($adaProcessedDirectory)"/>

    <!-- ======================================================================= -->

    <xsl:variable name="patients" as="element()*">
        <xsl:for-each-group select="//patient[not(patient)][not(@datatype = 'reference')][*//(@value | @code | @nullFlavor)]" group-by="                 string-join(for $att in nf:ada-pat-id(identificatienummer | patient_identificatie_nummer | patient_identification_number)/(@root, @value)                 return                     $att, '')">
            <xsl:for-each-group select="current-group()[1]" group-by="nf:getGroupingKeyPatient(.)">
                <!-- uuid als fullUrl en ook een fhir id genereren vanaf de tweede groep -->
                <xsl:variable name="uuid" as="xs:boolean" select="position() &gt; 1"/>
                <xsl:variable name="patientId" select="current-group()[1]/patient_identification_number/@value"/>
                <xsl:variable name="patientName" select="local:get-patient-name(current-group()[1])"/>
                <xsl:variable name="gpPractitioner" select="ancestor::bundle/health_professional" as="element()*"/>
                <xsl:variable name="contactPerson" select="ancestor::bundle/contact" as="element()*"/>
                <unieke-patient xmlns="">
                    <group-key>
                        <xsl:value-of select="current-grouping-key()"/>
                    </group-key>
                    <reference-display>
                        <xsl:value-of select="current-group()[1]/normalize-space(string-join(.//naamgegevens[1]//*[not(name() = 'naamgebruik')]/@value | name_information[1]//*[not(name() = 'name_usage')]/@value, ' '))"/>
                    </reference-display>
                    <xsl:apply-templates select="current-group()[1]" mode="doPatientEntry-2.1">
                        <xsl:with-param name="uuid" select="$uuid"/>
                        <xsl:with-param name="generalPractitionerRef" tunnel="yes" as="element()*">
                            <xsl:choose>
                                <xsl:when test="$patientName = 'patA' and $gpPractitioner[health_professional_identification_number/@value = '10000001']">
                                    <extension url="http://nictiz.nl/fhir/StructureDefinition/practitionerrole-reference" xmlns="http://hl7.org/fhir">
                                        <valueReference>
                                            <xsl:apply-templates select="$gpPractitioner[health_professional_identification_number/@value = '10000001']" mode="doPractitionerRoleReference-2.0"/>
                                        </valueReference>
                                    </extension>
                                    <xsl:apply-templates select="$gpPractitioner[health_professional_identification_number/@value = '10000001']" mode="doPractitionerReference-2.0"/>
                                </xsl:when>
                                <xsl:when test="$patientName = 'patB' and $gpPractitioner[health_professional_identification_number/@value = '00131313']">
                                    <extension url="http://nictiz.nl/fhir/StructureDefinition/practitionerrole-reference" xmlns="http://hl7.org/fhir">
                                        <valueReference>
                                            <xsl:apply-templates select="$gpPractitioner[health_professional_identification_number/@value = '00131313']" mode="doPractitionerRoleReference-2.0"/>
                                        </valueReference>
                                    </extension>
                                    <xsl:apply-templates select="$gpPractitioner[health_professional_identification_number/@value = '00131313']" mode="doPractitionerReference-2.0"/>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:with-param>
                        <xsl:with-param name="contact" select="$contactPerson" tunnel="yes" as="element()*"/>
                    </xsl:apply-templates>
                </unieke-patient>
            </xsl:for-each-group>
        </xsl:for-each-group>
    </xsl:variable>

    <xsl:variable name="relatedPersons" as="element()*">
        <xsl:for-each-group select="/bundle/contact[*//(@value | @code | @nullFlavor)]" group-by="nf:getGroupingKeyDefault(.)">
            <!-- uuid als fullUrl en ook een fhir id genereren vanaf de tweede groep -->
            <xsl:variable name="uuid" as="xs:boolean" select="false()"/>
            <unieke-persoon xmlns="">
                <group-key>
                    <xsl:value-of select="current-grouping-key()"/>
                </group-key>
                <reference-display>
                    <xsl:value-of select="current-group()[1]/normalize-space(string-join(naamgegevens[1]//*[not(name() = 'naamgebruik')]/@value | name_information[1]//*[not(name() = 'name_usage')]/@value, ' '))"/>
                </reference-display>
                <xsl:apply-templates select="current-group()[1]" mode="doRelatedPersonEntry-2.0">
                    <xsl:with-param name="uuid" select="$uuid"/>
                </xsl:apply-templates>
            </unieke-persoon>
        </xsl:for-each-group>
    </xsl:variable>

    <!-- Overrule global variable to add fhirResourceId as we would like it -->
    <xsl:variable name="labObservations" as="element()*">
        <xsl:for-each-group select="//(laboratorium_test[not(laboratorium_test)] | laboratory_test[not(laboratory_test)])[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" group-by="nf:getGroupingKeyDefault(.)">
            <xsl:for-each select="current-group()">
                <!-- uuid als fullUrl en ook een fhir id genereren vanaf de tweede groep -->
                <xsl:variable name="uuid" as="xs:boolean" select="position() &gt; 1"/>
                <xsl:variable name="adaPatient" select="ancestor::laboratory_test_result/hcimroot/subject/patient/patient"/>
                <xsl:variable name="patientName" select="local:get-patient-name($adaPatient)"/>
                <unieke-lab-observatie>
                    <group-key>
                        <xsl:value-of select="current-grouping-key()"/>
                    </group-key>
                    <reference-display>
                        <xsl:value-of select="(test_code | test_uitslag | test_result)/(@displayName | @originalText)"/>
                    </reference-display>
                    <xsl:apply-templates select="." mode="doLaboratoryResultObservationEntry-2.1">
                        <xsl:with-param name="uuid" select="$uuid"/>
                        <xsl:with-param name="searchMode">match</xsl:with-param>
                        <xsl:with-param name="fhirResourceId" select="concat($patientName, '-labresult', string(count(../preceding-sibling::laboratory_test_result) + 1), '-', count(preceding-sibling::laboratory_test) + 1)"/>
                    </xsl:apply-templates>
                </unieke-lab-observatie>
            </xsl:for-each>
        </xsl:for-each-group>
    </xsl:variable>

    <!-- Overrule global variable to add fhirResourceId as we would like it -->
    <xsl:variable name="labSpecimens" as="element()*">
        <xsl:for-each-group select="/bundle/(laboratory_test_result/specimen | laboratorium_uitslag/monster)[.//(@value | @code | @nullFlavor)]" group-by="nf:getGroupingKeyDefault(.)">
            <!-- uuid als fullUrl en ook een fhir id genereren vanaf de tweede groep -->
            <xsl:variable name="uuid" as="xs:boolean" select="position() &gt; 1"/>
            <xsl:variable name="adaPatient" select="ancestor::laboratory_test_result/hcimroot/subject/patient/patient"/>
            <xsl:variable name="patientName" select="local:get-patient-name($adaPatient)"/>
            <uniek-materiaal>
                <group-key>
                    <xsl:value-of select="current-grouping-key()"/>
                </group-key>
                <reference-display>
                    <xsl:value-of select="(specimen_material | monstermateriaal)/(@displayName | @originalText)"/>
                </reference-display>
                <xsl:apply-templates select="current-group()[1]" mode="doLaboratoryResultSpecimenEntry-2.1">
                    <xsl:with-param name="uuid" select="$uuid"/>
                    <xsl:with-param name="searchMode">match</xsl:with-param>
                    <xsl:with-param name="fhirResourceId" select="concat($patientName, '-labresult', string(count(../preceding-sibling::laboratory_test_result) + 1), '-', count(preceding-sibling::specimen) + 1)"/>
                </xsl:apply-templates>
            </uniek-materiaal>
        </xsl:for-each-group>
    </xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <xsl:variable name="bouwstenen" as="element(f:entry)*">
            <xsl:variable name="adaPatient" select="util:resolve(/bundle/patient)" as="element(patient)"/>
            <xsl:variable name="patientName" select="local:get-patient-name($adaPatient)"/>
            <xsl:for-each select="bundle/*">
                <!--Zibs that result in only a single resource, or resources that have no special conditions-->
                <xsl:variable name="theLocalName" select="local-name()"/>
                <xsl:variable name="thePos" select="count(preceding-sibling::*[local-name() = $theLocalName]) + 1" as="xs:integer"/>
                <xsl:if test="not($theLocalName = ('marital_status_rc'))">
                    <xsl:choose>
                        <xsl:when test="$theLocalName = 'advance_directive'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-AdvanceDirective-', string-join(($usecase, $patientName), '-'), '-advdir', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-AdvanceDirective-2.1">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-advdir', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'alcohol_use'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-AlcoholUse-', string-join(($usecase, $patientName), '-'), '-alcohol', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-AlcoholUse-2.1">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-alcohol', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'alert'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-Alert-', string-join(($usecase, $patientName), '-'), '-alert', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-Alert-2.1">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-alert', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'allergy_intolerance'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-AllergyIntolerance-', string-join(($usecase, $patientName), '-'), '-allergy', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-AllergyIntolerance-2.1">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-allergy', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'blood_pressure'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-BloodPressure-', string-join(($usecase, $patientName), '-'), '-bloodpressure', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-BloodPressure-3.0">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-bloodpressure', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'body_height'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-BodyHeight-', string-join(($usecase, $patientName), '-'), '-bodyheight', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-BodyHeight-2.x">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-bodyheight', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'body_weight'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-BodyWeight-', string-join(($usecase, $patientName), '-'), '-bodyweight', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-BodyWeight-2.x">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-bodyweight', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'contact'">
                            <!-- skip here -->
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'drug_use'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-DrugUse-', string-join(($usecase, $patientName), '-'), '-druguse', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-DrugUse-2.1">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-druguse', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'encounter'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-Encounter-', string-join(($usecase, $patientName), '-'), '-encounter', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-Encounter-2.1">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-encounter', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'health_professional'">
                            <!-- skip here -->
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'healthcare_provider'">
                            <!-- skip here -->
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'functional_or_mental_status'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-FunctionalOrMentalStatus-', string-join(($usecase, $patientName), '-'), '-funcment', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-FunctionalOrMentalStatus-2.1">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-funcment', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'laboratory_test_result'">
                            <xsl:if test="panel_or_battery[@code]">
                                <entry xmlns="http://hl7.org/fhir">
                                    <fullUrl value="{concat('zib-LaboratoryTestResult-PanelObservation-', string-join(($usecase, $patientName), '-'), '-labresult', $thePos)}"/>
                                    <resource>
                                        <xsl:call-template name="zib-LaboratoryTestResult-PanelObservation-2.1">
                                            <xsl:with-param name="in" select="."/>
                                            <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                            <xsl:with-param name="logicalId" select="concat($patientName, '-labresult', $thePos)"/>
                                        </xsl:call-template>
                                    </resource>
                                    <search>
                                        <mode value="match"/>
                                    </search>
                                    <search>
                                        <mode value="match"/>
                                    </search>
                                </entry>
                            </xsl:if>

                            <xsl:for-each select="laboratory_test">
                                <entry xmlns="http://hl7.org/fhir">
                                    <fullUrl value="{concat('zib-LaboratoryTestResult-Observation-', string-join(($usecase, $patientName), '-'), '-labresult', $thePos)}"/>
                                    <resource>
                                        <xsl:call-template name="zib-LaboratoryTestResult-Observation-2.1">
                                            <xsl:with-param name="in" select="."/>
                                            <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                            <xsl:with-param name="logicalId" select="concat($patientName, '-labresult', string(count(../preceding-sibling::laboratory_test_result) + 1), '-', count(preceding-sibling::laboratory_test) + 1)"/>
                                        </xsl:call-template>
                                    </resource>
                                    <search>
                                        <mode value="match"/>
                                    </search>
                                    <search>
                                        <mode value="match"/>
                                    </search>
                                </entry>
                            </xsl:for-each>

                            <xsl:for-each select="specimen">
                                <entry xmlns="http://hl7.org/fhir">
                                    <fullUrl value="{concat('zib-LaboratoryTestResult-Specimen-', string-join(($usecase, $patientName), '-'), '-labresult', $thePos)}"/>
                                    <resource>
                                        <xsl:call-template name="zib-LaboratoryTestResult-Specimen-2.1">
                                            <xsl:with-param name="in" select="."/>
                                            <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                            <xsl:with-param name="logicalId" select="concat($patientName, '-labresult', string(count(../preceding-sibling::laboratory_test_result) + 1), '-', count(preceding-sibling::specimen) + 1)"/>
                                        </xsl:call-template>
                                    </resource>
                                    <search>
                                        <mode value="match"/>
                                    </search>
                                    <search>
                                        <mode value="match"/>
                                    </search>
                                </entry>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'living_situation'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-LivingSituation-', string-join(($usecase, $patientName), '-'), '-living', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-LivingSituation-2.1">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-living', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'medical_device'">
                            <!-- skip here -->
                            <!--<entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-MedicalDevice-', string-join(($usecase, $patientName), '-'), '-medDevice', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-MedicalDevice-2.2">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-medDevice', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>-->
                            <!--<entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-MedicalDeviceProduct-', string-join(($usecase, $patientName), '-'), '-medDevice', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-MedicalDeviceProduct-2.2">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-medDevice', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>-->
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'nutrition_advice'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-NutritionAdvice-', string-join(($usecase, $patientName), '-'), '-nutrition', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-NutritionAdvice-2.1">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-nutrition', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'patient'">
                            <!-- skip here -->
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'payer'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-Payer-', string-join(($usecase, $patientName), '-'), '-payer', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-Payer-2.0">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-payer', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'procedure'">
                            <!-- skip here -->
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'problem'">
                            <!-- skip here -->
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'tobacco_use'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-TobaccoUse-', string-join(($usecase, $patientName), '-'), '-tobacco', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-TobaccoUse-2.1">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-tobacco', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'treatment_directive'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-TreatmentDirective-', string-join(($usecase, $patientName), '-'), '-treatmentdir', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-TreatmentDirective-2.2">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-treatmentdir', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>
                        </xsl:when>
                        <xsl:when test="$theLocalName = 'vaccination'">
                            <entry xmlns="http://hl7.org/fhir">
                                <fullUrl value="{concat('zib-Vaccination-', string-join(($usecase, $patientName), '-'), '-vaccin', $thePos)}"/>
                                <resource>
                                    <xsl:call-template name="zib-Vaccination-2.1">
                                        <xsl:with-param name="in" select="."/>
                                        <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                        <xsl:with-param name="logicalId" select="concat($patientName, '-vaccin', $thePos)"/>
                                    </xsl:call-template>
                                </resource>
                                <search>
                                    <mode value="match"/>
                                </search>
                                <search>
                                    <mode value="match"/>
                                </search>
                            </entry>

                            <xsl:if test="(gewenste_datum_hervaccinatie | prefered_date_for_revaccination)[@value]">
                                <entry xmlns="http://hl7.org/fhir">
                                    <fullUrl value="{concat('zib-VaccinationRecommendation-', string-join(($usecase, $patientName), '-'), '-vaccin', $thePos)}"/>
                                    <resource>
                                        <xsl:call-template name="zib-VaccinationRecommendation-2.0">
                                            <xsl:with-param name="in" select="."/>
                                            <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                                            <xsl:with-param name="logicalId" select="concat($patientName, '-vaccin', $thePos)"/>
                                        </xsl:call-template>
                                    </resource>
                                    <search>
                                        <mode value="match"/>
                                    </search>
                                    <search>
                                        <mode value="match"/>
                                    </search>
                                </entry>
                            </xsl:if>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:message>Unsupported input: <xsl:value-of select="$theLocalName"/></xsl:message>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:if>
            </xsl:for-each>

            <xsl:for-each select="$patients/f:entry/f:resource/*">
                <entry xmlns="http://hl7.org/fhir">
                    <fullUrl value="{concat('zib-Patient-', string-join(($usecase, $patientName), '-'), '-patient', position())}"/>
                    <resource>
                        <xsl:copy-of select="."/>
                    </resource>
                    <search>
                        <mode value="match"/>
                    </search>
                </entry>
            </xsl:for-each>
            <xsl:for-each select="$relatedPersons/f:entry/f:resource/*">
                <entry xmlns="http://hl7.org/fhir">
                    <fullUrl value="{concat('zib-RelatedPerson-', string-join(($usecase, $patientName), '-'), '-relatedperson', position())}"/>
                    <resource>
                        <xsl:copy-of select="."/>
                    </resource>
                    <search>
                        <mode value="match"/>
                    </search>
                </entry>
            </xsl:for-each>
            <xsl:for-each select="$medicalDevices/f:entry/f:resource/*">
                <entry xmlns="http://hl7.org/fhir">
                    <fullUrl value="{concat('zib-MedicalDeviceProduct-', string-join(($usecase, $patientName), '-'), '-medDevice', position())}"/>
                    <resource>
                        <xsl:copy-of select="."/>
                    </resource>
                    <search>
                        <mode value="match"/>
                    </search>
                </entry>
            </xsl:for-each>
            <xsl:for-each select="$medicalDeviceProducts/f:entry/f:resource/*">
                <entry xmlns="http://hl7.org/fhir">
                    <fullUrl value="{concat('zib-MedicalDeviceProduct-', string-join(($usecase, $patientName), '-'), '-medDevice', position())}"/>
                    <resource>
                        <xsl:copy-of select="."/>
                    </resource>
                    <search>
                        <mode value="match"/>
                    </search>
                </entry>
            </xsl:for-each>
            <xsl:for-each select="$organizations/f:entry/f:resource/*">
                <entry xmlns="http://hl7.org/fhir">
                    <fullUrl value="{concat('zib-HealthProvider-', string-join(($usecase, $patientName), '-'), '-healthcareprovider', position())}"/>
                    <resource>
                        <xsl:copy-of select="."/>
                    </resource>
                    <search>
                        <mode value="match"/>
                    </search>
                </entry>
            </xsl:for-each>
            <xsl:for-each select="$practitioners/f:entry/f:resource/*">
                <entry xmlns="http://hl7.org/fhir">
                    <fullUrl value="{concat('zib-HealthProfessional-', string-join(($usecase, $patientName), '-'), '-healthprofessional', position())}"/>
                    <resource>
                        <xsl:copy-of select="."/>
                    </resource>
                    <search>
                        <mode value="match"/>
                    </search>
                </entry>
            </xsl:for-each>
            <xsl:for-each select="$practitionerRoles/f:entry/f:resource/*">
                <entry xmlns="http://hl7.org/fhir">
                    <fullUrl value="{concat('zib-HealthProfessional-', string-join(($usecase, $patientName), '-'), '-healthprofessionalrole', position())}"/>
                    <resource>
                        <xsl:copy-of select="."/>
                    </resource>
                    <search>
                        <mode value="match"/>
                    </search>
                </entry>
            </xsl:for-each>
            <xsl:for-each select="$problems/f:entry/f:resource/*">
                <entry xmlns="http://hl7.org/fhir">
                    <fullUrl value="{concat('zib-Problem-', string-join(($usecase, $patientName), '-'), '-problem', position())}"/>
                    <resource>
                        <xsl:copy-of select="."/>
                    </resource>
                    <search>
                        <mode value="match"/>
                    </search>
                </entry>
            </xsl:for-each>
            <xsl:for-each select="$procedures/f:entry/f:resource/*">
                <entry xmlns="http://hl7.org/fhir">
                    <fullUrl value="{concat('zib-Procedure-', string-join(($usecase, $patientName), '-'), '-procedure', position())}"/>
                    <resource>
                        <xsl:copy-of select="."/>
                    </resource>
                    <search>
                        <mode value="match"/>
                    </search>
                </entry>
            </xsl:for-each>
            <xsl:for-each select="$procedureRequests/f:entry/f:resource/*">
                <entry xmlns="http://hl7.org/fhir">
                    <fullUrl value="{concat('zib-ProcedureRequest-', string-join(($usecase, $patientName), '-'), '-procedure', position())}"/>
                    <resource>
                        <xsl:copy>
                            <xsl:for-each select="node()">
                                <xsl:choose>
                                    <xsl:when test="local-name() = 'status'">
                                        <status value="active" xmlns="http://hl7.org/fhir"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:copy-of select="."/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:for-each>
                        </xsl:copy>
                    </resource>
                    <search>
                        <mode value="match"/>
                    </search>
                </entry>
            </xsl:for-each>
        </xsl:variable>

        <xsl:variable name="entries" as="element(f:entry)*">
            <xsl:copy-of select="$bouwstenen"/>
            <!--<xsl:copy-of select="$commonEntries"/>-->
        </xsl:variable>

        <xsl:choose>
            <xsl:when test="$separateResources">
                <xsl:call-template name="util:logMessage">
                    <xsl:with-param name="level" select="$logINFO"/>
                    <xsl:with-param name="terminate" select="false()"/>
                    <xsl:with-param name="msg">Input of <xsl:value-of select="/bundle/@count"/> ADA instances resulted in <xsl:value-of select="count($entries)"/> FHIR instances</xsl:with-param>
                    <!--<xsl:with-param name="msg">Input resulted in <xsl:value-of select="count($entries)"/> entries (<xsl:value-of select="$entries/f:resource/*/local-name()"/>)</xsl:with-param>-->
                </xsl:call-template>
                <xsl:for-each select="$entries">
                    <xsl:variable name="filename" as="xs:string" select="concat(f:resource/f:*/f:id/@value, '.xml')"/>

                    <xsl:call-template name="util:logMessage">
                        <xsl:with-param name="level" select="$logDEBUG"/>
                        <xsl:with-param name="terminate" select="false()"/>
                        <xsl:with-param name="msg">
                            <xsl:value-of select="$filename"/>
                        </xsl:with-param>
                    </xsl:call-template>

                    <xsl:try>
                        <xsl:result-document href="{yatcs:href-concat(($outputDirectory, $filename))}">
                            <xsl:copy-of select="f:resource/f:*"/>
                        </xsl:result-document>
                        <xsl:catch>
                            <xsl:message>WARNING: Attempt to write twice to <xsl:value-of select="$filename"/></xsl:message>
                        </xsl:catch>
                    </xsl:try>

                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
                <xsl:if test="empty($outputDirectoryBundles)">
                    <xsl:call-template name="yatcs:raise-error">
                        <xsl:with-param name="msg-parts" select="'Request to create bundle output, but parameter outputDirectoryBundles not specified'"/>
                    </xsl:call-template>
                </xsl:if>

                <xsl:variable name="filename" as="xs:string" select="tokenize(base-uri(.), '/')[last()]"/>
                <xsl:result-document href="{yatcs:href-concat(($outputDirectoryBundles, $filename))}">
                    <xsl:processing-instruction name="xml-model">href="http://hl7.org/fhir/STU3/bundle.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"</xsl:processing-instruction>
                    <Bundle xsl:exclude-result-prefixes="#all" schemaLocation="http://hl7.org/fhir http://hl7.org/fhir/STU3/fhir-all.xsd" xmlns="http://hl7.org/fhir">
                        <id value="{nf:get-uuid(*[1])}"/>
                        <type value="searchset"/>
                        <total value="{count($bouwstenen)}"/>
                        <xsl:choose>
                            <xsl:when test="$bundleSelfLink[not(. = '')]">
                                <link>
                                    <relation value="self"/>
                                    <url value="{$bundleSelfLink}"/>
                                </link>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:call-template name="util:logMessage">
                                    <xsl:with-param name="level" select="$logWARN"/>
                                    <xsl:with-param name="msg">Parameter bundleSelfLink is empty, but server SHALL return the parameters that were actually used to process the search.</xsl:with-param>
                                    <xsl:with-param name="terminate" select="false()"/>
                                </xsl:call-template>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:copy-of select="$entries"/>
                    </Bundle>
                </xsl:result-document>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:function name="util:resolve">
        <xsl:param name="in" as="element()?"/>
        <xsl:if test="$in">
            <xsl:choose>
                <!-- internal reference -->
                <xsl:when test="starts-with($in/@value, '#')">
                    <xsl:try>
                        <xsl:variable name="theTarget" select="$in/ancestor::document-node()//*[@id = $in/@value]" as="element()"/>
                        <xsl:copy-of select="$theTarget"/>
                        <xsl:catch>
                            <xsl:message>ERROR: Could not resolve internal reference <xsl:value-of select="$in/@value"/></xsl:message>
                            <xsl:copy-of select="$in"/>
                        </xsl:catch>
                    </xsl:try>
                </xsl:when>
                <!-- external file reference -->
                <xsl:when test="contains($in/@value, '#')">
                    <xsl:try>
                        <xsl:variable name="theTarget" select="$adaProcessedDocuments//data/*[@id = normalize-space(substring-before($in/@value, '#'))]/*[@id = normalize-space(substring-after($in/@value, '#'))]" as="element()"/>
                        <xsl:copy-of select="$theTarget"/>
                        <xsl:catch>
                            <xsl:message>ERROR: Could not resolve external reference <xsl:value-of select="$in/@value"/></xsl:message>
                            <xsl:copy-of select="$in"/>
                        </xsl:catch>
                    </xsl:try>
                </xsl:when>
                <!-- not a reference? -->
                <xsl:otherwise>
                    <xsl:copy-of select="$in"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:function>

    <xsl:function name="local:get-patient-name" as="xs:string?">
        <xsl:param name="in" as="element()?"/>
        <xsl:if test="$in">
            <xsl:variable name="patientIdentifier" select="$in/patient_identification_number/@value"/>

            <xsl:choose>
                <xsl:when test="$patientIdentifier = '999999151' or contains($in/@id, 'patA')">patA</xsl:when>
                <xsl:when test="$patientIdentifier = ('999900092', '999900560') or contains($in/@id, 'patB')">patB</xsl:when>
                <xsl:otherwise>patX</xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:function>
</xsl:stylesheet>

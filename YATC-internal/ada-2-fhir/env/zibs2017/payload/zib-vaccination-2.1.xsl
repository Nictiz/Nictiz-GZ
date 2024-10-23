<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all" version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://hl7.org/fhir" xmlns:f="http://hl7.org/fhir" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:uuid="http://www.uuid.org" xmlns:local="urn:fhir:stu3:functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
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

    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:param name="referById" as="xs:boolean" select="false()"/>

    <xsl:variable name="vaccinations" as="element()*">
        <xsl:for-each-group select="//(vaccinatie | vaccination)[not(@datatype = 'reference')][not(vaccinatie) and not(vaccination)][.//(@value | @code | @nullFlavor)]" group-by="nf:getGroupingKeyDefault(.)">
            <!-- uuid als fullUrl en ook een fhir id genereren vanaf de tweede groep -->
            <!--<xsl:variable name="uuid" as="xs:boolean" select="position() > 1"/>-->
            <unique-vaccination xmlns="">
                <group-key>
                    <xsl:value-of select="current-grouping-key()"/>
                </group-key>
                <reference-display>
                    <xsl:value-of select="product_code/@displayName"/>
                </reference-display>
                <xsl:apply-templates select="current-group()[1]" mode="doVaccinationEntry-2.1">
                    <!--<xsl:with-param name="uuid" select="$uuid"/>-->
                </xsl:apply-templates>
            </unique-vaccination>
        </xsl:for-each-group>
    </xsl:variable>

    <!-- ================================================================== -->

    <!--<xsl:template name="vaccinationReference" match="(vaccinatie | vaccination)[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" mode="doVaccinationReference-2.1">-->
    <!-- Match expression was not XSLT2 compliant. Changed to: -->
    <xsl:template name="vaccinationReference" match="vaccinatie[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)] | vaccination[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" mode="doVaccinationReference-2.1">
        <!-- Returns contents of Reference datatype element -->
        <xsl:variable name="theIdentifier" select="(zibroot/identificatienummer | hcimroot/identification_number)[@value]"/>
        <xsl:variable name="theGroupKey" select="nf:getGroupingKeyDefault(.)"/>
        <xsl:variable name="theGroupElement" select="$vaccinations[group-key = $theGroupKey]" as="element()?"/>
        <xsl:choose>
            <xsl:when test="$theGroupElement">
                <xsl:variable name="fullUrl" select="nf:getFullUrlOrId(($theGroupElement/f:entry)[1])"/>
                <reference value="{$fullUrl}"/>
            </xsl:when>
            <xsl:when test="$theIdentifier">
                <identifier>
                    <xsl:call-template name="id-to-Identifier">
                        <xsl:with-param name="in" select="($theIdentifier[not(@root = $mask-ids-var)], $theIdentifier)[1]"/>
                    </xsl:call-template>
                </identifier>
            </xsl:when>
        </xsl:choose>

        <xsl:if test="string-length($theGroupElement/reference-display) gt 0">
            <display value="{$theGroupElement/reference-display}"/>
        </xsl:if>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <!--<xsl:template name="vaccinationEntry" match="(vaccinatie | vaccination)[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" mode="doVaccinationEntry-2.1" as="element(f:entry)">-->
    <!-- Match expression was not XSLT2 compliant. Changed to: -->
    <xsl:template name="vaccinationEntry" match="vaccinatie[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)] | vaccination[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" mode="doVaccinationEntry-2.1" as="element(f:entry)">
        <!-- Produces a FHIR entry element with an Immunization resource for Vaccination -->
        <xsl:param name="uuid" select="false()" as="xs:boolean">
            <!-- If true generate uuid from scratch. Defaults to false(). Generating a uuid from scratch limits reproduction of the same output as the uuids will be different every time. -->
        </xsl:param>
        <xsl:param name="adaPatient" select="(ancestor::*/patient[*//@value] | ancestor::*/bundle/subject/patient[*//@value] | ancestor::bundle//subject//patient[not(patient)][*//@value])[1]" as="element()">
            <!-- Optional, but should be there. Patient this resource is for. -->
        </xsl:param>
        <xsl:param name="dateT" as="xs:date?">
            <!-- Optional. dateT may be given for relative dates, only applicable for test instances -->
        </xsl:param>
        <xsl:param name="entryFullUrl" select="nf:get-fhir-uuid(.)">
            <!-- Optional. Value for the entry.fullUrl -->
        </xsl:param>
        <xsl:param name="fhirResourceId">
            <!-- Optional. Value for the entry.resource.Immunization.id -->

            <xsl:if test="$referById">
                <xsl:choose>
                    <xsl:when test="not($uuid) and string-length(nf:removeSpecialCharacters((zibroot/identificatienummer | hcimroot/identification_number)/@value)) gt 0">
                        <xsl:value-of select="nf:removeSpecialCharacters(string-join((zibroot/identificatienummer | hcimroot/identification_number)/@value, ''))"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="nf:removeSpecialCharacters(replace($entryFullUrl, 'urn:[^i]*id:', ''))"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>
        </xsl:param>
        <xsl:param name="searchMode" select="'include'">
            <!-- Optional. Value for entry.search.mode. Default: include -->
        </xsl:param>

        <entry>
            <fullUrl value="{$entryFullUrl}"/>
            <resource>
                <xsl:call-template name="zib-Vaccination-2.1">
                    <xsl:with-param name="in" select="."/>
                    <xsl:with-param name="logicalId" select="$fhirResourceId"/>
                    <xsl:with-param name="adaPatient" select="$adaPatient" as="element()"/>
                    <xsl:with-param name="dateT" select="$dateT"/>
                </xsl:call-template>
            </resource>
            <xsl:if test="string-length($searchMode) gt 0">
                <search>
                    <mode value="{$searchMode}"/>
                </search>
            </xsl:if>
        </entry>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <!--<xsl:template name="zib-Vaccination-2.1" match="(vaccinatie | vaccination)[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" as="element(f:Immunization)" mode="doZibVaccination-2.1">-->
    <!-- Match expression was not XSLT2 compliant. Changed to: -->
    <xsl:template name="zib-Vaccination-2.1" match="vaccinatie[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)] | vaccination[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" as="element(f:Immunization)" mode="doZibVaccination-2.1">
        <!-- Mapping of HCIM Vaccination concept in ADA to FHIR resource zib-Vaccination. -->
        <xsl:param name="in" select="." as="element()?">
            <!-- Node to consider in the creation of the Immunization resource for Vaccination. -->
        </xsl:param>
        <xsl:param name="logicalId" as="xs:string?">
            <!-- Optional FHIR logical id for the record. -->
        </xsl:param>
        <xsl:param name="adaPatient" select="(ancestor::*/patient[*//@value] | ancestor::*/bundle/subject/patient[*//@value])[1]" as="element()">
            <!-- Required. ADA patient concept to build a reference to from this resource -->
        </xsl:param>
        <xsl:param name="dateT" as="xs:date?">
            <!-- Optional. dateT may be given for relative dates, only applicable for test instances -->
        </xsl:param>

        <xsl:for-each select="$in">
            <xsl:variable name="resource">
                <xsl:variable name="profileValue">http://nictiz.nl/fhir/StructureDefinition/zib-Vaccination</xsl:variable>
                <Immunization>
                    <xsl:if test="string-length($logicalId) gt 0">
                        <id value="{nf:make-fhir-logicalid(tokenize($profileValue, './')[last()], $logicalId)}"/>
                    </xsl:if>

                    <meta>
                        <profile value="{$profileValue}"/>
                    </meta>

                    <xsl:for-each select="zibroot/identificatienummer | hcimroot/identification_number">
                        <identifier>
                            <xsl:call-template name="id-to-Identifier">
                                <xsl:with-param name="in" select="."/>
                            </xsl:call-template>
                        </identifier>
                    </xsl:for-each>

                    <status value="completed"/>

                    <notGiven value="false"/>

                    <!-- vaccineCode is required in the FHIR profile, so always output vaccineCode, data-absent-reason if no actual value -->
                    <vaccineCode>
                        <xsl:choose>
                            <xsl:when test="product_code[@code]">
                                <xsl:call-template name="code-to-CodeableConcept">
                                    <xsl:with-param name="in" select="product_code"/>
                                </xsl:call-template>
                            </xsl:when>
                            <xsl:otherwise>
                                <extension url="{$urlExtHL7DataAbsentReason}">
                                    <valueCode value="unknown"/>
                                </extension>
                            </xsl:otherwise>
                        </xsl:choose>
                    </vaccineCode>

                    <!-- Patient reference -->
                    <patient>
                        <xsl:apply-templates select="$adaPatient" mode="doPatientReference-2.1"/>
                    </patient>

                    <!-- date is required in the FHIR profile, so always output date, data-absent-reason if no actual value -->
                    <date>
                        <xsl:choose>
                            <xsl:when test="(vaccinatie_datum | vaccination_date)[@value]">
                                <xsl:attribute name="value">
                                    <xsl:call-template name="format2FHIRDate">
                                        <xsl:with-param name="dateTime" select="xs:string((vaccinatie_datum | vaccination_date)/@value)"/>
                                        <xsl:with-param name="dateT" select="$dateT"/>
                                    </xsl:call-template>
                                </xsl:attribute>
                            </xsl:when>
                            <xsl:otherwise>
                                <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
                                    <valueCode value="unknown"/>
                                </extension>
                            </xsl:otherwise>
                        </xsl:choose>
                    </date>

                    <primarySource value="false"/>

                    <xsl:for-each select="(dosis | dose)[@value]">
                        <doseQuantity>
                            <xsl:call-template name="hoeveelheid-to-Quantity">
                                <xsl:with-param name="in" select="."/>
                            </xsl:call-template>
                        </doseQuantity>
                    </xsl:for-each>

                    <xsl:for-each select="toediener/zorgverlener | administrator/health_professional">
                        <xsl:choose>
                            <xsl:when test="*">
                                <practitioner>
                                    <!--The following only works if the referred HealthProfessional is contained explicitly within the ada file-->
                                    <xsl:for-each select="zorgverleners_rol | health_professional_role">
                                        <role>
                                            <xsl:variable name="nullFlavorsInValueset" select="('OTH')"/>
                                            <xsl:call-template name="code-to-CodeableConcept">
                                                <xsl:with-param name="in" select="."/>
                                                <xsl:with-param name="treatNullFlavorAsCoding" select="@code = $nullFlavorsInValueset and @codeSystem = $oidHL7NullFlavor"/>
                                            </xsl:call-template>
                                        </role>
                                    </xsl:for-each>

                                    <actor>
                                        <extension url="http://nictiz.nl/fhir/StructureDefinition/practitionerrole-reference">
                                            <valueReference>
                                                <xsl:apply-templates select="." mode="doPractitionerRoleReference-2.0"/>
                                            </valueReference>
                                        </extension>
                                        <xsl:apply-templates select="." mode="doPractitionerReference-2.0"/>
                                    </actor>
                                </practitioner>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>

                    <xsl:for-each select="(toelichting | comment)[@value]">
                        <note>
                            <text>
                                <xsl:call-template name="string-to-string">
                                    <xsl:with-param name="in" select="."/>
                                </xsl:call-template>
                            </text>
                        </note>
                    </xsl:for-each>

                </Immunization>
            </xsl:variable>

            <!-- Add resource.text -->
            <xsl:apply-templates select="$resource" mode="addNarrative"/>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <!--    <xsl:template name="zib-VaccinationRecommendation-2.0" match="(vaccinatie | vaccination)[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" as="element(f:ImmunizationRecommendation)" mode="doZibVaccinationRecommendation-2.0">-->
    <!-- Match expression was not XSLT2 compliant. Changed to: -->
    <xsl:template name="zib-VaccinationRecommendation-2.0" match="vaccinatie[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)] | vaccination[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" as="element(f:ImmunizationRecommendation)" mode="doZibVaccinationRecommendation-2.0">
        <!-- Mapping of HCIM Vaccination concept in ADA to FHIR resource zib-VaccinationRecommendation. -->
        <xsl:param name="in" select="." as="element()?">
            <!-- Node to consider in the creation of the ImmunizationRecommendation resource for Vaccination. -->
        </xsl:param>
        <xsl:param name="logicalId" as="xs:string?">
            <!-- Optional FHIR logical id for the record. -->
        </xsl:param>
        <xsl:param name="adaPatient" select="(ancestor::*/patient[*//@value] | ancestor::*/bundle/subject/patient[*//@value])[1]" as="element()">
            <!-- Required. ADA patient concept to build a reference to from this resource -->
        </xsl:param>
        <xsl:param name="dateT" as="xs:date?">
            <!-- Optional. dateT may be given for relative dates, only applicable for test instances -->
        </xsl:param>

        <xsl:for-each select="$in">
            <xsl:variable name="resource">
                <xsl:variable name="profileValue">http://nictiz.nl/fhir/StructureDefinition/zib-VaccinationRecommendation</xsl:variable>
                <ImmunizationRecommendation>
                    <xsl:if test="string-length($logicalId) gt 0">
                        <id value="{nf:make-fhir-logicalid(tokenize($profileValue, './')[last()], $logicalId)}"/>
                    </xsl:if>

                    <meta>
                        <profile value="{$profileValue}"/>
                    </meta>

                    <xsl:for-each select="zibroot/identificatienummer | hcimroot/identification_number">
                        <identifier>
                            <xsl:call-template name="id-to-Identifier">
                                <xsl:with-param name="in" select="."/>
                            </xsl:call-template>
                        </identifier>
                    </xsl:for-each>

                    <!-- Patient reference -->
                    <patient>
                        <xsl:apply-templates select="$adaPatient" mode="doPatientReference-2.1"/>
                    </patient>

                    <xsl:for-each select="(gewenste_datum_hervaccinatie | prefered_date_for_revaccination)[@value]">
                        <recommendation>
                            <date>
                                <xsl:attribute name="value">
                                    <xsl:call-template name="format2FHIRDate">
                                        <xsl:with-param name="dateTime" select="xs:string(@value)"/>
                                        <xsl:with-param name="dateT" select="$dateT"/>
                                    </xsl:call-template>
                                </xsl:attribute>
                            </date>

                            <xsl:for-each select="../product_code[@code]">
                                <vaccineCode>
                                    <xsl:call-template name="code-to-CodeableConcept">
                                        <xsl:with-param name="in" select="."/>
                                    </xsl:call-template>
                                </vaccineCode>
                            </xsl:for-each>

                            <forecastStatus>
                                <coding>
                                    <system value="http://hl7.org/fhir/immunization-recommendation-status"/>
                                    <code value="due"/>
                                    <display value="Due"/>
                                </coding>
                            </forecastStatus>

                            <supportingImmunization>
                                <xsl:apply-templates select=".." mode="doVaccinationReference-2.1"/>
                            </supportingImmunization>
                        </recommendation>
                    </xsl:for-each>

                </ImmunizationRecommendation>
            </xsl:variable>

            <!-- Add resource.text -->
            <xsl:apply-templates select="$resource" mode="addNarrative"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>

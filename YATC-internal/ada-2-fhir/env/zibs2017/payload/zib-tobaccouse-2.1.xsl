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

    <!-- ================================================================== -->

    <!--<xsl:template name="zib-TobaccoUse-2.1" match="(tabak_gebruik | tobacco_use)[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" as="element(f:Observation)" mode="doZibTobaccoUse-2.1">-->
    <!-- Match expression was not XSLT2 compliant. Changed to: -->
    <xsl:template name="zib-TobaccoUse-2.1" match="tabak_gebruik[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)] | tobacco_use[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" as="element(f:Observation)" mode="doZibTobaccoUse-2.1">
        <!-- Mapping of HCIM TobaccoUse concept in ADA to FHIR resource zib-TobaccoUse. -->
        <xsl:param name="in" select="." as="element()?">
            <!-- Node to consider in the creation of the Observation resource for TobaccoUse. -->
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
                <xsl:variable name="profileValue">http://nictiz.nl/fhir/StructureDefinition/zib-TobaccoUse</xsl:variable>
                <Observation>
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

                    <status value="final"/>

                    <code>
                        <coding>
                            <system value="{local:getUri($oidSNOMEDCT)}"/>
                            <code value="365980008"/>
                            <display value="bevinding betreffende tabakgebruik en blootstelling aan tabaksrook"/>
                        </coding>
                    </code>

                    <!-- Patient reference -->
                    <subject>
                        <xsl:apply-templates select="$adaPatient" mode="doPatientReference-2.1"/>
                    </subject>

                    <xsl:if test="(waarneming_gebruik/start_datum | observation_of_use/start_date)[@value] or (waarneming_gebruik/stop_datum | observation_of_use/stop_date)[@value]">
                        <effectivePeriod>
                            <xsl:for-each select="(waarneming_gebruik/start_datum | observation_of_use/start_date)[@value]">
                                <start>
                                    <xsl:attribute name="value">
                                        <xsl:call-template name="format2FHIRDate">
                                            <xsl:with-param name="dateTime" select="xs:string(@value)"/>
                                            <xsl:with-param name="dateT" select="$dateT"/>
                                        </xsl:call-template>
                                    </xsl:attribute>
                                </start>
                            </xsl:for-each>
                            <xsl:for-each select="(waarneming_gebruik/stop_datum | observation_of_use/stop_date)[@value]">
                                <end>
                                    <xsl:attribute name="value">
                                        <xsl:call-template name="format2FHIRDate">
                                            <xsl:with-param name="dateTime" select="xs:string(@value)"/>
                                            <xsl:with-param name="dateT" select="$dateT"/>
                                        </xsl:call-template>
                                    </xsl:attribute>
                                </end>
                            </xsl:for-each>
                        </effectivePeriod>
                    </xsl:if>

                    <!-- valueCodeableConcept is required in the FHIR profile, so always output valueCodeableConcept, data-absent-reason if no actual value -->
                    <valueCodeableConcept>
                        <xsl:choose>
                            <xsl:when test="(tabak_gebruik_status | tobacco_use_status)[@code]">
                                <xsl:variable name="nullFlavorsInValueset" select="('OTH')"/>
                                <xsl:call-template name="code-to-CodeableConcept">
                                    <xsl:with-param name="in" select="tabak_gebruik_status | tobacco_use_status"/>
                                    <xsl:with-param name="treatNullFlavorAsCoding" select="(tabak_gebruik_status | tobacco_use_status)/@code = $nullFlavorsInValueset and (tabak_gebruik_status | tobacco_use_status)/@codeSystem = $oidHL7NullFlavor"/>
                                </xsl:call-template>
                            </xsl:when>
                            <xsl:otherwise>
                                <extension url="{$urlExtHL7DataAbsentReason}">
                                    <valueCode value="unknown"/>
                                </extension>
                            </xsl:otherwise>
                        </xsl:choose>
                    </valueCodeableConcept>

                    <xsl:for-each select="(toelichting | comment)[@value]">
                        <comment>
                            <xsl:call-template name="string-to-string">
                                <xsl:with-param name="in" select="."/>
                            </xsl:call-template>
                        </comment>
                    </xsl:for-each>

                    <xsl:for-each select="(tabak_gebruik_status | type_of_tobacco_used)[@code]">
                        <component>
                            <code>
                                <coding>
                                    <system value="{local:getUri($oidSNOMEDCT)}"/>
                                    <code value="53661000146106"/>
                                    <display value="type tabak gebruikt"/>
                                </coding>
                            </code>
                            <valueCodeableConcept>
                                <xsl:variable name="nullFlavorsInValueset" select="('OTH')"/>
                                <xsl:call-template name="code-to-CodeableConcept">
                                    <xsl:with-param name="in" select="."/>
                                    <xsl:with-param name="treatNullFlavorAsCoding" select="@code = $nullFlavorsInValueset and @codeSystem = $oidHL7NullFlavor"/>
                                </xsl:call-template>
                            </valueCodeableConcept>
                        </component>
                    </xsl:for-each>

                    <xsl:for-each select="(waarneming_gebruik/hoeveelheid | observation_of_use/amount)[@value]">
                        <component>
                            <code>
                                <coding>
                                    <system value="{local:getUri($oidSNOMEDCT)}"/>
                                    <code value="266918002"/>
                                    <display value="hoeveelheid en type tabak gerookt"/>
                                </coding>
                            </code>
                            <valueQuantity>
                                <xsl:call-template name="hoeveelheid-to-Quantity">
                                    <xsl:with-param name="in" select="."/>
                                </xsl:call-template>
                            </valueQuantity>
                        </component>
                    </xsl:for-each>

                    <xsl:for-each select="(waarneming_gebruik/pack_years | observation_of_use/pack_years)[@value]">
                        <component>
                            <code>
                                <coding>
                                    <system value="{local:getUri($oidSNOMEDCT)}"/>
                                    <code value="401201003"/>
                                    <display value="pakjaren"/>
                                </coding>
                            </code>
                            <valueQuantity>
                                <value>
                                    <xsl:attribute name="value" select="./@value"/>
                                </value>
                                <system value="http://unitsofmeasure.org"/>
                                <code value="{{PackYears}}"/>
                            </valueQuantity>
                        </component>
                    </xsl:for-each>

                </Observation>
            </xsl:variable>

            <!-- Add resource.text -->
            <xsl:apply-templates select="$resource" mode="addNarrative"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>

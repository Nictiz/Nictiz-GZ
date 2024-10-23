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

    <!--<xsl:template name="zib-LivingSituation-2.1" match="(woonsituatie | living_situation)[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" as="element(f:Observation)" mode="doZibLivingSituation-2.1">-->
    <!-- Match expression was not XSLT2 compliant. Changed to: -->
    <xsl:template name="zib-LivingSituation-2.1" match="woonsituatie[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)] | living_situation[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" as="element(f:Observation)" mode="doZibLivingSituation-2.1">
        <!-- Mapping of HCIM LivingSituation concept in ADA to FHIR resource zib-LivingSituation. -->
        <xsl:param name="in" select="." as="element()?">
            <!-- Node to consider in the creation of the Observation resource for LivingSituation. -->
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
                <xsl:variable name="profileValue">http://nictiz.nl/fhir/StructureDefinition/zib-LivingSituation</xsl:variable>
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
                            <code value="365508006"/>
                            <display value="bevinding betreffende woon- en huisvestingssituatie"/>
                        </coding>
                    </code>

                    <!-- Patient reference -->
                    <subject>
                        <xsl:apply-templates select="$adaPatient" mode="doPatientReference-2.1"/>
                    </subject>

                    <xsl:for-each select="(zibroot/datum_tijd | hcimroot/date_time)[@value]">
                        <effectiveDateTime>
                            <xsl:attribute name="value">
                                <xsl:call-template name="format2FHIRDate">
                                    <xsl:with-param name="dateTime" select="xs:string(@value)"/>
                                    <xsl:with-param name="dateT" select="$dateT"/>
                                </xsl:call-template>
                            </xsl:attribute>
                        </effectiveDateTime>
                    </xsl:for-each>

                    <xsl:for-each select="(woning_type | house_type)[@code]">
                        <valueCodeableConcept>
                            <xsl:variable name="nullFlavorsInValueset" select="('OTH')"/>
                            <xsl:call-template name="code-to-CodeableConcept">
                                <xsl:with-param name="in" select="."/>
                                <xsl:with-param name="treatNullFlavorAsCoding" select="@code = $nullFlavorsInValueset and @codeSystem = $oidHL7NullFlavor"/>
                            </xsl:call-template>
                        </valueCodeableConcept>
                    </xsl:for-each>

                    <xsl:for-each select="(toelichting | comment)[@value]">
                        <comment>
                            <xsl:call-template name="string-to-string">
                                <xsl:with-param name="in" select="."/>
                            </xsl:call-template>
                        </comment>
                    </xsl:for-each>

                </Observation>
            </xsl:variable>

            <!-- Add resource.text -->
            <xsl:apply-templates select="$resource" mode="addNarrative"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>

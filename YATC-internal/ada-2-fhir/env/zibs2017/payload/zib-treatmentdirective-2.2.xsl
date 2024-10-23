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

    <!--<xsl:template name="zib-TreatmentDirective-2.2" match="(behandel_aanwijzing | treatment_directive)[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" as="element(f:Consent)" mode="doZibTreatmentDirective-2.2">-->
    <!-- Match expression was not XSLT2 compliant. Changed to: -->
    <xsl:template name="zib-TreatmentDirective-2.2" match="behandel_aanwijzing[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)] | treatment_directive[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" as="element(f:Consent)" mode="doZibTreatmentDirective-2.2">
        <!-- Mapping of HCIM TreatmentDirective concept in ADA to FHIR resource zib-TreatmentDirective. -->
        <xsl:param name="in" select="." as="element()?">
            <!-- Node to consider in the creation of the Consent resource for TreatmentDirective. -->
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
                <xsl:variable name="profileValue">http://nictiz.nl/fhir/StructureDefinition/zib-TreatmentDirective</xsl:variable>
                <Consent>
                    <xsl:if test="string-length($logicalId) gt 0">
                        <id value="{nf:make-fhir-logicalid(tokenize($profileValue, './')[last()], $logicalId)}"/>
                    </xsl:if>

                    <meta>
                        <profile value="{$profileValue}"/>
                    </meta>

                    <xsl:for-each select="verificatie | verification">
                        <extension url="http://nictiz.nl/fhir/StructureDefinition/zib-TreatmentDirective-Verification">
                            <!-- extension Verified is required in the FHIR profile, so always output this extension, data-absent-reason if no actual value -->
                            <extension url="Verified">
                                <valueBoolean>
                                    <xsl:choose>
                                        <xsl:when test="(geverifieerd | verified)[@value]">
                                            <xsl:call-template name="boolean-to-boolean">
                                                <xsl:with-param name="in" select="verified"/>
                                            </xsl:call-template>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <extension url="{$urlExtHL7DataAbsentReason}">
                                                <valueCode value="unknown"/>
                                            </extension>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </valueBoolean>
                            </extension>
                            <xsl:for-each select="(geverifieerd_bij | verified_with)[@code]">
                                <extension url="VerifiedWith">
                                    <valueCodeableConcept>
                                        <xsl:variable name="nullFlavorsInValueset" select="('OTH')"/>
                                        <xsl:call-template name="code-to-CodeableConcept">
                                            <xsl:with-param name="in" select="."/>
                                            <xsl:with-param name="treatNullFlavorAsCoding" select="@code = $nullFlavorsInValueset and @codeSystem = $oidHL7NullFlavor"/>
                                        </xsl:call-template>
                                    </valueCodeableConcept>
                                </extension>
                            </xsl:for-each>
                            <xsl:for-each select="(verificatie_datum | verification_date)[@value]">
                                <extension url="VerificationDate">
                                    <valueDateTime>
                                        <xsl:attribute name="value">
                                            <xsl:call-template name="format2FHIRDate">
                                                <xsl:with-param name="dateTime" select="xs:string(@value)"/>
                                                <xsl:with-param name="dateT" select="$dateT"/>
                                            </xsl:call-template>
                                        </xsl:attribute>
                                    </valueDateTime>
                                </extension>
                            </xsl:for-each>
                        </extension>
                    </xsl:for-each>

                    <xsl:for-each select="(toelichting | comment)[@value]">
                        <extension url="http://nictiz.nl/fhir/StructureDefinition/Comment">
                            <valueString>
                                <xsl:call-template name="string-to-string">
                                    <xsl:with-param name="in" select="."/>
                                </xsl:call-template>
                            </valueString>
                        </extension>
                    </xsl:for-each>

                    <xsl:for-each select="(behandeling | treatment)[@code]">
                        <extension url="http://nictiz.nl/fhir/StructureDefinition/zib-TreatmentDirective-Treatment">
                            <valueCodeableConcept>
                                <xsl:variable name="nullFlavorsInValueset" select="('OTH')"/>
                                <xsl:call-template name="code-to-CodeableConcept">
                                    <xsl:with-param name="in" select="."/>
                                    <xsl:with-param name="treatNullFlavorAsCoding" select="@code = $nullFlavorsInValueset and @codeSystem = $oidHL7NullFlavor"/>
                                </xsl:call-template>
                            </valueCodeableConcept>
                        </extension>
                    </xsl:for-each>

                    <xsl:for-each select="(wilsverklaring/wilsverklaring | advance_directive/advance_directive)[*][position() gt 1]">
                        <!-- In package 1.3, there was/is no import of zib-advancedirective-2.1.xsl so variable may be empty although it should not -->
                        <xsl:variable name="advanceDirectiveReference" as="element()*">
                            <xsl:apply-templates select="." mode="doAdvanceDirectiveReference-2.1"/>
                        </xsl:variable>
                        <xsl:if test="$advanceDirectiveReference">
                            <extension url="http://nictiz.nl/fhir/StructureDefinition/consent-additionalSources">
                                <valueReference>
                                    <xsl:apply-templates select="." mode="doAdvanceDirectiveReference-2.1"/>
                                </valueReference>
                            </extension>
                        </xsl:if>
                    </xsl:for-each>

                    <!-- modifierExtension treatmentPermitted is required in the FHIR profile, so always output this modifierExtension, data-absent-reason if no actual value -->
                    <modifierExtension url="http://nictiz.nl/fhir/StructureDefinition/zib-TreatmentDirective-TreatmentPermitted">
                        <valueCodeableConcept>
                            <xsl:choose>
                                <xsl:when test="(behandeling_toegestaan | treatment_permitted)[@code]">
                                    <xsl:call-template name="code-to-CodeableConcept">
                                        <xsl:with-param name="in" select="behandeling_toegestaan | treatment_permitted"/>
                                    </xsl:call-template>
                                </xsl:when>
                                <xsl:otherwise>
                                    <extension url="{$urlExtHL7DataAbsentReason}">
                                        <valueCode value="unknown"/>
                                    </extension>
                                </xsl:otherwise>
                            </xsl:choose>
                        </valueCodeableConcept>
                    </modifierExtension>

                    <xsl:for-each select="zibroot/identificatienummer | hcimroot/identification_number">
                        <identifier>
                            <xsl:call-template name="id-to-Identifier">
                                <xsl:with-param name="in" select="."/>
                            </xsl:call-template>
                        </identifier>
                    </xsl:for-each>

                    <status value="active"/>

                    <category>
                        <coding>
                            <system value="{local:getUri($oidSNOMEDCT)}"/>
                            <code value="11291000146105"/>
                            <display value="behandelaanwijzing"/>
                        </coding>
                    </category>

                    <!-- Patient reference -->
                    <patient>
                        <xsl:apply-templates select="$adaPatient" mode="doPatientReference-2.1"/>
                    </patient>

                    <xsl:if test="(begin_datum | start_date)[@value] or (eind_datum | end_date)[@value]">
                        <period>
                            <xsl:for-each select="(begin_datum | start_date)[@value]">
                                <start>
                                    <xsl:attribute name="value">
                                        <xsl:call-template name="format2FHIRDate">
                                            <xsl:with-param name="dateTime" select="xs:string(@value)"/>
                                            <xsl:with-param name="dateT" select="$dateT"/>
                                        </xsl:call-template>
                                    </xsl:attribute>
                                </start>
                            </xsl:for-each>
                            <xsl:for-each select="(eind_datum | end_date)[@value]">
                                <end>
                                    <xsl:attribute name="value">
                                        <xsl:call-template name="format2FHIRDate">
                                            <xsl:with-param name="dateTime" select="xs:string(@value)"/>
                                            <xsl:with-param name="dateT" select="$dateT"/>
                                        </xsl:call-template>
                                    </xsl:attribute>
                                </end>
                            </xsl:for-each>
                        </period>
                    </xsl:if>

                    <xsl:for-each select="(zibroot/datum_tijd | hcimroot/date_time)[@value]">
                        <dateTime>
                            <xsl:attribute name="value">
                                <xsl:call-template name="format2FHIRDate">
                                    <xsl:with-param name="dateTime" select="xs:string(@value)"/>
                                    <xsl:with-param name="dateT" select="$dateT"/>
                                </xsl:call-template>
                            </xsl:attribute>
                        </dateTime>
                    </xsl:for-each>

                    <!--<xsl:for-each select="zibroot/auteur | hcimroot/author">
                        <consentingParty>
                            
                        </consentingParty>
                    </xsl:for-each>-->

                    <xsl:for-each select="(wilsverklaring/wilsverklaring | advance_directive/advance_directive)[*][1]">
                        <!-- In package 1.3, there was/is no import of zib-advancedirective-2.1.xsl so variable may be empty although it should not -->
                        <xsl:variable name="advanceDirectiveReference" as="element()*">
                            <xsl:apply-templates select="." mode="doAdvanceDirectiveReference-2.1"/>
                        </xsl:variable>
                        <xsl:if test="$advanceDirectiveReference">
                            <sourceReference>
                                <xsl:apply-templates select="." mode="doAdvanceDirectiveReference-2.1"/>
                            </sourceReference>
                        </xsl:if>
                    </xsl:for-each>

                    <policy>
                        <uri value="http://wetten.overheid.nl/"/>
                    </policy>

                    <xsl:if test="(beperkingen | restrictions)[@value] or (behandeling_toegestaan | treatment_permitted)/@code ='JA_MAAR'">
                        <except>
                            <xsl:for-each select="(beperkingen | restrictions)[@value]">
                                <extension url="http://nictiz.nl/fhir/StructureDefinition/zib-TreatmentDirective-Restrictions">
                                    <valueString>
                                        <xsl:call-template name="string-to-string">
                                            <xsl:with-param name="in" select="."/>
                                        </xsl:call-template>
                                    </valueString>
                                </extension>
                            </xsl:for-each>

                            <type>
                                <xsl:choose>
                                    <xsl:when test="(behandeling_toegestaan | treatment_permitted)/@code ='JA_MAAR'">
                                        <xsl:attribute name="value">
                                            <xsl:value-of select="'deny'"/>
                                        </xsl:attribute>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <extension url="{$urlExtHL7DataAbsentReason}">
                                            <valueCode value="unknown"/>
                                        </extension>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </type>
                        </except>
                    </xsl:if>

                </Consent>
            </xsl:variable>

            <!-- Add resource.text -->
            <xsl:apply-templates select="$resource" mode="addNarrative"/>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
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
<xsl:stylesheet exclude-result-prefixes="#all"
    xmlns="http://hl7.org/fhir"
    xmlns:util="urn:hl7:utilities" 
    xmlns:f="http://hl7.org/fhir" 
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:nf="http://www.nictiz.nl/functions"
    xmlns:nm="http://www.nictiz.nl/mappings"
    xmlns:uuid="http://www.uuid.org"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    version="2.0">
    
    <xsl:variable name="profileNameCioCondition">cio-Condition</xsl:variable>
    
    <xd:doc>
        <xd:desc>Create a cio-Condition instance as a Condition FHIR instance from the ada elements geneesmiddelovergevoeligheid/overgevoeligheid and geneesmiddelovergevoeligheid/reactie.</xd:desc>
        <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
        <xd:param name="subject">Optional ADA instance or ADA reference element for the patient.</xd:param>
    </xd:doc>
    <xsl:template name="cio-Condition" as="element(f:Condition)?">
        <xsl:param name="in" select="." as="element()?"/>
        <xsl:param name="subject" select="../../patient" as="element()?"/>
        
        <xsl:for-each select="$in">    
            <Condition>
                <xsl:variable name="registrationData" select="../../bouwstenen/registratie_gegevens[@id = current()/registratie_gegevens/@value]"/>
                <xsl:variable name="author" select="$registrationData/auteur/*"/>
                <xsl:variable name="registrationDateTime" select="$registrationData/registratie_datum_tijd"/>
                
                <xsl:call-template name="insertLogicalId">
                    <xsl:with-param name="profile" select="$profileNameCioCondition"/>
                </xsl:call-template>
                <meta>
                    <profile value="{concat($urlBaseNictizProfile, $profileNameCioCondition)}"/>
                </meta>
                
                <xsl:for-each select="aandoening_status_datum[@value]">
                    <extension url="http://nictiz.nl/fhir/StructureDefinition/ext-ConditionStatusDate">
                        <valueDateTime>
                            <xsl:attribute name="value">
                                <xsl:call-template name="format2FHIRDate">
                                    <xsl:with-param name="dateTime" select="xs:string(@value)"/>
                                </xsl:call-template>
                            </xsl:attribute>
                        </valueDateTime>
                    </extension>
                </xsl:for-each>
                
                <xsl:for-each select="diagnostisch_inzicht_datum[@value]">
                    <extension url="http://hl7.org/fhir/StructureDefinition/condition-assertedDate">
                        <valueDateTime>
                            <xsl:attribute name="value">
                                <xsl:call-template name="format2FHIRDate">
                                    <xsl:with-param name="dateTime" select="xs:string(@value)"/>
                                </xsl:call-template>
                            </xsl:attribute>
                        </valueDateTime>
                    </extension>
                </xsl:for-each>
                
                <xsl:for-each select="aandoening_aanwezigheid[@code]">
                    <clinicalStatus>
                        <xsl:call-template name="code-to-CodeableConcept">
                            <xsl:with-param name="in" select="."/>
                            <xsl:with-param name="codeMap" as="element()*">
                                <map inCode="410515003" inCodeSystem="{$oidSNOMEDCT}" code="active" codeSystem="http://terminology.hl7.org/CodeSystem/condition-clinical" displayName="Active"/>
                                <map inCode="350361000146109" inCodeSystem="{$oidSNOMEDCT}" code="resolved" codeSystem="http://terminology.hl7.org/CodeSystem/condition-clinical" displayName="Resolved"/>
                                <map inCode="410516002" inCodeSystem="{$oidSNOMEDCT}" code="inactive" codeSystem="http://terminology.hl7.org/CodeSystem/condition-clinical" displayName="Inactive"/>
                            </xsl:with-param>
                        </xsl:call-template>
                        
                        <xsl:call-template name="code-to-CodeableConcept">
                            <xsl:with-param name="in" select="."/>
                        </xsl:call-template>
                    </clinicalStatus>
                </xsl:for-each>
                
                <xsl:for-each select="aandoening_ernst[@code]">
                    <severity>
                        <xsl:call-template name="code-to-CodeableConcept">
                            <xsl:with-param name="in" select="."/>
                        </xsl:call-template>
                    </severity>
                </xsl:for-each>
                
                <xsl:for-each select="diagnose[diagnose_naam/@code]">
                    <code>
                        <xsl:call-template name="code-to-CodeableConcept">
                            <xsl:with-param name="in" select="diagnose_naam"/>
                        </xsl:call-template>
                        
                        <xsl:for-each select="nadere_specificatie_diagnose_naam[@value]">
                            <text>
                                <xsl:call-template name="string-to-string">
                                    <xsl:with-param name="in" select="."/>
                                </xsl:call-template>
                            </text>
                        </xsl:for-each>
                    </code>
                </xsl:for-each>
                
                <xsl:call-template name="makeReference">
                    <xsl:with-param name="in" select="$subject"/>
                    <xsl:with-param name="wrapIn" select="'subject'"/>
                </xsl:call-template>
                
                <xsl:for-each select="aandoening_begin_datum_tijd[@value]">
                    <onsetDateTime>
                        <xsl:attribute name="value">
                            <xsl:call-template name="format2FHIRDate">
                                <xsl:with-param name="dateTime" select="xs:string(@value)"/>
                            </xsl:call-template>
                        </xsl:attribute>
                    </onsetDateTime>
                </xsl:for-each>
                
                <xsl:for-each select="$registrationDateTime[@value]">
                    <recordedDate>
                        <xsl:attribute name="value">
                            <xsl:call-template name="format2FHIRDate">
                                <xsl:with-param name="dateTime" select="xs:string(@value)"/>
                            </xsl:call-template>
                        </xsl:attribute>
                    </recordedDate>
                </xsl:for-each>
                
                <xsl:for-each select="$author">
                    <xsl:call-template name="makeReference">
                        <xsl:with-param name="in" select="."/>
                        <xsl:with-param name="wrapIn" select="'recorder'"/>
                        <xsl:with-param name="profile" select="$profileNameHealthProfessionalPractitionerRole"/>
                    </xsl:call-template>
                </xsl:for-each>
                
                <xsl:for-each select="diagnose_steller/*">
                    <xsl:call-template name="makeReference">
                        <xsl:with-param name="in" select="."/>
                        <xsl:with-param name="wrapIn" select="'asserter'"/>
                        <xsl:with-param name="profile" select="$profileNameHealthProfessionalPractitionerRole"/>
                    </xsl:call-template>
                </xsl:for-each>
            </Condition>
        </xsl:for-each>
    </xsl:template>
    
    <xd:doc>
        <xd:desc>Template to generate a display that can be shown when referencing this instance.</xd:desc>
    </xd:doc>
    <!--Since the Hypersensitivity and Reaction building blocks result in instances of both the cio-Hypersensitivity/Reaction and cio-Condition profiles, the template used for generating a display is only defined in the cio-Hypersensitivity and cio-Reaction stylesheets. Besides the 'profile' variable, there is no other aspect distinguishing both contexts, which means that defining two different templates for generating a display would result in one of them not being used whatsoever. -->
</xsl:stylesheet>
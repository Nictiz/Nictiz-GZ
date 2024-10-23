<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all" version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="urn:hl7-org:v3" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:local="#local.2024011810474536425960100" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:hl7="urn:hl7-org:v3" xmlns:util="urn:hl7:utilities" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:nf="http://www.nictiz.nl/functions" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <!-- ================================================================== -->
    <!--
        
            Created on: Oct 16, 2018
            Author: nictiz
            Mapping xslt for creating HL7 for CiO. To be imported or included from another xslt. Templates which are shared.
        
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

    <!-- ================================================================== -->

    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.8_20210701000000">
        <!-- Template voor weergave van concern act -->
        <xsl:param name="go" as="element()*"/>
        
        <act classCode="ACT" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.8"/>
            <code code="CONC" displayName="Concern" codeSystem="2.16.840.1.113883.5.6" codeSystemName="ActClass"/>
            <xsl:for-each select="$go">
                <entryRelationship typeCode="SUBJ">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.23_20231208161029"/>
                </entryRelationship>
            </xsl:for-each>
        </act>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.9_20210701000000">
        <!-- Template voor gegevens over de overgevoeligheid. -->
        <xsl:param name="in" as="element()?" select="."/>

        <xsl:for-each select="$in">

            <observation classCode="OBS" moodCode="EVN">
                <xsl:variable name="registrationData" select="../../bouwstenen/registratie_gegevens[@id = current()/registratie_gegevens/@value]"/>
                <xsl:variable name="identificationNumber" select="$registrationData/identificatienummer"/>
                <xsl:variable name="author" select="$registrationData/auteur"/>
                <xsl:variable name="registrationDateTime" select="$registrationData/registratie_datum_tijd"/>
                <xsl:variable name="informationSource" select="$registrationData/informatiebron"/>
                
                <xsl:variable name="relationHypersensitivityRegistrationData" select="../../bouwstenen/registratie_gegevens[identificatienummer/@value = current()/relatie_overgevoeligheid/identificatie/@value]"/>
                <xsl:variable name="relationHypersensitivityIdentificationNumber" select="$relationHypersensitivityRegistrationData/identificatienummer"/>
                
                <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.9"/>

                <xsl:for-each select="$identificationNumber[@value]">
                    <xsl:call-template name="makeIIid"/>
                </xsl:for-each>

                <code code="609433001" displayName="Overgevoeligheid (bevinding)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>

                <xsl:for-each select="aandoening_begin_datum_tijd[@value]">
                    <effectiveTime>
                        <xsl:attribute name="xsi:type" select="'IVL_TS'"/>
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="elemName">low</xsl:with-param>
                        </xsl:call-template>
                    </effectiveTime>
                </xsl:for-each>

                <xsl:for-each select="overgevoeligheid_categorie[@code]">
                    <xsl:call-template name="makeCDValue"/>
                </xsl:for-each>

                <xsl:for-each select="wijze_van_vaststellen[@code]">
                    <xsl:call-template name="makeCEValue">
                        <xsl:with-param name="elemName">methodCode</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                
                <xsl:for-each select="../../bouwstenen/zorgverlener[@id = $author/zorgverlener/@value]">
                    <author>
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.32_20210701000000">
                            <xsl:with-param name="theTime" select="$registrationDateTime[@value]"/>
                        </xsl:call-template>
                    </author>
                </xsl:for-each>
                
                <xsl:for-each select="../../bouwstenen/zorgverlener[@id = $informationSource/zorgverlener/@value] | ../../bouwstenen/contactpersoon[@id = $informationSource/contactpersoon/@value] | ../../patient[@id = $informationSource/patient/@value]">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.38_20240322123101"/>
                </xsl:for-each>
                
                <xsl:for-each select="agens/stof[@code]">
                    <participant typeCode="CSM">
                        <participantRole classCode="MANU">
                            <playingEntity classCode="MMAT">
                                <xsl:call-template name="makeCEValue">
                                    <xsl:with-param name="elemName">code</xsl:with-param>
                                </xsl:call-template>
                            </playingEntity>
                        </participantRole>
                    </participant>
                </xsl:for-each>
                
                <xsl:for-each select="aandoening_status_datum[@value]">
                    <entryRelationship typeCode="SUBJ" inversionInd="true">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.26_20231213123730"/>
                    </entryRelationship>
                </xsl:for-each>
                
                <xsl:for-each select="aandoening_aanwezigheid[@code]">
                    <entryRelationship typeCode="SUBJ" inversionInd="true">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.27_20231213132236"/>
                    </entryRelationship>
                </xsl:for-each>
                
                <xsl:for-each select="aandoening_ernst[@code]">
                    <entryRelationship typeCode="SUBJ" inversionInd="true">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.29_20231213140219"/>
                    </entryRelationship>
                </xsl:for-each>
                
                <xsl:for-each select="zekerheid_status[@code]">
                    <entryRelationship typeCode="SUBJ" inversionInd="true">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.28_20231213132839"/>
                    </entryRelationship>
                </xsl:for-each>
                
                <xsl:for-each select="verwacht_risico_bij_blootstelling[@code]">
                    <entryRelationship typeCode="SUBJ" inversionInd="true">
                        <observation classCode="OBS" moodCode="EVN">
                            <code code="340271000146105" displayName="Verwachte ernst van reactie (waarneembare entiteit)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                            <xsl:call-template name="makeCDValue"/>
                        </observation>
                    </entryRelationship>
                </xsl:for-each>
                
                <entryRelationship typeCode="SPRT" inversionInd="true">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.22_20231208104830"/>
                </entryRelationship>

                <xsl:for-each select="toelichting[@value]">
                    <entryRelationship typeCode="SUBJ" inversionInd="true">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.0.32_20210701000000"/>
                    </entryRelationship>
                </xsl:for-each>
                
                <xsl:for-each select="relatie_overgevoeligheid/identificatie[@value]">
                    <entryRelationship typeCode="REFR">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.17_20230419000000">
                            <xsl:with-param name="root" select="$relationHypersensitivityIdentificationNumber/@root"/>
                        </xsl:call-template>
                    </entryRelationship>
                </xsl:for-each>
            </observation>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.10_20210701000000">
        <!-- Template voor gegevens over de reactie. -->
        <xsl:param name="in" as="element()?" select="."/>

        <xsl:for-each select="$in">
            
            <observation classCode="OBS" moodCode="EVN">
                <xsl:variable name="registrationData" select="../../bouwstenen/registratie_gegevens[@id = current()/registratie_gegevens/@value]"/>
                <xsl:variable name="identificationNumber" select="$registrationData/identificatienummer"/>
                <xsl:variable name="author" select="$registrationData/auteur"/>
                <xsl:variable name="registrationDateTime" select="$registrationData/registratie_datum_tijd"/>
                <xsl:variable name="informationSource" select="$registrationData/informatiebron"/>
                
                <xsl:variable name="relationHypersensitivityRegistrationData" select="../../bouwstenen/registratie_gegevens[identificatienummer/@value = current()/relatie_overgevoeligheid/identificatie/@value]"/>
                <xsl:variable name="relationHypersensitivityIdentificationNumber" select="$relationHypersensitivityRegistrationData/identificatienummer"/>
                <xsl:variable name="relationReactionRegistrationData" select="../../bouwstenen/registratie_gegevens[identificatienummer/@value = current()/relatie_reactie/identificatie/@value]"/>
                <xsl:variable name="relationReactionIdentificationNumber" select="$relationReactionRegistrationData/identificatienummer"/>
                
                <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.10"/>
                
                <xsl:for-each select="$identificationNumber[@value]">
                    <xsl:call-template name="makeIIid"/>
                </xsl:for-each>
                
                <code code="281647001" displayName="Ongewenste reactie (aandoening)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                
                <effectiveTime>
                    <xsl:attribute name="xsi:type" select="'IVL_TS'"/>
                    <xsl:for-each select="aandoening_begin_datum_tijd[@value]">
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="elemName">low</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <xsl:for-each select="tijdsduur_reactie[@value]">
                        <xsl:call-template name="makePQValue">
                            <xsl:with-param name="elemName">width</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </effectiveTime>
                
                <xsl:for-each select="reactie_verschijnsel[@value]">
                    <xsl:call-template name="makeSTValue"/>
                </xsl:for-each>
                
                <xsl:for-each select="wijze_van_vaststellen[@code]">
                    <xsl:call-template name="makeCEValue">
                        <xsl:with-param name="elemName">methodCode</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                
                <xsl:for-each select="../../bouwstenen/zorgverlener[@id = $author/zorgverlener/@value]">
                    <author>
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.32_20210701000000">
                            <xsl:with-param name="theTime" select="$registrationDateTime[@value]"/>
                        </xsl:call-template>
                    </author>
                </xsl:for-each>
                
                <xsl:for-each select="../../bouwstenen/zorgverlener[@id = $informationSource/zorgverlener/@value] | ../../bouwstenen/contactpersoon[@id = $informationSource/contactpersoon/@value] | ../../patient[@id = $informationSource/patient/@value]">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.38_20240322123101"/>
                </xsl:for-each>
                
                <xsl:for-each select="veroorzaker/veroorzakende_stof[@code]">
                    <participant typeCode="CSM">
                        <participantRole classCode="MANU">
                            <playingEntity classCode="MMAT">
                                <xsl:call-template name="makeCEValue">
                                    <xsl:with-param name="elemName">code</xsl:with-param>
                                </xsl:call-template>
                            </playingEntity>
                        </participantRole>
                    </participant>
                </xsl:for-each>
                
                <xsl:for-each select="aandoening_status_datum[@value]">
                    <entryRelationship typeCode="SUBJ" inversionInd="true">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.26_20231213123730"/>
                    </entryRelationship>
                </xsl:for-each>
                
                <xsl:for-each select="aandoening_aanwezigheid[@code]">
                    <entryRelationship typeCode="SUBJ" inversionInd="true">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.27_20231213132236"/>
                    </entryRelationship>
                </xsl:for-each>
                
                <xsl:for-each select="aandoening_ernst[@code]">
                    <entryRelationship typeCode="SUBJ" inversionInd="true">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.29_20231213140219"/>
                    </entryRelationship>
                </xsl:for-each>
                
                <xsl:for-each select="zekerheid_status[@code]">
                    <entryRelationship typeCode="SUBJ" inversionInd="true">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.28_20231213132839"/>
                    </entryRelationship>
                </xsl:for-each>
                
                <xsl:if test="blootstelling_datum_tijd[@value] or wijze_van_blootstelling[@code]">
                    <entryRelationship typeCode="CAUS" inversionInd="true">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.12_20211104153007"/>
                    </entryRelationship>
                </xsl:if>
                
                <xsl:for-each select="latentietijd_reactie[@value]">
                    <entryRelationship typeCode="SUBJ" inversionInd="true">
                        <observation classCode="OBS" moodCode="EVN">
                            <code code="350371000146103" displayName="Tijdsinterval tussen datum van blootstelling en datum van eerste optreden van symptomen (waarneembare entiteit)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                            <xsl:call-template name="makePQValue"/>
                        </observation>
                    </entryRelationship>
                </xsl:for-each>
                
                <entryRelationship typeCode="SPRT" inversionInd="true">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.22_20231208104830"/>
                </entryRelationship>
                
                <xsl:for-each select="toelichting[@value]">
                    <entryRelationship typeCode="SUBJ" inversionInd="true">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.0.32_20210701000000"/>
                    </entryRelationship>
                </xsl:for-each>
                
                <xsl:for-each select="relatie_overgevoeligheid/identificatie[@value]">
                    <entryRelationship typeCode="REFR">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.17_20230419000000">
                            <xsl:with-param name="root" select="$relationHypersensitivityIdentificationNumber/@root"/>
                        </xsl:call-template>
                    </entryRelationship>
                </xsl:for-each>
                
                <xsl:for-each select="relatie_reactie/identificatie[@value]">
                    <entryRelationship typeCode="REFR">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.21_20231206132554">
                            <xsl:with-param name="root" select="$relationReactionIdentificationNumber/@root"/>
                        </xsl:call-template>
                    </entryRelationship>
                </xsl:for-each>
            </observation>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.12_20211104153007">
        <!-- Template voor blootstelling aan een stof die een reactie heeft veroorzaakt. -->
        <xsl:param name="in" as="element()?" select="."/>

        <observation classCode="OBS" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.12"/>
            <code code="711455000" displayName="Blootstelling aan drug of geneesmiddel (gebeurtenis)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
            
            <xsl:for-each select="blootstelling_datum_tijd[@value]">
                <effectiveTime>
                    <xsl:attribute name="xsi:type" select="'IVL_TS'"/>
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName">low</xsl:with-param>
                    </xsl:call-template>
                </effectiveTime>
            </xsl:for-each>
            
            <xsl:for-each select="wijze_van_blootstelling[@code]">
                <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <observation classCode="OBS" moodCode="EVN">
                        <code code="410675002" displayName="Toedieningsweg (attribuut)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <xsl:call-template name="makeCDValue"/>
                    </observation>
                </entryRelationship>
            </xsl:for-each>
        </observation>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.14_20230419000000">
        <!-- Template voor weergave van concern act. -->
        <xsl:param name="mci" as="element()*"/>
        
        <act classCode="ACT" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.14"/>
            <code code="CONC" displayName="Concern" codeSystem="2.16.840.1.113883.5.6" codeSystemName="ActClass"/>
            <xsl:for-each select="$mci">
                <entryRelationship typeCode="SUBJ">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.19_20231205105739"/>
                </entryRelationship>
            </xsl:for-each>
        </act>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.16_20230419000000">
        <!-- Template voor medicatie contraindicatie identificatie. -->
        <xsl:param name="in" as="element()?" select="."/>
        <xsl:param name="root"/>

        <observation classCode="OBS" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.16"/>
            <xsl:call-template name="makeIIid">
                <xsl:with-param name="root" select="$root"/>
            </xsl:call-template>
            <code code="350241000146102" displayName="Potentiële contra-indicatie voor geneesmiddel (bevinding)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
        </observation>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.17_20230419000000">
        <!-- Template voor overgevoeligheid identificatie. -->
        <xsl:param name="in" as="element()?" select="."/>
        <xsl:param name="root"/>
        
        <observation classCode="OBS" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.17"/>
            <xsl:call-template name="makeIIid">
                <xsl:with-param name="root" select="$root"/>
            </xsl:call-template>
            <code code="609433001" displayName="Overgevoeligheid (bevinding)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
        </observation>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.19_20231205105739">
        <!-- Template voor gegevens over de medicatie contra-indicatie. -->
        <xsl:param name="in" as="element()?" select="."/>
        
        <observation classCode="OBS" moodCode="EVN">
            <xsl:variable name="registrationData" select="../../bouwstenen/registratie_gegevens[@id = current()/registratie_gegevens/@value]"/>
            <xsl:variable name="identificationNumber" select="$registrationData/identificatienummer"/>
            <xsl:variable name="author" select="$registrationData/auteur"/>
            <xsl:variable name="registrationDateTime" select="$registrationData/registratie_datum_tijd"/>
            <xsl:variable name="informationSource" select="$registrationData/informatiebron"/>
            
            <xsl:variable name="relationAlertRegistrationData" select="../../bouwstenen/registratie_gegevens[identificatienummer/@value = current()/relatie_alert/identificatie/@value]"/>
            <xsl:variable name="relationAlertIdentificationNumber" select="$relationAlertRegistrationData/identificatienummer"/>
            
            <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.19"/>
            
            <xsl:for-each select="$identificationNumber[@value]">
                <xsl:call-template name="makeIIid"/>
            </xsl:for-each>
            
            <xsl:for-each select="alert_type[@code]">
                <xsl:call-template name="makeCDValue">
                    <xsl:with-param name="elemName">code</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            
            <xsl:if test="(begin_datum_tijd | eind_datum_tijd)[@value]">
                <effectiveTime>
                    <xsl:attribute name="xsi:type" select="'IVL_TS'"/>
                    <xsl:for-each select="begin_datum_tijd[@value]">
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="elemName">low</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <xsl:for-each select="eind_datum_tijd[@value]">
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="elemName">high</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </effectiveTime>
            </xsl:if>
            
            <xsl:for-each select="../../bouwstenen/zorgverlener[@id = current()/vaststeller/zorgverlener/@value]">
                <performer>
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.43_20210701000000"/>
                </performer>
            </xsl:for-each>
            
            <xsl:for-each select="../../bouwstenen/zorgverlener[@id = $author/zorgverlener/@value]">
                <author>
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.32_20210701000000">
                        <xsl:with-param name="theTime" select="$registrationDateTime[@value]"/>
                    </xsl:call-template>
                </author>
            </xsl:for-each>
            
            <xsl:for-each select="../../bouwstenen/zorgverlener[@id = $informationSource/zorgverlener/@value] | ../../bouwstenen/contactpersoon[@id = $informationSource/contactpersoon/@value] | ../../patient[@id = $informationSource/patient/@value]">
                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.38_20240322123101"/>
            </xsl:for-each>
            
            <xsl:for-each select="alert_naam[@code]">
                <entryRelationship typeCode="REFR" inversionInd="true">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.20_20231205145845"/>
                </entryRelationship>
            </xsl:for-each>
            
            <xsl:for-each select="reden_beeindiging_alert[@value]">
                <entryRelationship typeCode="RSON">
                    <observation classCode="OBS" moodCode="EVN">
                        <code code="419617009" displayName="Reden voor annulering van verrichting (waarneembare entiteit)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <xsl:call-template name="makeText"/>
                    </observation>
                </entryRelationship>
            </xsl:for-each>
            
            <xsl:for-each select="toelichting[@value]">
                <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.0.32_20210701000000"/>
                </entryRelationship>
            </xsl:for-each>
            
            <xsl:for-each select="relatie_alert/identificatie[@value]">
                <entryRelationship typeCode="REFR">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.16_20230419000000">
                        <xsl:with-param name="root" select="$relationAlertIdentificationNumber/@root"/>
                    </xsl:call-template>
                </entryRelationship>
            </xsl:for-each>
        </observation>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.20_20231205145845">
        <!-- Template voor medicatie contraindicatie naam. -->
        <xsl:param name="in" as="element()?" select="."/>
        
        <xsl:for-each select="$in">
            <observation classCode="OBS" moodCode="EVN">
                <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.20"/>
                <code code="44944-7" displayName="Other alert" codeSystem="{$oidLOINC}" codeSystemName="{$oidMap[@oid=$oidLOINC]/@displayName}"/>
                <xsl:call-template name="makeCDValue"/>
            </observation>
        </xsl:for-each>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.21_20231206132554">
        <!-- Template voor reactie identificatie. -->
        <xsl:param name="in" as="element()?" select="."/>
        <xsl:param name="root"/>
        
        <observation classCode="OBS" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.21"/>
            <xsl:call-template name="makeIIid">
                <xsl:with-param name="root" select="$root"/>
            </xsl:call-template>
            <code code="281647001" displayName="Ongewenste reactie (aandoening)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
        </observation>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.22_20231208104830">
        <!-- Template voor diagnose. -->
        <xsl:param name="in" as="element()?" select="."/>
        
        <xsl:for-each select="$in">
            <observation classCode="OBS" moodCode="EVN">
                <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.22"/>
                <code code="439401001" displayName="Diagnose (waarneembare entiteit)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                
                <xsl:for-each select="diagnostisch_inzicht_datum[@value]">
                    <effectiveTime>
                        <xsl:attribute name="xsi:type" select="'IVL_TS'"/>
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="elemName">low</xsl:with-param>
                        </xsl:call-template>
                    </effectiveTime>
                </xsl:for-each>
                
                <xsl:for-each select="diagnose/diagnose_naam[@code]">
                    <xsl:call-template name="makeCDValue"/>
                </xsl:for-each>
                
                <xsl:for-each select="../../bouwstenen/zorgverlener[@id = current()/diagnose_steller/zorgverlener/@value]">
                    <performer>
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.43_20210701000000"/>
                    </performer>
                </xsl:for-each>
                
                <xsl:for-each select="diagnose/nadere_specificatie_diagnose_naam[@value]">
                    <entryRelationship typeCode="SUBJ" inversionInd="true">
                        <observation classCode="OBS" moodCode="EVN">
                            <code code="330341000146107" displayName="Toelichting op diagnose (waarneembare entiteit)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                            <xsl:call-template name="makeSTValue"/>
                        </observation>
                    </entryRelationship>
                </xsl:for-each>
            </observation>
        </xsl:for-each>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.23_20231208161029">
        <!-- Template voor gegevens over het bewakingsbesluit. -->
        <xsl:param name="in" as="element()?" select="."/>
        
        <observation classCode="OBS" moodCode="EVN">
            <xsl:variable name="registrationData" select="../../bouwstenen/registratie_gegevens[@id = current()/registratie_gegevens/@value]"/>
            <xsl:variable name="identificationNumber" select="$registrationData/identificatienummer"/>
            <xsl:variable name="author" select="$registrationData/auteur"/>
            <xsl:variable name="registrationDateTime" select="$registrationData/registratie_datum_tijd"/>
            <xsl:variable name="informationSource" select="$registrationData/informatiebron"/>
            
            <xsl:variable name="relationSurveillanceDecisionRegistrationData" select="../../bouwstenen/registratie_gegevens[identificatienummer/@value = current()/relatie_bewaking_besluit/identificatie/@value]"/>
            <xsl:variable name="relationSurveillanceDecisionIdentificationNumber" select="$relationSurveillanceDecisionRegistrationData/identificatienummer"/>
            <xsl:variable name="relationSurveillanceDecision" select="../../geneesmiddelovergevoeligheid/bewaking_besluit[registratie_gegevens/@value = $relationSurveillanceDecisionRegistrationData/@id]"/>
            
            <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.23"/>
            
            <xsl:for-each select="$identificationNumber[@value]">
                <xsl:call-template name="makeIIid"/>
            </xsl:for-each>
            
            <code code="225419007" displayName="Surveillance (regime/therapie)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
            
            <statusCode>
                <xsl:choose>
                    <!-- When DecisionType is SNOMED 385652002: _active_  -->
                    <xsl:when test="besluit_type/(@codeSystem = $oidSNOMEDCT and @code = '385652002')">
                        <xsl:attribute name="code" select="'active'"/>
                    </xsl:when>
                    
                    <!--When DecisionType is SNOMED 410546004: _completed_  -->
                    <xsl:when test="besluit_type/(@codeSystem = $oidSNOMEDCT and @code = '410546004')">
                        <xsl:attribute name="code" select="'completed'"/>
                    </xsl:when>
                    
                    <!-- If no status can be derived from the DecisionType, the SurveillanceDecision is assumed to be active.-->
                    <xsl:otherwise>
                        <xsl:attribute name="code" select="'active'"/>
                    </xsl:otherwise>
                </xsl:choose>
            </statusCode>
            
            <effectiveTime>
                <xsl:attribute name="xsi:type" select="'IVL_TS'"/>
                <xsl:choose>
                    <xsl:when test="besluit_type/(@codeSystem = $oidSNOMEDCT and @code = '385652002')">
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="elemName">low</xsl:with-param>
                            <xsl:with-param name="inputValue" select="besluit_ingangs_datum_tijd/@value"/>
                        </xsl:call-template>
                    </xsl:when>
                    
                    <xsl:when test="besluit_type/(@codeSystem = $oidSNOMEDCT and @code = '410546004')">
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="elemName">low</xsl:with-param>
                            <xsl:with-param name="inputValue" select="$relationSurveillanceDecision/besluit_ingangs_datum_tijd/@value"/>
                        </xsl:call-template>
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="elemName">high</xsl:with-param>
                            <xsl:with-param name="inputValue" select="besluit_ingangs_datum_tijd/@value"/>
                        </xsl:call-template>
                    </xsl:when>
                </xsl:choose>
            </effectiveTime>
            
            <xsl:for-each select="../../bouwstenen/zorgverlener[@id = current()/beslisser/zorgverlener/@value]">
                <performer>
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.43_20210701000000">
                        <xsl:with-param name="theTime" select="$in/besluit_datum_tijd[@value]"/>
                    </xsl:call-template>
                </performer>
            </xsl:for-each>
            
            <xsl:for-each select="../../bouwstenen/zorgverlener[@id = $author/zorgverlener/@value]">
                <author>
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.32_20210701000000">
                        <xsl:with-param name="theTime" select="$registrationDateTime[@value]"/>
                    </xsl:call-template>
                </author>
            </xsl:for-each>
            
            <xsl:for-each select="../../bouwstenen/zorgverlener[@id = $informationSource/zorgverlener/@value] | ../../bouwstenen/contactpersoon[@id = $informationSource/contactpersoon/@value] | ../../patient[@id = $informationSource/patient/@value]">
                <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.38_20240322123101"/>
            </xsl:for-each>
            
            <xsl:for-each select="te_bewaken_stof/onveilige_stof[@code]">
                <participant typeCode="CSM">
                    <participantRole classCode="MANU">
                        <playingEntity classCode="MMAT">
                            <xsl:call-template name="makeCEValue">
                                <xsl:with-param name="elemName">code</xsl:with-param>
                            </xsl:call-template>
                        </playingEntity>
                    </participantRole>
                </participant>
            </xsl:for-each>
            
            <xsl:for-each select="te_bewaken_stof/veilig_binnen_onveilige_groep[@code]">
                <entryRelationship typeCode="COMP">
                    <observation classCode="OBS" moodCode="EVN">
                        <code code="350211000146103" displayName="Substantie veilig voor patiënt (waarneembare entiteit)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                        <xsl:call-template name="makeCDValue"/>
                    </observation>
                </entryRelationship>
            </xsl:for-each>
            
            <xsl:for-each select="../overgevoeligheid[@id = current()/besluit_grond/overgevoeligheid/@value]">
                <entryRelationship typeCode="RSON">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.9_20210701000000"/>
                </entryRelationship>
            </xsl:for-each>
            
            <xsl:for-each select="../reactie[@id = current()/besluit_grond/reactie/@value]">
                <entryRelationship typeCode="RSON">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.10_20210701000000"/>
                </entryRelationship>
            </xsl:for-each>

            <xsl:for-each select="toelichting[@value]">
                <entryRelationship typeCode="SUBJ" inversionInd="true">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.0.32_20210701000000"/>
                </entryRelationship>
            </xsl:for-each>
            
            <xsl:for-each select="relatie_bewaking_besluit/identificatie[@value]">
                <entryRelationship typeCode="REFR">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.24_20231208165528">
                        <xsl:with-param name="root" select="$relationSurveillanceDecisionIdentificationNumber/@root"/>
                    </xsl:call-template>
                </entryRelationship>
            </xsl:for-each>
        </observation>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.24_20231208165528">
        <!-- Template voor bewakingsbesluit identificatie. -->
        <xsl:param name="in" as="element()?" select="."/>
        <xsl:param name="root"/>
        
        <observation classCode="OBS" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.24"/>
            <xsl:call-template name="makeIIid">
                <xsl:with-param name="root" select="$root"/>
            </xsl:call-template>
            <code code="225419007" displayName="Surveillance (regime/therapie)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
        </observation>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.26_20231213123730">
        <!-- Template voor aandoeningsstatusdatum. -->
        <xsl:param name="in" as="element()?" select="."/>
        
        <xsl:for-each select="$in">
            <observation classCode="OBS" moodCode="EVN">
                <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.26"/>
                <code code="350351000146106" displayName="Datum waarop gezondheidsstatus is gewijzigd (waarneembare entiteit)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                <xsl:call-template name="makeTSValue">
                    <xsl:with-param name="xsiType" select="'TS'"/>
                </xsl:call-template>
            </observation>
        </xsl:for-each>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.27_20231213132236">
        <!-- Template voor de aanwezigheid van de aandoening. -->
        <xsl:param name="in" as="element()?" select="."/>
        
        <xsl:for-each select="$in">
            <observation classCode="OBS" moodCode="EVN">
                <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.27"/>
                <code code="33999-4" displayName="Status" codeSystem="{$oidLOINC}" codeSystemName="{$oidMap[@oid=$oidLOINC]/@displayName}"/>
                <xsl:call-template name="makeCDValue"/>
            </observation>
        </xsl:for-each>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.28_20231213132839">
        <!-- Template voor de zekerheidsstatus van een overgevoeligheid of reactie. -->
        <xsl:param name="in" as="element()?" select="."/>
        
        <xsl:for-each select="$in">
            <observation classCode="OBS" moodCode="EVN">
                <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.28"/>
                <code code="408729009" displayName="Context van bevinding (attribuut)" codeSystem="{$oidSNOMEDCT}" codeSystemName="{$oidMap[@oid=$oidSNOMEDCT]/@displayName}"/>
                <xsl:call-template name="makeCDValue"/>
            </observation>
        </xsl:for-each>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.26.10.29_20231213140219">
        <!-- Template voor de ernst van de aandoening. -->
        <xsl:param name="in" as="element()?" select="."/>
        
        <xsl:for-each select="$in">
            <observation classCode="OBS" moodCode="EVN">
                <templateId root="2.16.840.1.113883.2.4.3.11.60.26.10.29"/>
                <code code="SEV" displayName="Severity Observation" codeSystem="2.16.840.1.113883.5.4" codeSystemName="Act Code"/>
                <xsl:call-template name="makeCDValue"/>
            </observation>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>

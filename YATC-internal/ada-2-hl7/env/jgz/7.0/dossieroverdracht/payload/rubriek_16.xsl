<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" exclude-result-prefixes="xs" version="2.0">

    <!-- A_NeonateData [universal] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.118">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <neonateData xmlns="urn:hl7-org:v3" classCode="CATEGORY" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.118"/>
            <code code="R016" codeSystem="2.16.840.1.113883.2.4.4.40.391">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'R016'][@codeSystem = '2.16.840.1.113883.2.4.4.40.391']/@displayName"/>
            </code>
            <xsl:if test="groep_g109_periode_opname_kinderafdeling | couveuse">
                <component1 typeCode="COMP">
                    <inPatientEncounter classCode="ENC" moodCode="EVN">
                        <code code="IMP" codeSystem="2.16.840.1.113883.5.4"/>
                        <xsl:for-each select="groep_g109_periode_opname_kinderafdeling">
                            <effectiveTime xsi:type="IVL_TS">
                                <!-- Item(s) :: startdatum_opname_kinderafdeling-->
                                <xsl:for-each select="startdatum_opname_kinderafdeling">
                                    <xsl:call-template name="makeTSValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">low</xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                                <!-- Item(s) :: einddatum_opname_kinderafdeling-->
                                <xsl:for-each select="einddatum_opname_kinderafdeling">
                                    <xsl:call-template name="makeTSValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">high</xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                            </effectiveTime>
                        </xsl:for-each>
                        <xsl:for-each select="couveuse">
                            <location typeCode="LOC">
                                <serviceDeliveryLocation typeCode="SDLOC">
                                    <code code="PEDICU" codeSystem="2.16.840.1.113883.5.111"/>
                                    <locationOf typeCode="LOC">
                                        <incubatorAccommodation classCode="ACCM" moodCode="EVN" negationInd="">
                                            <code code="144" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '144'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                            </code>
                                        </incubatorAccommodation>
                                    </locationOf>
                                </serviceDeliveryLocation>
                            </location>
                        </xsl:for-each>
                    </inPatientEncounter>
                </component1>
            </xsl:if>
            <!-- Item(s) :: vitamine_k_toegediendvoorgeschreven-->
            <xsl:variable name="elem137" as="element()*">
                <xsl:for-each select="vitamine_k_toegediendvoorgeschreven">
                    <xsl:call-template name="makeBLValue_From_W0141_JaNeeOnbekend"/>
                </xsl:for-each>
            </xsl:variable>
            <xsl:for-each select="$elem137[@value]">
                <component2 typeCode="COMP">
                    <substanceAdministrationEvent classCode="SBADM" moodCode="EVN" negationInd="{@value = 'false'}">
                        <consumable typeCode="CSM">
                            <administerableMaterial classCode="ADMM">
                                <administrableMaterialKind classCode="MAT" determinerCode="KIND">
                                    <code code="137" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                        <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '137'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                    </code>
                                </administrableMaterialKind>
                            </administerableMaterial>
                        </consumable>
                    </substanceAdministrationEvent>
                </component2>
            </xsl:for-each>
            <!-- Item(s) :: gammaglobuline_toegediend_tegen_hepatitis_b-->
            <xsl:variable name="elem138" as="element()*">
                <xsl:for-each select="gammaglobuline_toegediend_tegen_hepatitis_b">
                    <xsl:call-template name="makeBLValue_From_W0141_JaNeeOnbekend"/>
                </xsl:for-each>
            </xsl:variable>
            <xsl:for-each select="$elem138[@value]">
                <component2 typeCode="COMP">
                    <substanceAdministrationEvent classCode="SBADM" moodCode="EVN" negationInd="{@value = 'false'}">
                        <consumable typeCode="CSM">
                            <administerableMaterial classCode="ADMM">
                                <administrableMaterialKind classCode="MAT" determinerCode="KIND">
                                    <code code="138" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                        <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '138'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                    </code>
                                </administrableMaterialKind>
                            </administerableMaterial>
                        </consumable>
                    </substanceAdministrationEvent>
                </component2>
            </xsl:for-each>
            <!-- Item(s) :: vaccinatie_tegen_hepatitis_b-->
            <xsl:variable name="elem629" as="element()*">
                <xsl:for-each select="vaccinatie_tegen_hepatitis_b">
                    <xsl:call-template name="makeBLValue_From_W0141_JaNeeOnbekend"/>
                </xsl:for-each>
            </xsl:variable>
            <xsl:for-each select="$elem629[@value]">
                <component2 typeCode="COMP">
                    <substanceAdministrationEvent classCode="SBADM" moodCode="EVN" negationInd="{@value = 'false'}">
                        <consumable typeCode="CSM">
                            <administerableMaterial classCode="ADMM">
                                <administrableMaterialKind classCode="MAT" determinerCode="KIND">
                                    <code code="629" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                        <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '629'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                    </code>
                                </administrableMaterialKind>
                            </administerableMaterial>
                        </consumable>
                    </substanceAdministrationEvent>
                </component2>
            </xsl:for-each>
            <!-- Item(s) :: meerling-->
            <xsl:for-each select="meerling">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="108" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '108'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeBLValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: volgnummer_bij_meerling-->
            <xsl:for-each select="volgnummer_bij_meerling">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="109" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '109'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeINTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: geboortegewicht-->
            <xsl:for-each select="geboortegewicht">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="8339-4" codeSystem="2.16.840.1.113883.6.1"/>
                        <xsl:call-template name="makePQValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                            <xsl:with-param name="unit">g</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: laagste_gewicht-->
            <xsl:for-each select="laagste_gewicht">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="111" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '111'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makePQValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                            <xsl:with-param name="unit">g</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: geboortelengte-->
            <xsl:for-each select="geboortelengte">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="112" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '112'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makePQValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                            <xsl:with-param name="unit">mm</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: hoofdomtrek_bij_geboorte-->
            <xsl:for-each select="hoofdomtrek_bij_geboorte">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="113" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '113'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makePQValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                            <xsl:with-param name="unit">mm</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: prematuurserotien-->
            <xsl:for-each select="prematuurserotien">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="114" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '114'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeBLValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: dysmatuur-->
            <xsl:for-each select="dysmatuur">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="115" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '115'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeBLValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: apgar_score_na_1_min-->
            <xsl:for-each select="apgar_score_na_1_min">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="9272-6" codeSystem="2.16.840.1.113883.6.1" displayName="1 minute Apgar Score"/>
                        <xsl:call-template name="makeINTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: apgar_score_na_5_min-->
            <xsl:for-each select="apgar_score_na_5_min">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="9274-2" codeSystem="2.16.840.1.113883.6.1" displayName="5 minute Apgar Score"/>
                        <xsl:call-template name="makeINTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: toelichting_apgar_score-->
            <xsl:for-each select="toelichting_apgar_score">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="626" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '626'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: aangeboren_afwijkingen-->
            <xsl:for-each select="aangeboren_afwijkingen">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="131" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '131'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: bijzonderheden_temperatuurverloop-->
            <xsl:for-each select="bijzonderheden_temperatuurverloop">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="133" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '133'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: bijzonderheden_ademhaling-->
            <xsl:for-each select="bijzonderheden_ademhaling">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="134" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '134'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: bijzonderheden_drinken-->
            <xsl:for-each select="bijzonderheden_drinken">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="135" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '135'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: bijzonderheden_pasgeborene_en_eerste_levensweken-->
            <xsl:for-each select="bijzonderheden_pasgeborene_en_eerste_levensweken">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="145" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '145'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: melkvoeding_op_geboortedag melkvoeding_op_8e_dag-->
            <xsl:for-each select="melkvoeding_op_geboortedag">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="747" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '747'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: melkvoeding_op_geboortedag melkvoeding_op_8e_dag-->
            <xsl:for-each select="melkvoeding_op_8e_dag">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="1340" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1340'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <xsl:for-each select="groep_g108_periode_geel_zien">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="139" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '139'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <value xsi:type="IVL_TS">
                            <xsl:if test="startdatum_geel_zien">
                                <!-- Item(s) :: startdatum_geel_zien-->
                                <xsl:for-each select="startdatum_geel_zien">
                                    <xsl:call-template name="makeTSValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">low</xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                            </xsl:if>
                            <xsl:if test="einddatum_geel_zien">
                                <!-- Item(s) :: einddatum_geel_zien-->
                                <xsl:for-each select="einddatum_geel_zien">
                                    <xsl:call-template name="makeTSValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">high</xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                            </xsl:if>
                        </value>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: oorzaak_geel_zien-->
            <xsl:for-each select="oorzaak_geel_zien">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="140" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '140'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
            <!-- Item(s) :: therapie-->
            <xsl:for-each select="therapie">
                <component3 typeCode="COMP">
                    <neonateObservations classCode="OBS" moodCode="EVN">
                        <code code="142" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '142'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </neonateObservations>
                </component3>
            </xsl:for-each>
        </neonateData>
    </xsl:template>

</xsl:stylesheet>

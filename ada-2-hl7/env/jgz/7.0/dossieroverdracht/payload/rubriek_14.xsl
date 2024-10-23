<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <!-- A_Zwangerschap [universal] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.121_20120801000000">
        <pregnancyCondition xmlns="urn:hl7-org:v3" classCode="COND" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.121"/>
            <code code="R014" codeSystem="2.16.840.1.113883.2.4.4.40.391">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'R014'][@codeSystem = '2.16.840.1.113883.2.4.4.40.391']/@displayName"/>
            </code>
            <subject typeCode="SBJ">
                <personalRelationship classCode="PRS">
                    <code code="NMTH" codeSystem="2.16.840.1.113883.5.111" displayName="natural mother"/>
                    <relationshipHolder classCode="PSN" determinerCode="INSTANCE" nullFlavor="NI"/>
                </personalRelationship>
            </subject>
            <xsl:for-each select="r015_bevalling">
                <outcome typeCode="OUTC">
                    <delivery classCode="PROC" moodCode="EVN">
                        <code code="R015" codeSystem="2.16.840.1.113883.2.4.4.40.391">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'R015'][@codeSystem = '2.16.840.1.113883.2.4.4.40.391']/@displayName"/>
                        </code>
                        <!-- Item(s) :: duur_bevalling-->
                        <xsl:for-each select="duur_bevalling">
                            <component typeCode="COMP">
                                <deliveryObservation classCode="OBS" moodCode="EVN">
                                    <code code="97" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                        <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '97'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                    </code>
                                    <xsl:call-template name="makePQValue">
                                        <xsl:with-param name="elemName">value</xsl:with-param>
                                        <xsl:with-param name="unit">min</xsl:with-param>
                                    </xsl:call-template>
                                </deliveryObservation>
                            </component>
                        </xsl:for-each>
                        <!-- Item(s) :: duur_uitdrijving-->
                        <xsl:for-each select="duur_uitdrijving">
                            <component typeCode="COMP">
                                <deliveryObservation classCode="OBS" moodCode="EVN">
                                    <code code="98" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                        <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '98'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                    </code>
                                    <xsl:call-template name="makePQValue">
                                        <xsl:with-param name="elemName">value</xsl:with-param>
                                        <xsl:with-param name="unit">min</xsl:with-param>
                                    </xsl:call-template>
                                </deliveryObservation>
                            </component>
                        </xsl:for-each>
                        <!-- Item(s) :: ligging_bij_geboorte-->
                        <xsl:for-each select="ligging_bij_geboorte">
                            <component typeCode="COMP">
                                <deliveryObservation classCode="OBS" moodCode="EVN">
                                    <code code="100" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                        <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '100'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                    </code>
                                    <xsl:call-template name="makeCVValue">
                                        <xsl:with-param name="elemName">value</xsl:with-param>
                                    </xsl:call-template>
                                </deliveryObservation>
                            </component>
                        </xsl:for-each>
                        <!-- Item(s) :: kleur_vruchtwater-->
                        <xsl:for-each select="kleur_vruchtwater">
                            <component typeCode="COMP">
                                <deliveryObservation classCode="OBS" moodCode="EVN">
                                    <code code="38386-9" codeSystem="2.16.840.1.113883.6.1" displayName="Color of Amniotic fluid"/>
                                    <xsl:call-template name="makeCVValue">
                                        <xsl:with-param name="elemName">value</xsl:with-param>
                                    </xsl:call-template>
                                </deliveryObservation>
                            </component>
                        </xsl:for-each>
                        <!-- Item(s) :: stuitligging_laatste_trimester-->
                        <xsl:for-each select="stuitligging_laatste_trimester">
                            <component typeCode="COMP">
                                <deliveryObservation classCode="OBS" moodCode="EVN">
                                    <code code="1323" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                        <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1323'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                    </code>
                                    <xsl:call-template name="makeBLValue">
                                        <xsl:with-param name="elemName">value</xsl:with-param>
                                    </xsl:call-template>
                                </deliveryObservation>
                            </component>
                        </xsl:for-each>
                        <!-- Item(s) :: _3_navelvaten-->
                        <xsl:for-each select="_3_navelvaten">
                            <component typeCode="COMP">
                                <deliveryObservation classCode="OBS" moodCode="EVN">
                                    <code code="105" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                        <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '105'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                    </code>
                                    <xsl:call-template name="makeBLValue">
                                        <xsl:with-param name="elemName">value</xsl:with-param>
                                    </xsl:call-template>
                                </deliveryObservation>
                            </component>
                        </xsl:for-each>
                        <!-- Item(s) :: wijze_van_geboorte-->
                        <xsl:for-each select="wijze_van_geboorte">
                            <component typeCode="COMP">
                                <deliveryObservation classCode="OBS" moodCode="EVN">
                                    <code code="1324" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                        <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1324'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                    </code>
                                    <xsl:call-template name="makeSTValue">
                                        <xsl:with-param name="elemName">value</xsl:with-param>
                                    </xsl:call-template>
                                </deliveryObservation>
                            </component>
                        </xsl:for-each>
                        <!-- Item(s) :: bijzonderheden_bevalling-->
                        <xsl:for-each select="bijzonderheden_bevalling">
                            <component typeCode="COMP">
                                <deliveryObservation classCode="OBS" moodCode="EVN">
                                    <code code="106" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                        <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '106'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                    </code>
                                    <xsl:call-template name="makeSTValue">
                                        <xsl:with-param name="elemName">value</xsl:with-param>
                                    </xsl:call-template>
                                </deliveryObservation>
                            </component>
                        </xsl:for-each>
                        <!-- Item(s) :: bijzonderheden_kraamperiodekraamverzorging-->
                        <xsl:for-each select="bijzonderheden_kraamperiodekraamverzorging">
                            <component typeCode="COMP">
                                <deliveryObservation classCode="OBS" moodCode="EVN">
                                    <code code="107" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                        <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '107'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                    </code>
                                    <xsl:call-template name="makeSTValue">
                                        <xsl:with-param name="elemName">value</xsl:with-param>
                                    </xsl:call-template>
                                </deliveryObservation>
                            </component>
                        </xsl:for-each>
                    </delivery>
                </outcome>
            </xsl:for-each>
            <xsl:for-each select="r014_zwangerschap">
                <!-- Item(s) :: zwangerschapsduur-->
                <xsl:for-each select="zwangerschapsduur">
                    <component1 typeCode="COMP">
                        <pregnancyObservations classCode="OBS" moodCode="EVN">
                            <code code="82" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '82'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                            </code>
                            <xsl:call-template name="makePQValue">
                                <xsl:with-param name="elemName">value</xsl:with-param>
                                <xsl:with-param name="unit">d</xsl:with-param>
                            </xsl:call-template>
                        </pregnancyObservations>
                    </component1>
                </xsl:for-each>
                <!-- Item(s) :: roken_tijdens_de_zwangerschap-->
                <xsl:for-each select="roken_tijdens_de_zwangerschap">
                    <component1 typeCode="COMP">
                        <pregnancyObservations classCode="OBS" moodCode="EVN">
                            <code code="91" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '91'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                            </code>
                            <xsl:call-template name="makeBLValue_From_W0141_JaNeeOnbekend">
                                <xsl:with-param name="elemName">value</xsl:with-param>
                            </xsl:call-template>
                        </pregnancyObservations>
                    </component1>
                </xsl:for-each>
                <!-- Item(s) :: alcohol_gebruik_tijdens_de_zwangerschap-->
                <xsl:for-each select="alcohol_gebruik_tijdens_de_zwangerschap">
                    <component1 typeCode="COMP">
                        <pregnancyObservations classCode="OBS" moodCode="EVN">
                            <code code="92" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '92'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                            </code>
                            <xsl:call-template name="makeBLValue_From_W0141_JaNeeOnbekend">
                                <xsl:with-param name="elemName">value</xsl:with-param>
                            </xsl:call-template>
                        </pregnancyObservations>
                    </component1>
                </xsl:for-each>
                <!-- Item(s) :: drugsgebruik_tijdens_de_zwangerschap-->
                <xsl:if test="drugsgebruik_tijdens_de_zwangerschap | type_drugsgebruik_tijdens_de_zwangerschap">
                    <component1 typeCode="COMP">
                        <pregnancyObservations classCode="OBS" moodCode="EVN">
                            <code code="93" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '93'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                            </code>
                            <xsl:for-each select="drugsgebruik_tijdens_de_zwangerschap">
                                <xsl:call-template name="makeBLValue_From_W0141_JaNeeOnbekend">
                                    <xsl:with-param name="elemName">value</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                            <xsl:if test="empty(drugsgebruik_tijdens_de_zwangerschap) and type_drugsgebruik_tijdens_de_zwangerschap">
                                <value value="true"/>
                            </xsl:if>
                            <!-- Item(s) :: type_drugsgebruik_tijdens_de_zwangerschap-->
                            <xsl:for-each select="type_drugsgebruik_tijdens_de_zwangerschap">
                                <component typeCode="COMP">
                                    <detailPregnancyObservation classCode="OBS" moodCode="EVN">
                                        <code code="745" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '745'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                        </code>
                                        <xsl:call-template name="makeCVValue">
                                            <xsl:with-param name="elemName">value</xsl:with-param>
                                        </xsl:call-template>
                                    </detailPregnancyObservation>
                                </component>
                            </xsl:for-each>
                        </pregnancyObservations>
                    </component1>
                </xsl:if>
                <!-- Item(s) :: bijzonderheden_vorige_zwangerschap-->
                <xsl:for-each select="bijzonderheden_vorige_zwangerschap">
                    <component1 typeCode="COMP">
                        <pregnancyObservations classCode="OBS" moodCode="EVN">
                            <code code="619" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '619'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                            </code>
                            <xsl:call-template name="makeSTValue">
                                <xsl:with-param name="elemName">value</xsl:with-param>
                            </xsl:call-template>
                        </pregnancyObservations>
                    </component1>
                </xsl:for-each>
                <!-- Item(s) :: graviditeit -->
                <xsl:for-each select="graviditeit">
                    <component1 typeCode="COMP">
                        <pregnancyObservations classCode="OBS" moodCode="EVN">
                            <code code="740" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '740'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                            </code>
                            <xsl:call-template name="makeINTValue">
                                <xsl:with-param name="elemName">value</xsl:with-param>
                            </xsl:call-template>
                        </pregnancyObservations>
                    </component1>
                </xsl:for-each>
                <!-- Item(s) :: pariteit-->
                <xsl:for-each select="pariteit">
                    <component1 typeCode="COMP">
                        <pregnancyObservations classCode="OBS" moodCode="EVN">
                            <code code="741" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '741'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                            </code>
                            <xsl:call-template name="makeINTValue">
                                <xsl:with-param name="elemName">value</xsl:with-param>
                            </xsl:call-template>
                        </pregnancyObservations>
                    </component1>
                </xsl:for-each>
                <!-- Item(s) :: Moeder heeft kinkhoest doorgemaakt na zwangerschapsduur 12w6d -->
                <xsl:for-each select="moeder_heeft_kinkhoest_doorgemaakt_na_zwangerschapsduur_12w6d">
                    <component1 typeCode="COMP">
                        <pregnancyObservations classCode="OBS" moodCode="EVN">
                            <code code="1579" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1579'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                            </code>
                            <xsl:call-template name="makeBLValue">
                                <xsl:with-param name="elemName">value</xsl:with-param>
                            </xsl:call-template>
                        </pregnancyObservations>
                    </component1>
                </xsl:for-each>
                <!-- Item(s) :: Moeder heeft kinkhoest doorgemaakt na zwangerschapsduur 12w6d -->
                <xsl:for-each select="moeder_heeft_kinkhoestvaccinatie_gekregen_na_zwangerschapsduur_12w6d">
                    <component1 typeCode="COMP">
                        <pregnancyObservations classCode="OBS" moodCode="EVN">
                            <code code="1581" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1581'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                            </code>
                            <xsl:call-template name="makeBLValue">
                                <xsl:with-param name="elemName">value</xsl:with-param>
                            </xsl:call-template>
                        </pregnancyObservations>
                    </component1>
                </xsl:for-each>
                <!-- component2/substanceAdministrationEvent -->
                <!-- Item(s) :: medicijnen_soort-->
                <xsl:for-each select="medicijnen_soort">
                    <component2 typeCode="COMP">
                        <substanceAdministrationEvent classCode="SBADM" moodCode="EVN">
                            <consumable typeCode="CSM">
                                <medication classCode="ADMM">
                                    <administrableMedicine classCode="MMAT" determinerCode="KIND">
                                        <xsl:call-template name="makeCVValue">
                                            <xsl:with-param name="xsiType" select="''"/>
                                            <xsl:with-param name="elemName">code</xsl:with-param>
                                        </xsl:call-template>
                                    </administrableMedicine>
                                </medication>
                            </consumable>
                        </substanceAdministrationEvent>
                    </component2>
                </xsl:for-each>
            </xsl:for-each>
        </pregnancyCondition>
    </xsl:template>

</xsl:stylesheet>

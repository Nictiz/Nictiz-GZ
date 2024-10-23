<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">


    <!-- obs Informatie verstrekt over werkwijze JGZ -->
    <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.102.10.40476">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <annotationObsEvent xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.40476"/>
            <code code="476" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '476'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Informatie verstrekt over werkwijze JGZ -->
            <xsl:call-template name="makeBLValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </annotationObsEvent>
    </xsl:template>

    <!-- Care Provision Event component6 InformationControlActEvent -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10517">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <component6 xmlns="urn:hl7-org:v3" typeCode="COMP">
            <informationControlActEvent classCode="INFO" moodCode="EVN" negationInd="false">
                <code code="G088" codeSystem="2.16.840.1.113883.2.4.4.40.393">
                    <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'G088'][@codeSystem = '2.16.840.1.113883.2.4.4.40.393']/@displayName"/>
                </code>
                <!-- Item(s) :: toelichting_verstrekking_afschrift_jgzdossier-->
                <xsl:for-each select="toelichting_verstrekking_afschrift_jgzdossier">
                    <xsl:call-template name="makeSTValue">
                        <xsl:with-param name="elemName">text</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: datum_verstrekking_afschrift_jgzdossier-->
                <xsl:for-each select="datum_verstrekking_afschrift_jgzdossier">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName">effectiveTime</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <informationRecipient typeCode="IRCP">
                    <xsl:choose>
                        <!-- Item(s) :: afschrift_jgzdossier_verstrekt_aan-->
                        <xsl:when test="afschrift_jgzdossier_verstrekt_aan[@code = 'ONESELF']">
                            <patient classCode="PAT"/>
                        </xsl:when>
                        <xsl:when test="afschrift_jgzdossier_verstrekt_aan">
                            <personalRelationship classCode="PRS">
                                <xsl:for-each select="afschrift_jgzdossier_verstrekt_aan">
                                    <xsl:call-template name="makeCVValue">
                                        <xsl:with-param name="elemName">code</xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                                <relationshipHolder classCode="PSN" determinerCode="INSTANCE" nullFlavor="NI"/>
                            </personalRelationship>
                        </xsl:when>
                    </xsl:choose>
                </informationRecipient>
            </informationControlActEvent>
        </component6>
    </xsl:template>

    <!-- authorization Bezwaar overdracht dossier binnen JGZ -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.50010">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <consentEvent xmlns="urn:hl7-org:v3" classCode="CONS" moodCode="EVN">
            <!-- Item(s) :: bezwaar_overdracht_dossier_binnen_JGZ -->
            <!-- Als de bezwaar 'ja' is dan is negationInd van ConsentEvent 'true'. -->
            <xsl:attribute name="negationInd" select="bezwaar_overdracht_dossier_binnen_jgz/@value"/>
            <code code="1395" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1395'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <author typeCode="AUT">
                <!-- Item(s) :: datum_bezwaar_overdracht_dossier_binnen_JGZ -->
                <xsl:for-each select="datum_bezwaar_overdracht_dossier_binnen_jgz">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName">time</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: bron_bezwaar_overdracht_dossier_binnen_JGZ -->
                <xsl:for-each select="bron_bezwaar_overdracht_dossier_binnen_jgz">
                    <responsibleParty classCode="CON">
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="elemName">code</xsl:with-param>
                        </xsl:call-template>
                        <agentPerson classCode="PSN" determinerCode="INSTANCE">
                            <name nullFlavor="NI"/>
                        </agentPerson>
                    </responsibleParty>
                </xsl:for-each>
            </author>
        </consentEvent>
    </xsl:template>

    <!-- authorization Bezwaar wetenschappelijk onderzoek -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.50089">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <consentEvent xmlns="urn:hl7-org:v3" classCode="CONS" moodCode="EVN">
            <!-- Item(s) :: bezwaar_wetenschappelijk_onderzoek -->
            <!-- Als de bezwaar 'ja' is dan is negationInd van ConsentEvent 'true'. -->
            <xsl:attribute name="negationInd" select="bezwaar_wetenschappelijk_onderzoek/@value"/>
            <code code="1404" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1404'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <author typeCode="AUT">
                <!-- Item(s) :: datum_bezwaar_wetenschappelijk_onderzoek -->
                <xsl:for-each select="datum_bezwaar_wetenschappelijk_onderzoek">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName">time</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: bron_bezwaar_wetenschappelijk_onderzoek -->
                <xsl:for-each select="bron_bezwaar_wetenschappelijk_onderzoek">
                    <responsibleParty classCode="CON">
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="elemName">code</xsl:with-param>
                        </xsl:call-template>
                        <agentPerson classCode="PSN" determinerCode="INSTANCE">
                            <name nullFlavor="NI"/>
                        </agentPerson>
                    </responsibleParty>
                </xsl:for-each>
            </author>
        </consentEvent>
    </xsl:template>

    <!-- authorization Toestemming aanmelding LSP -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.50071">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <consentEvent xmlns="urn:hl7-org:v3" classCode="CONS" moodCode="EVN">
            <!-- Item(s) :: toestemming_aanmelding_LSP -->
            <!-- Als de toestemming 'ja' is dan is negationInd van ConsentEvent 'false'. -->
            <xsl:attribute name="negationInd" select="
                    if (toestemming_aanmelding_lsp/@value eq 'true') then
                        'false'
                    else
                        'true'"/>
            <code code="1398" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1398'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <author typeCode="AUT">
                <!-- Item(s) :: datum_toestemming_aanmelding_LSP -->
                <xsl:for-each select="datum_toestemming_aanmelding_lsp">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName">time</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: bron_toestemming_aanmelding_LSP -->
                <xsl:for-each select="bron_toestemming_aanmelding_lsp">
                    <responsibleParty classCode="CON">
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="elemName">code</xsl:with-param>
                        </xsl:call-template>
                        <agentPerson classCode="PSN" determinerCode="INSTANCE">
                            <name nullFlavor="NI"/>
                        </agentPerson>
                    </responsibleParty>
                </xsl:for-each>
            </author>
        </consentEvent>
    </xsl:template>

    <!-- authorization Toestemming gegevensuitwisseling RVP -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.50115">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <consentEvent xmlns="urn:hl7-org:v3" classCode="CONS" moodCode="EVN">
            <!-- Item(s) :: toestemming_gegevensuitwisseling_rvp -->
            <!-- Als de toestemming 'ja' is dan is negationInd van ConsentEvent 'false'. -->
            <xsl:variable name="negationIndicator">
                <xsl:choose>
                    <xsl:when test="toestemming_gegevensuitwisseling_rvp/@value = 'true'">false</xsl:when>
                    <xsl:otherwise>true</xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <xsl:attribute name="negationInd" select="$negationIndicator"/>
            <code code="1533" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1533'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: einddatum_toestemming_gegevensuitwisseling_rvp -->
            <xsl:for-each select="einddatum_toestemming_gegevensuitwisseling_rvp">
                <effectiveTime>
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName">high</xsl:with-param>
                    </xsl:call-template>
                </effectiveTime>
            </xsl:for-each>
            <author typeCode="AUT">
                <!-- Item(s) :: datum_toestemming_gegevensuitwisseling_rvp -->
                <xsl:for-each select="datum_toestemming_gegevensuitwisseling_rvp">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName">time</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:if test="bron_toestemming_gegevensuitwisseling_rvp | naam_bron_toestemming_gegevensuitwisseling_rvp">
                    <responsibleParty classCode="CON">
                        <!-- Item(s) :: bron_toestemming_gegevensuitwisseling_rvp -->
                        <xsl:for-each select="bron_toestemming_gegevensuitwisseling_rvp">
                            <xsl:call-template name="makeCVValue">
                                <xsl:with-param name="elemName">code</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <!-- Item(s) :: naam_bron_toestemming_gegevensuitwisseling_rvp -->
                        <xsl:for-each select="naam_bron_toestemming_gegevensuitwisseling_rvp">
                            <agentPerson classCode="PSN" determinerCode="INSTANCE">
                                <xsl:call-template name="makeTNValue">
                                    <xsl:with-param name="elemName">name</xsl:with-param>
                                    <xsl:with-param name="xsiType"/>
                                </xsl:call-template>
                            </agentPerson>
                        </xsl:for-each>
                    </responsibleParty>
                </xsl:if>
            </author>
            <xsl:if test="naam_jgzmedewerker_toestemming_gegevensuitwisseling_rvp | jgzorganisatie_ura_toestemming_gegevensuitwisseling_rvp | jgzorganisatie_agb_toestemming_gegevensuitwisseling_rvp | jgzorganisatie_naam_toestemming_gegevensuitwisseling_rvp">
                <consultant typeCode="CON">
                    <assignedEntity1 classCode="ASSIGNED">
                        <!-- Item(s) :: naam_jgzmedewerker_toestemming_gegevensuitwisseling_rvp -->
                        <xsl:for-each select="naam_jgzmedewerker_toestemming_gegevensuitwisseling_rvp">
                            <assignedPerson classCode="PSN" determinerCode="INSTANCE">
                                <xsl:call-template name="makeTNValue">
                                    <xsl:with-param name="elemName">name</xsl:with-param>
                                    <xsl:with-param name="xsiType"/>
                                </xsl:call-template>
                            </assignedPerson>
                        </xsl:for-each>
                        <representedOrganization classCode="ORG" determinerCode="INSTANCE">
                            <!-- Item(s) :: jgzorganisatie_ura_toestemming_gegevensuitwisseling_rvp -->
                            <xsl:for-each select="jgzorganisatie_ura_toestemming_gegevensuitwisseling_rvp">
                                <xsl:call-template name="makeII.NL.URAValue">
                                    <xsl:with-param name="elemName">id</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                            <!-- Item(s) :: jgzorganisatie_agb_toestemming_gegevensuitwisseling_rvp -->
                            <xsl:for-each select="jgzorganisatie_agb_toestemming_gegevensuitwisseling_rvp">
                                <xsl:call-template name="makeII.NL.AGBValue">
                                    <xsl:with-param name="elemName">id</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                            <!-- Item(s) :: jgzorganisatie_naam_toestemming_gegevensuitwisseling_rvp -->
                            <xsl:for-each select="jgzorganisatie_naam_toestemming_gegevensuitwisseling_rvp">
                                <xsl:call-template name="makeTNValue">
                                    <xsl:with-param name="elemName">name</xsl:with-param>
                                    <xsl:with-param name="xsiType"/>
                                </xsl:call-template>
                            </xsl:for-each>
                        </representedOrganization>
                    </assignedEntity1>
                </consultant>
            </xsl:if>
            <!-- Item(s) :: toestemmingswijze_gegevensuitwisseling_rvp -->
            <xsl:for-each select="toestemmingswijze_gegevensuitwisseling_rvp">
                <subjectOf typeCode="SUBJ">
                    <annotation>
                        <code code="1541" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1541'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </annotation>
                </subjectOf>
            </xsl:for-each>
        </consentEvent>
    </xsl:template>

    <!-- authorization Toestemming overdracht dossier binnen JGZ -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.50011">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <consentEvent xmlns="urn:hl7-org:v3" classCode="CONS" moodCode="EVN">
            <!-- Item(s) :: toestemming_overdracht_dossier_binnen_JGZ -->
            <!-- Als de toestemming 'ja' is dan is negationInd van ConsentEvent 'false'. -->
            <xsl:attribute name="negationInd" select="
                    if (toestemming_overdracht_dossier_binnen_jgz/@value eq 'true') then
                        'false'
                    else
                        'true'"/>
            <code code="1163" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1163'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <author typeCode="AUT">
                <!-- Item(s) :: datum_toestemming_overdracht_dossier_binnen_JGZ -->
                <xsl:for-each select="datum_toestemming_overdracht_dossier_binnen_jgz">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName">time</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: bron_toestemming_overdracht_dossier_binnen_JGZ -->
                <xsl:for-each select="bron_toestemming_overdracht_dossier_binnen_jgz">
                    <responsibleParty classCode="CON">
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="elemName">code</xsl:with-param>
                        </xsl:call-template>
                        <agentPerson classCode="PSN" determinerCode="INSTANCE">
                            <name nullFlavor="NI"/>
                        </agentPerson>
                    </responsibleParty>
                </xsl:for-each>
            </author>
        </consentEvent>
    </xsl:template>

    <!-- authorization Toestemming verstrekking informatie aan derden -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.50012">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <consentEvent xmlns="urn:hl7-org:v3" classCode="CONS" moodCode="EVN">
            <!-- Item(s) :: toestemming_verstrekking_informatie_aan_derden -->
            <!-- Als de toestemming 'ja' is dan is negationInd van ConsentEvent 'false'. -->
            <xsl:attribute name="negationInd" select="
                    if (toestemming_verstrekking_informatie_aan_derden/@value eq 'true') then
                        'false'
                    else
                        'true'"/>
            <code code="1165" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1165'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <author typeCode="AUT">
                <!-- Item(s) :: datum_toestemming_verstrekking_informatie_aan_derden -->
                <xsl:for-each select="datum_toestemming_verstrekking_informatie_aan_derden">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName">time</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: bron_toestemming_verstrekking_informatie_aan_derden -->
                <xsl:for-each select="bron_toestemming_verstrekking_informatie_aan_derden">
                    <responsibleParty classCode="CON">
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="elemName">code</xsl:with-param>
                        </xsl:call-template>
                        <agentPerson classCode="PSN" determinerCode="INSTANCE">
                            <name nullFlavor="NI"/>
                        </agentPerson>
                    </responsibleParty>
                </xsl:for-each>
            </author>
            <xsl:for-each select="toelichting_verstrekking_informatie_aan_derden">
                <subjectOf>
                    <annotation>
                        <code code="1407" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1407'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </annotation>
                </subjectOf>
            </xsl:for-each>
        </consentEvent>
    </xsl:template>

</xsl:stylesheet>

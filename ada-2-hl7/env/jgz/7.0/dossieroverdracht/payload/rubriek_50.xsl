<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <!-- authorization Toestemming aan verpleegkundige om te vaccineren -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.40469">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <consentEvent xmlns="urn:hl7-org:v3" classCode="CONS" moodCode="EVN">
            <!-- Item(s) :: toestemming_aan_verpleegkundige_om_te_vaccineren -->
            <!-- Als de toestemming 'ja' is dan is negationInd van ConsentEvent 'false'. -->
            <xsl:variable name="negationIndicator">
                <xsl:choose>
                    <xsl:when test="toestemming_aan_verpleegkundige_om_te_vaccineren/@value = 'true'">false</xsl:when>
                    <xsl:otherwise>true</xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <xsl:attribute name="negationInd" select="$negationIndicator"/>
            <code code="469" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '469'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!--            <!-\- Maak een author aan als de datum aanwezig is. De author is in de HL7 template namelijk optioneel en de datum eronder is verplicht. -\->
            <xsl:if test="datum_toestemming_aan_verpleegkundige_om_te_vaccineren">-->
            <author typeCode="AUT">
                <!-- Item(s) :: datum_toestemming_aan_verpleegkundige_om_te_vaccineren -->
                <xsl:for-each select="datum_toestemming_aan_verpleegkundige_om_te_vaccineren">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName">time</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:if test="arts_uzi_toestemming_aan_verpleegkundige_om_te_vaccineren | arts_big_toestemming_aan_verpleegkundige_om_te_vaccineren | arts_agb_toestemming_aan_verpleegkundige_om_te_vaccineren | arts_naam_toestemming_aan_verpleegkundige_om_te_vaccineren">
                    <responsibleParty classCode="ASSIGNED">
                        <!-- Item(s) :: arts_uzi_toestemming_aan_verpleegkundige_om_te_vaccineren -->
                        <xsl:for-each select="arts_uzi_toestemming_aan_verpleegkundige_om_te_vaccineren">
                            <xsl:call-template name="makeII.NL.UZIValue">
                                <xsl:with-param name="elemName">id</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <!-- Item(s) :: arts_big_toestemming_aan_verpleegkundige_om_te_vaccineren -->
                        <xsl:for-each select="arts_big_toestemming_aan_verpleegkundige_om_te_vaccineren">
                            <xsl:call-template name="makeII.NL.BIGValue">
                                <xsl:with-param name="elemName">id</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <!-- Item(s) :: arts_agb_toestemming_aan_verpleegkundige_om_te_vaccineren -->
                        <xsl:for-each select="arts_agb_toestemming_aan_verpleegkundige_om_te_vaccineren">
                            <xsl:call-template name="makeII.NL.AGBValue">
                                <xsl:with-param name="elemName">id</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <!-- Item(s) :: naam_bron_toestemming_gegevensuitwisseling_rvp -->
                        <xsl:for-each select="arts_naam_toestemming_aan_verpleegkundige_om_te_vaccineren">
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
            <!--            </xsl:if>-->
        </consentEvent>
    </xsl:template>

    <!-- Care Provision Event subjectOf CareStatus -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10019">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <xsl:for-each select="groep_g093_status_in_zorg">
            <xsl:variable name="datumStart" select="datum_start_zorg/@value"/>
            <xsl:variable name="organisatie" select="
                    ../../r005_betrokken_jgzorganisaties/*[*/startdatum_geldigheid_uitvoerende_jgzorganisatie/@value = $datumStart],
                    ../../r005_betrokken_jgzorganisaties/*[*/startdatum_geldigheid_verantwoordelijke_jgzorganisatie/@value = $datumStart],
                    ../../r005_betrokken_jgzorganisaties/groep_g085_uitvoerende_jgzorganisatie,
                    ../../r005_betrokken_jgzorganisaties/groep_g091_verantwoordelijke_jgzorganisatie_obv_de_brp
                    " as="element()*"/>

            <subjectOf xmlns="urn:hl7-org:v3" typeCode="SUBJ" contextConductionInd="false">
                <careStatus classCode="STC" moodCode="EVN">
                    <code code="1197" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                        <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1197'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                    </code>
                    <!-- Item(s) :: datum_start_zorg-->
                    <xsl:for-each select="datum_start_zorg">
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">effectiveTime</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Item(s) :: status_in_zorg-->
                    <xsl:for-each select="status_in_zorg">
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">reasonCode</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </careStatus>
            </subjectOf>
        </xsl:for-each>
        <xsl:for-each select="groep_g092_zorgbeeindiging">
            <xsl:variable name="datumEind" select="datum_zorgbeeindiging/@value"/>
            <xsl:variable name="organisatie" select="
                    ../../r005_betrokken_jgzorganisaties/*[*/einddatum_geldigheid_uitvoerende_jgzorganisatie/@value = $datumEind],
                    ../../r005_betrokken_jgzorganisaties/*[*/einddatum_geldigheid_verantwoordelijke_jgzorganisatie/@value = $datumEind],
                    ../../r005_betrokken_jgzorganisaties/groep_g085_uitvoerende_jgzorganisatie,
                    ../../r005_betrokken_jgzorganisaties/groep_g091_verantwoordelijke_jgzorganisatie_obv_de_brp
                    " as="element()*"/>

            <subjectOf xmlns="urn:hl7-org:v3" typeCode="SUBJ" contextConductionInd="false">
                <careStatus classCode="STC" moodCode="EVN">
                    <code code="487" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                        <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '487'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                    </code>
                    <!-- Item(s) :: datum_zorgbeeindiging-->
                    <xsl:for-each select="datum_zorgbeeindiging">
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">effectiveTime</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Item(s) :: zorgbeeindiging-->
                    <xsl:for-each select="zorgbeeindiging">
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">reasonCode</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </careStatus>
            </subjectOf>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>

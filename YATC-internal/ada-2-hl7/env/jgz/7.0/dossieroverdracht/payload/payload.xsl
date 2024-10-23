<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" exclude-result-prefixes="xs" version="2.0">

    <xsl:include href="patient.xsl"/>
    <xsl:include href="rubriek_10.xsl"/>
    <xsl:include href="rubriek_12.xsl"/>
    <xsl:include href="rubriek_13.xsl"/>
    <xsl:include href="rubriek_16.xsl"/>
    <xsl:include href="rubriek_18.xsl"/>
    <xsl:include href="rubriek_52.xsl"/>
    <xsl:include href="rubriek_19.xsl"/>
    <xsl:include href="rubriek_20.xsl"/>
    <xsl:include href="rubriek_21.xsl"/>
    <xsl:include href="rubriek_22.xsl"/>
    <xsl:include href="rubriek_23.xsl"/>
    <xsl:include href="rubriek_24.xsl"/>
    <xsl:include href="rubriek_25.xsl"/>
    <xsl:include href="rubriek_26.xsl"/>
    <xsl:include href="rubriek_27.xsl"/>
    <xsl:include href="rubriek_30.xsl"/>
    <xsl:include href="rubriek_31.xsl"/>
    <xsl:include href="rubriek_32.xsl"/>
    <xsl:include href="rubriek_34.xsl"/>
    <xsl:include href="rubriek_38.xsl"/>
    <xsl:include href="rubriek_39.xsl"/>
    <xsl:include href="rubriek_40.xsl"/>
    <xsl:include href="rubriek_41.xsl"/>
    <xsl:include href="rubriek_42.xsl"/>
    <xsl:include href="rubriek_43.xsl"/>
    <xsl:include href="rubriek_54.xsl"/>
    <xsl:include href="rubriek_45.xsl"/>
    <xsl:include href="rubriek_49.xsl"/>
    <xsl:include href="rubriek_50.xsl"/>

    <!-- Care Provision Dossier -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10006">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <careProvisionEvent moodCode="EVN" xmlns="urn:hl7-org:v3">
            <!-- Item(s) :: dossiernummer-->
            <xsl:for-each select="r002_dossierinformatie/dossiernummer">
                <xsl:call-template name="makeIIValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">id</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <code codeSystem="2.16.840.1.113883.5.4" code="CPHC" displayName="certified public health and general preventive medicine care"/>
            <!-- Dossierstatus -->
            <statusCode code="{r002_dossierinformatie/dossier_status/@code}"/>
            <effectiveTime>
                <high value="20200607213533"/>
            </effectiveTime>
            <!-- Kindgegevens -->
            <xsl:for-each select="r003_persoonsgegevens">
                <subject typeCode="SBJ">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.131">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </subject>
            </xsl:for-each>
            <!-- Uitvoerende JGZ-organisaties -->
            <xsl:for-each select="r005_betrokken_jgzorganisaties/groep_g085_uitvoerende_jgzorganisatie">
                <xsl:sort select="*/startdatum_geldigheid_uitvoerende_jgzorganisatie/@value" order="descending"/>
                <author typeCode="AUT">

                    <xsl:for-each select="groep_g098_periode_geldigheid_uitvoerende_jgzorganisatie">
                        <xsl:if test="count(startdatum_geldigheid_uitvoerende_jgzorganisatie) > 0 or count(einddatum_geldigheid_uitvoerende_jgzorganisatie) > 0">
                            <time xsi:type="IVL_TS">
                                <!-- Item(s) :: startdatum_geldigheid_uitvoerende_jgzorganisatie-->
                                <xsl:for-each select="startdatum_geldigheid_uitvoerende_jgzorganisatie">
                                    <xsl:call-template name="makeTSValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">low</xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                                <xsl:if test="count(startdatum_geldigheid_uitvoerende_jgzorganisatie) = 0 and count(einddatum_geldigheid_uitvoerende_jgzorganisatie) > 0">
                                    <low nullFlavor="UNK"/>
                                </xsl:if>
                                <!-- Item(s) :: einddatum_geldigheid_uitvoerende_jgzorganisatie-->
                                <xsl:for-each select="einddatum_geldigheid_uitvoerende_jgzorganisatie">
                                    <xsl:call-template name="makeTSValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">high</xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                                <xsl:if test="count(einddatum_geldigheid_uitvoerende_jgzorganisatie) = 0 and count(startdatum_geldigheid_uitvoerende_jgzorganisatie) > 0">
                                    <high nullFlavor="UNK"/>
                                </xsl:if>
                            </time>
                        </xsl:if>
                    </xsl:for-each>
                    <xsl:if test="count(groep_g098_periode_geldigheid_uitvoerende_jgzorganisatie) = 0 or count(groep_g098_periode_geldigheid_uitvoerende_jgzorganisatie/*) = 0">
                        <time nullFlavor="UNK"/>
                    </xsl:if>
                    <!-- R_AssignedEntityNL-->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.122">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </author>
            </xsl:for-each>
            <!-- Rubriek 9: Externe documenten -->
            <xsl:for-each select="r009_externe_documenten/groep_g072_toegevoegd_bestand">
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10008">
                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Toestemmingen -->
            <!-- Toestemming aan verpleegkundige om te vaccineren -->
            <xsl:for-each select="r050_zorggegevens[toestemming_aan_verpleegkundige_om_te_vaccineren | datum_toestemming_aan_verpleegkundige_om_te_vaccineren | arts_uzi_toestemming_aan_verpleegkundige_om_te_vaccineren | arts_big_toestemming_aan_verpleegkundige_om_te_vaccineren | arts_agb_toestemming_aan_verpleegkundige_om_te_vaccineren | arts_naam_toestemming_aan_verpleegkundige_om_te_vaccineren]">
                <authorization xmlns="urn:hl7-org:v3" typeCode="AUTH" contextConductionInd="false">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40469">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </authorization>
            </xsl:for-each>
            <!-- authorization Toestemming overdracht dossier binnen JGZ -->
            <xsl:for-each select="r010_informatie_over_werkwijze_jgz/groep_g011_toestemming_overdracht_dossier_binnen_jgz">
                <authorization xmlns="urn:hl7-org:v3" typeCode="AUTH" contextConductionInd="false">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.50011">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </authorization>
            </xsl:for-each>
            <!-- Bezwaar overdracht dossier binnen JGZ -->
            <xsl:for-each select="r010_informatie_over_werkwijze_jgz/groep_g010_bezwaar_overdracht_dossier_binnen_jgz">
                <authorization xmlns="urn:hl7-org:v3" typeCode="AUTH" contextConductionInd="false">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.50010">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </authorization>
            </xsl:for-each>
            <!-- authorization Toestemming aanmelding LSP -->
            <xsl:for-each select="r010_informatie_over_werkwijze_jgz/groep_g071_toestemming_aanmelding_lsp">
                <authorization xmlns="urn:hl7-org:v3" typeCode="AUTH" contextConductionInd="false">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.50071">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </authorization>
            </xsl:for-each>
            <!-- authorization Toestemming verstrekking informatie aan derden -->
            <xsl:for-each select="r010_informatie_over_werkwijze_jgz/groep_g012_toestemming_info_aan_derden">
                <authorization xmlns="urn:hl7-org:v3" typeCode="AUTH" contextConductionInd="false">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.50012">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </authorization>
            </xsl:for-each>
            <!-- Bezwaar wetenschappelijk onderzoek -->
            <xsl:for-each select="r010_informatie_over_werkwijze_jgz/groep_g089_bezwaar_wetenschappelijk_onderzoek">
                <authorization xmlns="urn:hl7-org:v3" typeCode="AUTH" contextConductionInd="false">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.50089">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </authorization>
            </xsl:for-each>
            <!-- authorization Toestemming gegevensuitwisseling RVP -->
            <xsl:for-each select="r010_informatie_over_werkwijze_jgz/groep_g115_toestemming_gegevensuitwisseling_rvp">
                <authorization xmlns="urn:hl7-org:v3" typeCode="AUTH" contextConductionInd="false">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.50115">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </authorization>
            </xsl:for-each>
            <!-- Informatie verstrekt over werkwijze -->
            <xsl:for-each select="r010_informatie_over_werkwijze_jgz/informatie_verstrekt_over_werkwijze_jgz">
                <pertinentInformation typeCode="PERT">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.102.10.40476">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </pertinentInformation>
            </xsl:for-each>
            <!-- obs_Papieren_dossier_aanwezig -->
            <xsl:for-each select="r009_externe_documenten/papieren_jgzdossier_aanwezig">
                <pertinentInformation>
                    <!-- Template :: obs Papieren dossier aanwezig -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41167_20120801000000">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </pertinentInformation>
            </xsl:for-each>
            <!-- Care Provision Event component6 InformationControlActEvent - afschrift JGZ dossier verstrekt aan -->
            <xsl:for-each select="r010_informatie_over_werkwijze_jgz/groep_g088_afschrift_jgzdossier_verstrekt">
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10517">
                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Care Provision Event component7 Activiteiten -->
            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10018">
                <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
            </xsl:call-template>
            <!-- CareStatus -->
            <xsl:for-each select="r050_zorggegevens">
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10019">
                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                </xsl:call-template>
            </xsl:for-each>
        </careProvisionEvent>
    </xsl:template>

    <!-- Care Provision Event component7 Activiteiten -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10018">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <xsl:for-each select="r018_activiteit">
            <xsl:sort select="datum_activiteit/@value"/>
            <xsl:variable name="activiteitId" select="activiteit_id/@value"/>
            <xsl:variable name="activiteitType" select="soort_activiteit/@code"/>
            <xsl:variable name="activiteitStatus" select="status_activiteit/@code"/>
            <xsl:variable name="activiteitActies" select="//versturen_jgzdossieroverdrachtverzoek_v03/*[ends-with(@comment, concat('activiteit-', $activiteitId))]"/>

            <component7 xmlns="urn:hl7-org:v3" typeCode="COMP">
                <encounter classCode="ENC">
                    <xsl:choose>
                        <!-- Activiteit Contactmoment -->
                        <xsl:when test="$activiteitStatus = ('01', '02')">
                            <xsl:attribute name="moodCode">EVN</xsl:attribute>
                        </xsl:when>
                        <!-- Activiteit Contactmomentafspraak -->
                        <xsl:otherwise>
                            <xsl:attribute name="moodCode">INT</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                    <!-- Item(s) :: activiteit_id -->
                    <xsl:for-each select="activiteit_id">
                        <xsl:call-template name="makeIIValue">
                            <xsl:with-param name="elemName">id</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Item(s) :: soort_activiteit -->
                    <xsl:for-each select="soort_activiteit">
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">code</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- statusCode -->
                    <xsl:choose>
                        <!-- Activiteit Contactmoment -->
                        <xsl:when test="$activiteitStatus = '01'">
                            <statusCode code="completed"/>
                        </xsl:when>
                        <xsl:when test="$activiteitStatus = '02'">
                            <statusCode code="aborted"/>
                        </xsl:when>
                        <!-- Activiteit Contactmomentafspraak -->
                        <xsl:otherwise>
                            <statusCode code="cancelled"/>
                        </xsl:otherwise>
                    </xsl:choose>
                    <!-- Item(s) :: datum_activiteit -->
                    <xsl:for-each select="datum_activiteit">
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="elemName">effectiveTime</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Item(s) :: indicatie_activiteit -->
                    <xsl:for-each select="indicatie_activiteit">
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">reasonCode</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Template :: Activities performer (uitvoerende persoon) -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10022">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                    <xsl:if test="verzoeker_activiteit[not($activiteitStatus = ('01', '02'))]">
                        <!-- Template :: Activities encounterINT author (Verzoeker activiteit) -->
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10023">
                            <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                        </xsl:call-template>
                    </xsl:if>
                    <xsl:for-each select="$activiteitActies">
                        <xsl:choose>
                            <xsl:when test="self::r013_bedreigingen_uit_de_directe_omgeving">
                                <!-- Template :: Activities consultant (contact met) -->
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10024">
                                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                </xsl:call-template>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                    <!-- Template :: Activities escort (begeleider) -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10025">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                    <xsl:if test="verzoeker_activiteit[$activiteitStatus = ('01', '02')]">
                        <inFulfillmentOf typeCode="FLFS">
                            <encounter classCode="ENC" moodCode="INT">
                                <id nullFlavor="NI"/>
                                <!-- Item(s) :: soort_activiteit -->
                                <xsl:for-each select="soort_activiteit">
                                    <xsl:call-template name="makeCVValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">code</xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                                <statusCode code="completed"/>
                                <!-- Template :: Activities encounterINT author (Verzoeker activiteit) -->
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10023">
                                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                </xsl:call-template>
                            </encounter>
                        </inFulfillmentOf>
                    </xsl:if>
                    <!-- Template :: Rubriek 18 Activiteit -->
                    <xsl:if test="vorm_activiteit | status_activiteit">
                        <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                        <pertinentInformation typeCode="PERT">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11018">
                                <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                            </xsl:call-template>
                        </pertinentInformation>
                    </xsl:if>
                    <xsl:for-each select="$activiteitActies">
                        <xsl:choose>
                            <xsl:when test="self::r012_erfelijke_belasting_en_ouderkenmerken">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11012">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r013_bedreigingen_uit_de_directe_omgeving">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11013">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r052_meldingen">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11052">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r019_terugkerende_anamnese">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11019">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r020_algemene_indruk">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11020">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r021_functioneren">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11021">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r022_huidhaarnagels">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11022">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r023_hoofdhals">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11023">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r024_romp">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11024">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r025_bewegingsapparaat">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11025">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r026_genitaliapuberteitsontwikkeling">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11026">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r027_groei">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11027">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r030_psychosociaal_en_cognitief_functioneren">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11030">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r031_motorisch_functioneren">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11031">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r032_spraak_en_taalontwikkeling">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11032">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r034_inschatten_verhouding_draaglastdraagkracht">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11034">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r038_visus_en_oogonderzoek">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11038">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r039_hartonderzoek">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11039">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r040_gehooronderzoek">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11040">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r041_rijksvaccinatieprogramma_en_andere_vaccinaties/*[not(@conceptId = '2.16.840.1.113883.2.4.3.11.60.100.2.2.76')]">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11041">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r042_van_wiechen_ontwikkelingsonderzoek">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11042">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r043_bfmt">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11043">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r054_screening_psychosociale_problemen">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11054">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r045_sdq">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11045">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r049_screening_logopedie">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11049">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                    <!-- Element component3/A_Rijksvaccinatie -->
                    <xsl:for-each select="$activiteitActies[self::r041_rijksvaccinatieprogramma_en_andere_vaccinaties]/groep_g076_vaccinatie">
                        <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                        <component3>
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.116">
                                <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                            </xsl:call-template>
                        </component3>
                    </xsl:for-each>
                    <!-- Element component4/A_HeelPrick -->
                    <xsl:for-each select="$activiteitActies[self::r037_hielprik_pasgeborene]">
                        <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                        <component4>
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.133_20120801000000">
                                <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                            </xsl:call-template>
                        </component4>
                    </xsl:for-each>
                    <!-- Element component5/Advice -->
                    <xsl:for-each select="$activiteitActies[self::r036_voorlichting_advies_instructie_en_begeleiding]/groep_g042_voorlichting">
                        <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                        <component5>
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10032_20120801000000">
                                <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                            </xsl:call-template>
                        </component5>
                    </xsl:for-each>
                    <!-- Element subjectOf/abortedEvent -->
                    <xsl:if test="toelichting_niet_verschenen">
                        <subjectOf typeCode="SUBJ" xmlns="urn:hl7-org:v3">
                            <abortedEvent classCode="STC" moodCode="EVN">
                                <code code="495" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                    <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '495'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                </code>
                                <!-- Item(s) :: toelichting_niet_verschenen-->
                                <xsl:for-each select="toelichting_niet_verschenen">
                                    <xsl:call-template name="makeCVValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">reasonCode</xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                            </abortedEvent>
                        </subjectOf>
                    </xsl:if>
                    <!-- Element subjectOf/conclusion -->
                    <xsl:for-each select="$activiteitActies[self::r047_conclusies_en_vervolgstappen]">
                        <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                        <subjectOf1>
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10037">
                                <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                            </xsl:call-template>
                        </subjectOf1>
                    </xsl:for-each>
                </encounter>
            </component7>
        </xsl:for-each>
    </xsl:template>

    <!-- R_AssignedEntityNL [identified] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.122">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <assignedEntity xmlns="urn:hl7-org:v3" classCode="ASSIGNED">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.122"/>
            <!-- Item(s) :: uitvoerende_jgzorganisatie_ura | verantwoordelijke_jgzorganisatie_ura-->
            <xsl:for-each select="uitvoerende_jgzorganisatie_ura | verantwoordelijke_jgzorganisatie_ura">
                <xsl:call-template name="makeII.NL.URAValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">id</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Item(s) :: uitvoerende_jgzorganisatie_agb | verantwoordelijke_jgzorganisatie_agb-->
            <xsl:for-each select="uitvoerende_jgzorganisatie_agb | verantwoordelijke_jgzorganisatie_agb">
                <xsl:call-template name="makeII.NL.AGBValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">id</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Item(s) :: uitvoerende_jgzorganisatie_naam | verantwoordelijke_jgzorganisatie_naam-->
            <xsl:for-each select="uitvoerende_jgzorganisatie_naam | verantwoordelijke_jgzorganisatie_naam">
                <assignedOrganization classCode="ORG" determinerCode="INSTANCE">
                    <xsl:call-template name="makeONValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">name</xsl:with-param>
                    </xsl:call-template>
                </assignedOrganization>
            </xsl:for-each>
        </assignedEntity>
    </xsl:template>

    <!-- Activiteit Contactmoment -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10020">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <xsl:for-each select="r018_activiteit">
            <xsl:sort select="datum_activiteit/@value"/>
            <xsl:variable name="activiteitId" select="activiteit_id/@value"/>
            <xsl:variable name="activiteitStatus" select="status_activiteit/@code"/>
            <xsl:variable name="activiteitActies" select="//versturen_jgzdossieroverdrachtverzoek_v03/*[ends-with(@comment, concat('activiteit-', $activiteitId))]"/>

            <encounter xmlns="urn:hl7-org:v3" classCode="ENC" moodCode="EVN">
                <!-- Item(s) :: activiteit_id -->
                <xsl:for-each select="activiteit_id">
                    <xsl:call-template name="makeIIValue">
                        <xsl:with-param name="elemName">id</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: soort_activiteit -->
                <xsl:for-each select="soort_activiteit">
                    <xsl:call-template name="makeCVValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">code</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- statusCode -->
                <xsl:choose>
                    <xsl:when test="$activiteitStatus = '01'">
                        <statusCode code="completed"/>
                    </xsl:when>
                    <xsl:when test="$activiteitStatus = '02'">
                        <statusCode code="aborted"/>
                    </xsl:when>
                </xsl:choose>
                <!-- Item(s) :: datum_activiteit -->
                <xsl:for-each select="datum_activiteit">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName">effectiveTime</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: indicatie_activiteit -->
                <xsl:for-each select="indicatie_activiteit">
                    <xsl:call-template name="makeCVValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">reasonCode</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Template :: Activities performer (uitvoerende persoon) -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10022">
                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                </xsl:call-template>
                <xsl:for-each select="$activiteitActies">
                    <xsl:choose>
                        <xsl:when test="self::r013_bedreigingen_uit_de_directe_omgeving">
                            <!-- Template :: Activities consultant (contact met) -->
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10024">
                                <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                            </xsl:call-template>
                        </xsl:when>
                    </xsl:choose>
                </xsl:for-each>
                <!-- Template :: Activities escort (begeleider) -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10025">
                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                </xsl:call-template>
                <xsl:if test="verzoeker_activiteit">
                    <inFulfillmentOf typeCode="FLFS">
                        <encounter classCode="ENC" moodCode="INT">
                            <id nullFlavor="NI"/>
                            <!-- Item(s) :: soort_activiteit-->
                            <xsl:for-each select="soort_activiteit">
                                <xsl:call-template name="makeCVValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">code</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                            <statusCode code="completed"/>
                            <!-- Template :: Activities encounterINT author (Verzoeker activiteit) -->
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10023">
                                <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                            </xsl:call-template>
                        </encounter>
                    </inFulfillmentOf>
                </xsl:if>
                <!-- Template :: Rubriek 18 Activiteit -->
                <xsl:if test="vorm_activiteit | status_activiteit">
                    <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                    <pertinentInformation typeCode="PERT">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11018">
                            <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                        </xsl:call-template>
                    </pertinentInformation>
                </xsl:if>
            </encounter>
        </xsl:for-each>
    </xsl:template>

    <!-- Activiteit Contactmomentafspraak -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10021">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <xsl:for-each select="r018_activiteit">
            <xsl:sort select="datum_activiteit/@value"/>
            <xsl:variable name="activiteitId" select="activiteit_id/@value"/>
            <xsl:variable name="activiteitActies" select="//versturen_jgzdossieroverdrachtverzoek_v03/*[ends-with(@comment, concat('activiteit-', $activiteitId))]"/>

            <encounter xmlns="urn:hl7-org:v3" classCode="ENC" moodCode="INT">
                <!-- Item(s) :: activiteit_id -->
                <xsl:for-each select="activiteit_id">
                    <xsl:call-template name="makeIIValue">
                        <xsl:with-param name="elemName">id</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: soort_activiteit -->
                <xsl:for-each select="soort_activiteit">
                    <xsl:call-template name="makeCVValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">code</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- statusCode -->
                <statusCode code="cancelled"/>
                <!-- Item(s) :: datum_activiteit -->
                <xsl:for-each select="datum_activiteit">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName">effectiveTime</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: indicatie_activiteit -->
                <xsl:for-each select="indicatie_activiteit">
                    <xsl:call-template name="makeCVValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">reasonCode</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Template :: Activities performer (uitvoerende persoon) -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10022">
                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                </xsl:call-template>
                <!-- Template :: Activities encounterINT author (Verzoeker activiteit) -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10023">
                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                </xsl:call-template>
                <xsl:for-each select="$activiteitActies">
                    <xsl:choose>
                        <xsl:when test="self::r013_bedreigingen_uit_de_directe_omgeving">
                            <!-- Template :: Activities consultant (contact met) -->
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10024">
                                <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                            </xsl:call-template>
                        </xsl:when>
                    </xsl:choose>
                </xsl:for-each>
                <!-- Template :: Activiteit escort (begeleider) -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.10025">
                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                </xsl:call-template>
                <!-- Template :: Rubriek 18 Activiteit -->
                <xsl:if test="vorm_activiteit | status_activiteit">
                    <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                    <pertinentInformation typeCode="PERT">
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11018">
                            <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                        </xsl:call-template>
                    </pertinentInformation>
                </xsl:if>
            </encounter>
        </xsl:for-each>
    </xsl:template>

    <!-- Activities performer (uitvoerende persoon) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10022">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <xsl:if test="uitvoerende_activiteit_uzi | uitvoerende_activiteit_big | uitvoerende_activiteit_agb | uitvoerende_activiteit_discipline | uitvoerende_activiteit_naam">
            <performer xmlns="urn:hl7-org:v3" typeCode="PRF">
                <assignedEntity classCode="ASSIGNED">
                    <!-- Item(s) :: uitvoerende_activiteit_uzi-->
                    <xsl:for-each select="uitvoerende_activiteit_uzi">
                        <xsl:call-template name="makeII.NL.UZIValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">id</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Item(s) :: uitvoerende_activiteit_big-->
                    <xsl:for-each select="uitvoerende_activiteit_big">
                        <xsl:call-template name="makeII.NL.BIGValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">id</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <!-- Item(s) :: uitvoerende_activiteit_agb-->
                    <xsl:for-each select="uitvoerende_activiteit_agb">
                        <xsl:call-template name="makeII.NL.AGBValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">id</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <xsl:if test="not(uitvoerende_activiteit_uzi | uitvoerende_activiteit_big | uitvoerende_activiteit_agb)">
                        <id nullFlavor="NI"/>
                    </xsl:if>
                    <!-- Item(s) :: uitvoerende_activiteit_discipline-->
                    <xsl:for-each select="uitvoerende_activiteit_discipline">
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">code</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <assignedPerson classCode="PSN" determinerCode="INSTANCE">
                        <!-- Item(s) :: uitvoerende_activiteit_naam-->
                        <xsl:for-each select="uitvoerende_activiteit_naam">
                            <xsl:call-template name="makePNValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">name</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </assignedPerson>
                </assignedEntity>
            </performer>
        </xsl:if>
    </xsl:template>

    <!-- Activities encounterINT author (Verzoeker activiteit) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10023">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <!-- Item(s) :: verzoeker_activiteit -->
        <xsl:for-each select="verzoeker_activiteit">
            <author xmlns="urn:hl7-org:v3" typeCode="AUT">
                <xsl:choose>
                    <xsl:when test="@code = '03'">
                        <patient classCode="PAT"/>
                    </xsl:when>
                    <xsl:when test="@code = '02'">
                        <personalRelationship classCode="PRS">
                            <code code="02" codeSystem="2.16.840.1.113883.2.4.4.40.411" displayName="Ouder(s)/verzorger(s)"/>
                            <relationshipHolder classCode="PSN" determinerCode="INSTANCE" nullFlavor="NI"/>
                        </personalRelationship>
                    </xsl:when>
                    <xsl:otherwise>
                        <assignedEntity1 classCode="ASSIGNED">
                            <xsl:call-template name="makeCVValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">code</xsl:with-param>
                            </xsl:call-template>
                        </assignedEntity1>
                    </xsl:otherwise>
                </xsl:choose>
            </author>
        </xsl:for-each>
    </xsl:template>

    <!-- Activities consultant (contact met) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10024">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <xsl:if test="contact_ivm_meldcode_met_functie | contact_ivm_meldcode_met_naam">
            <consultant xmlns="urn:hl7-org:v3" typeCode="CON">
                <assignedEntity classCode="ASSIGNED">
                    <!-- Item(s) :: contact_ivm_meldcode_met_functie -->
                    <xsl:for-each select="contact_ivm_meldcode_met_functie">
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">code</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <assignedPerson classCode="PSN" determinerCode="INSTANCE">
                        <!-- Item(s) :: contact_ivm_meldcode_met_naam -->
                        <xsl:for-each select="contact_ivm_meldcode_met_naam">
                            <xsl:call-template name="makePNValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">name</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </assignedPerson>
                </assignedEntity>
            </consultant>
        </xsl:if>
    </xsl:template>

    <!-- Activities escort (begeleider) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10025">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <!-- Item(s) :: begeleider-->
        <xsl:for-each select="begeleider">
            <escort xmlns="urn:hl7-org:v3" typeCode="ESC">
                <responsibleParty classCode="ASSIGNED">
                    <xsl:call-template name="makeCVValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">code</xsl:with-param>
                        <!--<xsl:with-param name="originalText" select="@originalText"/>-->
                    </xsl:call-template>
                    <agentPerson nullFlavor="NI"/>
                </responsibleParty>
            </escort>
        </xsl:for-each>
    </xsl:template>

    <!-- Activities component1 NonBDSData -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10028">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <xsl:for-each select="r051_nietgespecificeerde_gegevens | groep_g083_niet_gespecificeerde_gegevens">
            <nonBDSData xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN">
                <templateId root="2.16.840.1.113883.2.4.6.10.100.10028"/>
                <!-- Item(s) :: element-->
                <xsl:for-each select="element">
                    <xsl:call-template name="makeCVValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">code</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: waarde-->
                <xsl:for-each select="waarde">
                    <xsl:call-template name="makeSTValue">
                        <xsl:with-param name="elemName">text</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <!-- Item(s) :: waarde-->
                <xsl:for-each select="waarde">
                    <xsl:call-template name="makeAny">
                        <xsl:with-param name="elemName">value</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <pertainsTo typeCode="COMP">
                    <categoryInBDS classCode="CATEGORY" moodCode="EVN">
                        <!-- Item(s) :: rubriek_id-->
                        <xsl:for-each select="rubriek_id">
                            <xsl:call-template name="makeCVValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">code</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </categoryInBDS>
                </pertainsTo>
            </nonBDSData>
        </xsl:for-each>
    </xsl:template>

    <!-- Activities component2 MetaData -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10029_20120801000000">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <xsl:for-each select="r051_nietgespecificeerde_gegevens | groep_g083_niet_gespecificeerde_gegevens">
            <metaData xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN">
                <templateId root="2.16.840.1.113883.2.4.6.10.100.10029"/>
                <code/>
                <xsl:for-each select="waarde">
                    <value/>
                </xsl:for-each>
                <pertainsTo typeCode="COMP">
                    <categoryInBDS classCode="CATEGORY" moodCode="EVN">
                        <!-- Item(s) :: element rubriek_id-->
                        <xsl:for-each select="element | rubriek_id">
                            <xsl:call-template name="makeCVValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">code</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </categoryInBDS>
                </pertainsTo>
            </metaData>
        </xsl:for-each>
    </xsl:template>

    <!-- Activities component5 Advice -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10032_20120801000000">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <advice xmlns="urn:hl7-org:v3" classCode="INFRM" moodCode="EVN">
            <!-- Item(s) :: gegeven_voorlichting-->
            <xsl:for-each select="gegeven_voorlichting">
                <xsl:call-template name="makeCVValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">code</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Item(s) :: voorlichtingsmateriaal-->
            <xsl:for-each select="voorlichtingsmateriaal">
                <component typeCode="COMP">
                    <act classCode="ACT" moodCode="EVN">
                        <code code="1157" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1157'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">text</xsl:with-param>
                        </xsl:call-template>
                    </act>
                </component>
            </xsl:for-each>
        </advice>
    </xsl:template>

    <!-- Activities subjectOf2 Annotation -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10034_20120801000000">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <annotation xmlns="urn:hl7-org:v3">
            <code/>
            <text/>
        </annotation>
    </xsl:template>

    <!-- Activities subjectOf1 Conclusie -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10037">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <conclusion xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN">
            <code code="482" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '482'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: conclusie-->
            <xsl:for-each select="conclusie">
                <xsl:call-template name="makeSTValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">text</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="groep_g058_indicatie_en_interventie">
                <component typeCode="COMP">
                    <indication classCode="OBS" moodCode="EVN">
                        <code code="485" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '485'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <!-- Item(s) :: indicatie-->
                        <xsl:for-each select="indicatie">
                            <xsl:call-template name="makeCVValue">
                                <xsl:with-param name="elemName">value</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <!-- Item(s) :: interventie-->
                        <xsl:for-each select="interventie">
                            <reasonOf typeCode="RSON">
                                <informIntent classCode="OBS" moodCode="EVN">
                                    <xsl:call-template name="makeCVValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">code</xsl:with-param>
                                    </xsl:call-template>
                                </informIntent>
                            </reasonOf>
                        </xsl:for-each>
                        <!-- Item(s) :: interventie-->
                        <xsl:for-each select="interventie">
                            <reasonOf typeCode="RSON">
                                <registrationIntent classCode="REG" moodCode="INT">
                                    <xsl:call-template name="makeCVValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">code</xsl:with-param>
                                    </xsl:call-template>
                                </registrationIntent>
                            </reasonOf>
                        </xsl:for-each>
                        <!-- Item(s) :: interventie-->
                        <xsl:for-each select="interventie">
                            <reasonOf typeCode="RSON">
                                <observationIntent classCode="OBS" moodCode="INT">
                                    <xsl:call-template name="makeCVValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">code</xsl:with-param>
                                    </xsl:call-template>
                                </observationIntent>
                            </reasonOf>
                        </xsl:for-each>
                        <!-- Item(s) :: interventie-->
                        <xsl:for-each select="interventie">
                            <reasonOf typeCode="RSON">
                                <referral classCode="PCPR" moodCode="RQO">
                                    <xsl:call-template name="makeCVValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">code</xsl:with-param>
                                    </xsl:call-template>
                                    <!-- Item(s) :: advies_en_verwijzing_naar-->
                                    <xsl:for-each select="advies_en_verwijzing_naar">
                                        <performer typeCode="PRF">
                                            <assignedEntity classCode="ASSIGNED">
                                                <xsl:call-template name="makeCVValue">
                                                    <xsl:with-param name="xsiType" select="''"/>
                                                    <xsl:with-param name="elemName">code</xsl:with-param>
                                                </xsl:call-template>
                                            </assignedEntity>
                                        </performer>
                                    </xsl:for-each>
                                    <!-- Item(s) :: verwijsbrief-->
                                    <xsl:for-each select="verwijsbrief">
                                        <component typeCode="COMP">
                                            <additionalObservation classCode="OBS" moodCode="OBS">
                                                <code code="1494" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                                    <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1494'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                                </code>
                                                <xsl:call-template name="makeBLValue">
                                                    <xsl:with-param name="elemName">value</xsl:with-param>
                                                </xsl:call-template>
                                            </additionalObservation>
                                        </component>
                                    </xsl:for-each>
                                </referral>
                            </reasonOf>
                        </xsl:for-each>
                        <xsl:for-each select="interventie">
                            <reasonOf typeCode="RSON">
                                <actIntent classCode="ACT" moodCode="INT">
                                    <code code="7" codeSystem="2.16.840.1.113883.2.4.4.40.9"/>
                                </actIntent>
                            </reasonOf>
                        </xsl:for-each>
                        <!-- Item(s) :: interventie-->
                        <xsl:for-each select="interventie">
                            <reasonOf typeCode="RSON">
                                <actIntent classCode="ACT" moodCode="INT">
                                    <code nullFlavor="OTH">
                                        <xsl:call-template name="makeSTValue">
                                            <xsl:with-param name="xsiType" select="''"/>
                                            <xsl:with-param name="elemName">originalText</xsl:with-param>
                                        </xsl:call-template>
                                    </code>
                                </actIntent>
                            </reasonOf>
                        </xsl:for-each>
                    </indication>
                </component>
            </xsl:for-each>
            <xsl:if test="extra_zorginterventie/@value = 'true'"> </xsl:if>
            <!-- Item(s) :: notitieblad-->
            <xsl:for-each select="notitieblad">
                <subjectOf typeCode="SUBJ">
                    <annotation classCode="ACT" moodCode="EVN">
                        <code code="493" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '493'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">text</xsl:with-param>
                        </xsl:call-template>
                    </annotation>
                </subjectOf>
            </xsl:for-each>
        </conclusion>
    </xsl:template>

    <!-- A_Rijksvaccinatie [universal] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.116">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <substanceAdministration xmlns="urn:hl7-org:v3" classCode="SBADM" moodCode="EVN" negationInd="{exists(bezwaar)}">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.116"/>
            <code code="IMMUNIZ" codeSystem="2.16.840.1.113883.5.4" displayName="Immunization"/>
            <!-- Item(s) :: datum_vaccinatie-->
            <xsl:for-each select="datum_vaccinatie">
                <xsl:call-template name="makeTSValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">effectiveTime</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <consumable typeCode="CSM">
                <medication classCode="ADMM">
                    <administrableMedicine classCode="MMAT" determinerCode="KIND">
                        <!-- Item(s) :: soort_vaccinatie-->
                        <xsl:for-each select="soort_vaccinatie">
                            <xsl:call-template name="makeCVValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">code</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <!-- Item(s) :: partijnummer-->
                        <xsl:for-each select="partijnummer">
                            <xsl:call-template name="makeSTValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">lotNumberText</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </administrableMedicine>
                </medication>
            </consumable>
            <performer typeCode="PRF">
                <!-- Template :: R_AssignedEntityNL [confirmable/location] -->
                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.124_20120801000000">
                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                </xsl:call-template>
            </performer>
            <!-- Item(s) :: reden_van_enting-->
            <xsl:for-each select="reden_van_enting">
                <reason typeCode="RSON">
                    <vaccinationReason classCode="OBS" moodCode="EVN">
                        <code code="686" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '686'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </vaccinationReason>
                </reason>
            </xsl:for-each>
            <xsl:if test="verschijnselen">
                <causeOf2 typeCode="CAUS">
                    <adverseReaction classCode="OBS" moodCode="EVN">
                        <code code="874" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '874'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:for-each select="groep_g111_periode_reactie">
                            <effectiveTime xsi:type="IVL_TS">
                                <xsl:if test="startdatum_reactie">
                                    <!-- Item(s) :: startdatum_reactie-->
                                    <xsl:for-each select="startdatum_reactie">
                                        <xsl:call-template name="makeTSValue">
                                            <xsl:with-param name="xsiType" select="''"/>
                                            <xsl:with-param name="elemName">low</xsl:with-param>
                                        </xsl:call-template>
                                    </xsl:for-each>
                                </xsl:if>
                                <xsl:if test="einddatum_reactie">
                                    <!-- Item(s) :: einddatum_reactie-->
                                    <xsl:for-each select="einddatum_reactie">
                                        <xsl:call-template name="makeTSValue">
                                            <xsl:with-param name="xsiType" select="''"/>
                                            <xsl:with-param name="elemName">high</xsl:with-param>
                                        </xsl:call-template>
                                    </xsl:for-each>
                                </xsl:if>
                            </effectiveTime>
                        </xsl:for-each>
                        <!-- Item(s) :: verschijnselen-->
                        <xsl:for-each select="verschijnselen">
                            <xsl:call-template name="makeSTValue">
                                <xsl:with-param name="elemName">value</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <subjectOf typeCode="SUBJ">
                            <informationControlActEvent classCode="INFO" moodCode="EVN">
                                <code code="875" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                    <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '875'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                </code>
                                <!-- Item(s) :: reactie_gemeld_aan_bevoegde_instantie_datum-->
                                <xsl:for-each select="reactie_gemeld_aan_bevoegde_instantie_datum">
                                    <xsl:call-template name="makeTSValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">effectiveTime</xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                                <performer typeCode="PRF">
                                    <assignedPerson classCode="ASSIGNED">
                                        <!-- Item(s) :: reactie_gemeld_aan_bevoegde_instantie_door-->
                                        <xsl:for-each select="reactie_gemeld_aan_bevoegde_instantie_door_uzi">
                                            <xsl:call-template name="makeII.NL.UZIValue">
                                                <xsl:with-param name="xsiType" select="''"/>
                                                <xsl:with-param name="elemName">id</xsl:with-param>
                                            </xsl:call-template>
                                        </xsl:for-each>
                                        <xsl:for-each select="reactie_gemeld_aan_bevoegde_instantie_door_big">
                                            <xsl:call-template name="makeII.NL.BIGValue">
                                                <xsl:with-param name="xsiType" select="''"/>
                                                <xsl:with-param name="elemName">id</xsl:with-param>
                                            </xsl:call-template>
                                        </xsl:for-each>
                                        <xsl:for-each select="reactie_gemeld_aan_bevoegde_instantie_door_agb">
                                            <xsl:call-template name="makeII.NL.AGBValue">
                                                <xsl:with-param name="xsiType" select="''"/>
                                                <xsl:with-param name="elemName">id</xsl:with-param>
                                            </xsl:call-template>
                                        </xsl:for-each>
                                        <xsl:if test="not(reactie_gemeld_aan_bevoegde_instantie_door_uzi | reactie_gemeld_aan_bevoegde_instantie_door_big | reactie_gemeld_aan_bevoegde_instantie_door_agb)">
                                            <id nullFlavor="NI"/>
                                        </xsl:if>
                                        <!-- Item(s) :: reactie_gemeld_aan_bevoegde_instantie_door_naam-->
                                        <xsl:for-each select="reactie_gemeld_aan_bevoegde_instantie_door_naam">
                                            <assignedPerson classCode="PSN" determinerCode="INSTANCE">
                                                <xsl:call-template name="makePNValue">
                                                    <xsl:with-param name="xsiType" select="''"/>
                                                    <xsl:with-param name="elemName">name</xsl:with-param>
                                                </xsl:call-template>
                                            </assignedPerson>
                                        </xsl:for-each>
                                    </assignedPerson>
                                </performer>
                            </informationControlActEvent>
                        </subjectOf>
                    </adverseReaction>
                </causeOf2>
            </xsl:if>
            <!-- Item(s) :: bezwaar-->
            <xsl:for-each select="bezwaar">
                <authorization typeCode="AUTH">
                    <consentEvent classCode="CONS" moodCode="EVN" negationInd="true">
                        <code code="IMMUNIZ" codeSystem="2.16.840.1.113883.5.4" displayName="Immunization"/>
                        <reasonOf typeCode="RSON">
                            <observationEvent classCode="OBS" moodCode="EVN">
                                <code code="683" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                    <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '683'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                </code>
                                <xsl:call-template name="makeCVValue">
                                    <xsl:with-param name="elemName">value</xsl:with-param>
                                </xsl:call-template>
                            </observationEvent>
                        </reasonOf>
                    </consentEvent>
                </authorization>
            </xsl:for-each>
            <!-- Item(s) :: type_oproepkaart-->
            <xsl:for-each select="type_oproepkaart">
                <component typeCode="COMP">
                    <vaccinationObservation classCode="OBS" moodCode="EVN">
                        <code code="608" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '608'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </vaccinationObservation>
                </component>
            </xsl:for-each>
            <!-- Item(s) :: toelichting_afwijkende_plaats_vaccinatie-->
            <xsl:for-each select="toelichting_afwijkende_plaats_vaccinatie">
                <component typeCode="COMP">
                    <vaccinationObservation classCode="OBS" moodCode="EVN">
                        <code code="872" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '872'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </vaccinationObservation>
                </component>
            </xsl:for-each>
            <!-- Item(s) :: vaccinatie_door_rivm_afgekeurd-->
            <xsl:for-each select="vaccinatie_door_rivm_afgekeurd">
                <component typeCode="COMP">
                    <vaccinationObservation classCode="OBS" moodCode="EVN">
                        <code code="1589" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1589'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeBLValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </vaccinationObservation>
                </component>
            </xsl:for-each>
        </substanceAdministration>
    </xsl:template>

    <!-- A_OntvangenZorg [universal] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.119_20120801000000">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <patientCareProvision xmlns="urn:hl7-org:v3" classCode="PCPR" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.119"/>
            <!-- Item(s) :: type_zorg-->
            <xsl:for-each select="type_zorg">
                <xsl:call-template name="makeCVValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">code</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Item(s) :: toelichting_zorg-->
            <xsl:for-each select="toelichting_zorg">
                <xsl:call-template name="makeSTValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">text</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Item(s) :: afgesloten-->
            <xsl:choose>
                <xsl:when test="afgesloten/@value = 'Nee'">
                    <statusCode code="active"/>
                </xsl:when>
                <xsl:when test="afgesloten/@value = 'Ja'">
                    <statusCode code="completed"/>
                </xsl:when>
                <xsl:otherwise>
                    <statusCode nullFlavor="ASKU"/>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:for-each select="groep_g103_periode_zorg">
                <effectiveTime xsi:type="IVL_TS">
                    <xsl:if test="startdatum_zorg">
                        <!-- Item(s) :: startdatum_zorg-->
                        <xsl:for-each select="startdatum_zorg">
                            <xsl:call-template name="makeTSValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">low</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </xsl:if>
                    <xsl:if test="einddatum_zorg">
                        <!-- Item(s) :: einddatum_zorg-->
                        <xsl:for-each select="einddatum_zorg">
                            <xsl:call-template name="makeTSValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">high</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </xsl:if>
                </effectiveTime>
            </xsl:for-each>
            <subject typeCode="SBJ">
                <xsl:choose>
                    <xsl:when test="zorg_voor[@code = 'CHILD']">
                        <xsl:for-each select="zorg_voor">
                            <patient classCode="PAT"/>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:otherwise>
                        <personalRelationship classCode="PRS">
                            <!-- Item(s) :: zorg_voor-->
                            <xsl:for-each select="zorg_voor">
                                <xsl:call-template name="makeCVValue">
                                    <xsl:with-param name="xsiType" select="''"/>
                                    <xsl:with-param name="elemName">code</xsl:with-param>
                                </xsl:call-template>
                            </xsl:for-each>
                            <relationshipHolder classCode="PSN" determinerCode="INSTANCE" nullFlavor="NI"/>
                        </personalRelationship>
                    </xsl:otherwise>
                </xsl:choose>
            </subject>
            <!-- Item(s) :: doel-->
            <xsl:for-each select="doel">
                <goal typeCode="COMP">
                    <observationGoal classCode="PCPR" moodCode="INT">
                        <code code="829" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '829'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">text</xsl:with-param>
                        </xsl:call-template>
                    </observationGoal>
                </goal>
            </xsl:for-each>
            <!-- Item(s) :: reden-->
            <xsl:for-each select="reden">
                <reasonOf typeCode="COMP">
                    <patientCareObservation classCode="OBS" moodCode="EVN">
                        <code code="365" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '365'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </patientCareObservation>
                </reasonOf>
            </xsl:for-each>
        </patientCareProvision>
    </xsl:template>

    <!-- A_ZorgPlan [universal] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.120_20120801000000">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <carePlan xmlns="urn:hl7-org:v3" classCode="PCPR" moodCode="INT">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.120"/>
            <code code="G081" codeSystem="2.16.840.1.113883.2.4.4.40.393">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'G081'][@codeSystem = '2.16.840.1.113883.2.4.4.40.393']/@displayName"/>
            </code>
            <xsl:for-each select="groep_g110_periode_duur_zorg_op_maat">
                <effectiveTime xsi:type="IVL_TS">
                    <xsl:if test="startdatum_duur_zorg_op_maat">
                        <!-- Item(s) :: startdatum_duur_zorg_op_maat-->
                        <xsl:for-each select="startdatum_duur_zorg_op_maat">
                            <xsl:call-template name="makeTSValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">low</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </xsl:if>
                    <xsl:if test="einddatum_duur_zorg_op_maat">
                        <!-- Item(s) :: einddatum_duur_zorg_op_maat-->
                        <xsl:for-each select="einddatum_duur_zorg_op_maat">
                            <xsl:call-template name="makeTSValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">high</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </xsl:if>
                </effectiveTime>
            </xsl:for-each>
            <!-- Item(s) :: doelen-->
            <xsl:for-each select="doelen">
                <finalGoal typeCode="OBJF">
                    <observationGoal classCode="OBS" moodCode="GOL">
                        <code code="1154" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1154'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </observationGoal>
                </finalGoal>
            </xsl:for-each>
            <!-- Item(s) :: probleemomschrijving oorzaak-->
            <xsl:if test="probleemomschrijving | oorzaak">
                <subject typeCode="SUBJ" contextControlCode="AN" contextConductionInd="true">
                    <problem classCode="OBS" moodCode="EVN">
                        <code code="1151" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1151'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <!-- Item(s) :: probleemomschrijving-->
                        <xsl:for-each select="probleemomschrijving">
                            <xsl:call-template name="makeSTValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">text</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <reasonOf>
                            <condition classCode="OBS" moodCode="EVN">
                                <code code="1152" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                    <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1152'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                </code>
                                <!-- Item(s) :: oorzaak-->
                                <xsl:for-each select="oorzaak">
                                    <xsl:call-template name="makeSTValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">text</xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                            </condition>
                        </reasonOf>
                        <!-- Item(s) :: zich_uitend_in-->
                        <xsl:for-each select="zich_uitend_in">
                            <subjectOf typeCode="SUBJ">
                                <symptom classCode="OBS" moodCode="EVN">
                                    <code code="1153" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                                        <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1153'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                                    </code>
                                    <xsl:call-template name="makeSTValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">text</xsl:with-param>
                                    </xsl:call-template>
                                </symptom>
                            </subjectOf>
                        </xsl:for-each>
                    </problem>
                </subject>
            </xsl:if>
            <!-- Item(s) :: evaluatie-->
            <xsl:for-each select="evaluatie">
                <pertinentInformation typeCode="PERT">
                    <evaluationEvent classCode="OBS" moodCode="EVN">
                        <code code="1156" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1156'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </evaluationEvent>
                </pertinentInformation>
            </xsl:for-each>
            <!-- Item(s) :: interventies-->
            <xsl:for-each select="interventies">
                <component typeCode="COMP">
                    <observationIntent classCode="OBS" moodCode="INT">
                        <code code="1155" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1155'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </observationIntent>
                </component>
            </xsl:for-each>
        </carePlan>
    </xsl:template>

    <!-- R_AssignedEntityNL [confirmable/location] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.124_20120801000000">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <assignedEntity xmlns="urn:hl7-org:v3" classCode="ASSIGNED">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.124"/>
            <xsl:for-each select="naam_uitvoerende_persoon">
                <assignedPerson classCode="PSN" determinerCode="INSTANCE">
                    <xsl:call-template name="makePNValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">name</xsl:with-param>
                    </xsl:call-template>
                </assignedPerson>
            </xsl:for-each>
            <representedOrganization classCode="ORG" determinerCode="INSTANCE">
                <id nullFlavor="NI"/>
                <!-- Item(s) :: uitvoerende_instantie_vaccinatie-->
                <xsl:for-each select="uitvoerende_instantie_vaccinatie">
                    <xsl:call-template name="makeONValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">name</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:for-each select="locatie_uitvoerende_organisatie">
                    <organizationContains classCode="PART">
                        <partOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id nullFlavor="NA"/>
                            <!-- Item(s) :: locatie_uitvoerende_organisatie-->
                            <xsl:call-template name="makeONValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">name</xsl:with-param>
                            </xsl:call-template>
                        </partOrganization>
                    </organizationContains>
                </xsl:for-each>
            </representedOrganization>
        </assignedEntity>
    </xsl:template>

    <!-- A_CoverageNL [minimal] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.132_20120801000000">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <coverageRecord xmlns="urn:hl7-org:v3" classCode="COV" moodCode="EVN">
            <component typeCode="COMP">
                <policyOrProgram classCode="COV" moodCode="EVN">
                    <!-- Item(s) :: ziektekostenverzekering-->
                    <xsl:for-each select="ziektekostenverzekering">
                        <xsl:call-template name="makeCEValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">code</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <coveredParty typeCode="COV">
                        <coveredParty typeCode="COVPTY">
                            <id nullFlavor="NI"/>
                        </coveredParty>
                    </coveredParty>
                </policyOrProgram>
            </component>
        </coverageRecord>
    </xsl:template>

    <!-- A_HeelPrick [universal] -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.133_20120801000000">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <xsl:variable name="negationInd" select="exists(hielprik_afgenomen[@value = 'false'] | reden_niet_afgenomen_hielprik)" as="xs:boolean"/>
        <heelPrick xmlns="urn:hl7-org:v3" classCode="SPECCOLLECT" moodCode="EVN" negationInd="{$negationInd}">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.133"/>
            <!-- Item(s) :: type_hielprik-->
            <xsl:for-each select="type_hielprik">
                <xsl:call-template name="makeCVValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">code</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Item(s) :: reden_niet_afgenomen_hielprik-->
            <xsl:for-each select="reden_niet_afgenomen_hielprik">
                <xsl:call-template name="makeCVValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">reasonCode</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <performer typeCode="PRF">
                <!-- Item(s) :: datum_hielprik-->
                <xsl:for-each select="datum_hielprik">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">time</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <assignedEntity classCode="ASSIGNED">
                    <id nullFlavor="NI"/>
                    <!-- Item(s) :: naam_uitvoerende_persoon-->
                    <xsl:for-each select="naam_uitvoerende_persoon">
                        <assignedPerson classCode="PSN" determinerCode="INSTANCE">
                            <xsl:call-template name="makePNValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">name</xsl:with-param>
                            </xsl:call-template>
                        </assignedPerson>
                    </xsl:for-each>
                    <!-- Item(s) :: uitvoerende_instantie_hielprik-->
                    <xsl:for-each select="uitvoerende_instantie_hielprik">
                        <representedOrganization classCode="ORG" determinerCode="INSTANCE">
                            <id nullFlavor="NI"/>
                            <xsl:call-template name="makeONValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">name</xsl:with-param>
                            </xsl:call-template>
                        </representedOrganization>
                    </xsl:for-each>
                </assignedEntity>
            </performer>
            <!-- Item(s) :: uitslag-->
            <xsl:for-each select="uitslag">
                <outcome typeCode="OUTC" contextConductionInd="false">
                    <result>
                        <code code="381" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '381'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </result>
                </outcome>
            </xsl:for-each>
            <xsl:for-each select="r037_hielprik_pasgeborene">
                <inFulFillmentOf typeCode="FLFS" contextConductionInd="false">
                    <!-- Template :: Hielprikverzoek (geen patiënt) -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.134_20120801000000">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </inFulFillmentOf>
            </xsl:for-each>
        </heelPrick>
    </xsl:template>

    <!-- Hielprikverzoek (geen patiënt) -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.134_20120801000000">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <xsl:for-each select="r037_hielprik_pasgeborene">
            <procedureRequest xmlns="urn:hl7-org:v3" classCode="SPECCOLLECT" moodCode="RQO">
                <realmCode code="NL"/>
                <templateId root="2.16.840.1.113883.2.4.6.10.100.134"/>
                <id/>
                <!-- Item(s) :: type_hielprik-->
                <xsl:for-each select="type_hielprik">
                    <xsl:call-template name="makeCVValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">code</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <statusCode code="active"/>
                <reason typeCode="RSON" contextConductionInd="false">
                    <act classCode="ALRT" moodCode="EVN">
                        <!-- Item(s) :: reden_herhalingtweede_hielprik-->
                        <xsl:for-each select="reden_herhalingtweede_hielprik">
                            <xsl:call-template name="makeCVValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">code</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </act>
                </reason>
                <pertinentInformation typeCode="REFR" contextConductionInd="false">
                    <act classCode="DOC" moodCode="EVN">
                        <!-- Item(s) :: setnummer_vorige_hielprik-->
                        <xsl:for-each select="setnummer_vorige_hielprik">
                            <xsl:call-template name="makeIIValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">id</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <code code="1432" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1432'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
                        </code>
                    </act>
                </pertinentInformation>
                <subjectOf6 typeCode="SUBJ" contextConductionInd="false">
                    <seperatableInd value="false"/>
                    <annotation classCode="ACT" moodCode="EVN">
                        <!-- Item(s) :: bijzonderheden_hielprikafname-->
                        <xsl:for-each select="bijzonderheden_hielprikafname">
                            <xsl:call-template name="makeSTValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">text</xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                        <statusCode code="completed"/>
                        <author typeCode="AUT">
                            <assignedEntity classCode="ASSIGNED">
                                <id/>
                            </assignedEntity>
                        </author>
                    </annotation>
                </subjectOf6>
            </procedureRequest>
        </xsl:for-each>
    </xsl:template>

    <!-- Care Provision Event Appendage -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.10008">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <appendage xmlns="urn:hl7-org:v3" typeCode="APND">
            <document classCode="DOC" moodCode="EVN">
                <!-- Item(s) :: soort_toegevoegd_bestand-->
                <xsl:for-each select="soort_toegevoegd_bestand">
                    <xsl:call-template name="makeCVValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">code</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:choose>
                    <xsl:when test="soort_toegevoegd_bestand/@code = '01'">
                        <!-- Item(s) :: bestand, bestand_mimetype and bestandsnaam-->
                        <xsl:for-each select="bestand">
                            <xsl:call-template name="makeEDValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">text</xsl:with-param>
                                <xsl:with-param name="mediaType" select="../bestand_mimetype/@value"/>
                                <xsl:with-param name="reference">
                                    <xsl:choose>
                                        <xsl:when test="matches(../bestandsnaam/@value, '^[^:]+:/')">
                                            <xsl:value-of select="../bestandsnaam/@value"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="concat('file:///', ../bestandsnaam/@value)"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:when test="soort_toegevoegd_bestand/@code = '02'">
                        <xsl:for-each select="//scan_van_oefeningenblad">
                            <xsl:call-template name="makeEDValue">
                                <xsl:with-param name="xsiType" select="''"/>
                                <xsl:with-param name="elemName">text</xsl:with-param>
                                <xsl:with-param name="mediaType" select="../bestand_mimetype/@value"/>
                                <xsl:with-param name="reference">
                                    <xsl:choose>
                                        <xsl:when test="matches(../bestandsnaam/@value, '^[^:]+:/')">
                                            <xsl:value-of select="../bestandsnaam/@value"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="concat('file:///', ../bestandsnaam/@value)"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:with-param>
                            </xsl:call-template>
                        </xsl:for-each>
                    </xsl:when>
                </xsl:choose>

                <!-- Item(s) :: datum_bestand-->
                <xsl:for-each select="datum_bestand">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="xsiType" select="''"/>
                        <xsl:with-param name="elemName">effectiveTime</xsl:with-param>
                    </xsl:call-template>
                </xsl:for-each>
                <xsl:if test="afzender_bestand">
                    <author typeCode="AUT">
                        <assignedEntity classCode="ASSIGNED">
                            <assignedPerson classCode="PSN" determinerCode="INSTANCE">
                                <!-- Item(s) :: afzender_bestand-->
                                <xsl:for-each select="afzender_bestand">
                                    <xsl:call-template name="makeTNValue">
                                        <xsl:with-param name="xsiType" select="''"/>
                                        <xsl:with-param name="elemName">name</xsl:with-param>
                                    </xsl:call-template>
                                </xsl:for-each>
                            </assignedPerson>
                        </assignedEntity>
                    </author>
                </xsl:if>
            </document>
        </appendage>
    </xsl:template>

    <!-- obs Scan van oefeningenblad -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41006">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41006"/>
            <code code="1006" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1006'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: scan_van_oefeningenblad-->
            <xsl:call-template name="makeEDValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <!-- obs Papieren dossier aanwezig -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41167_20120801000000">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <annotationObsEvent xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41167"/>
            <code code="1167" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1167'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <xsl:call-template name="makeBLValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </annotationObsEvent>
    </xsl:template>

</xsl:stylesheet>

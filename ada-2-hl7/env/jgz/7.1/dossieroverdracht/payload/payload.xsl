<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:include href="rubriek_12.xsl"/>
    <xsl:include href="rubriek_16.xsl"/>
    <xsl:include href="rubriek_52.xsl"/>
    <xsl:include href="rubriek_19.xsl"/>
    <xsl:include href="rubriek_21.xsl"/>
    <xsl:include href="rubriek_27.xsl"/>
    <xsl:include href="rubriek_34.xsl"/>
    <xsl:include href="rubriek_38.xsl"/>
    <xsl:include href="rubriek_54.xsl"/>

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
                                <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                            </xsl:call-template>
                        </pertinentInformation>
                    </xsl:if>
                    <xsl:for-each select="$activiteitActies">
                        <xsl:choose>
                            <xsl:when test="self::r012_erfelijke_belasting_en_ouderkenmerken">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11012">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r013_bedreigingen_uit_de_directe_omgeving">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11013">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r052_meldingen">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11052">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r019_terugkerende_anamnese">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11019">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r020_algemene_indruk">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11020">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r021_functioneren">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11021">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r022_huidhaarnagels">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11022">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r023_hoofdhals">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11023">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r024_romp">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11024">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r025_bewegingsapparaat">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11025">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r026_genitaliapuberteitsontwikkeling">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11026">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r027_groei">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11027">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r030_psychosociaal_en_cognitief_functioneren">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11030">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r031_motorisch_functioneren">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11031">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r032_spraak_en_taalontwikkeling">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11032">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r034_inschatten_verhouding_draaglastdraagkracht">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11034">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r038_visus_en_oogonderzoek">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11038">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r039_hartonderzoek">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11039">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r040_gehooronderzoek">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11040">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r041_rijksvaccinatieprogramma_en_andere_vaccinaties/*[not(@conceptId = '2.16.840.1.113883.2.4.3.11.60.100.2.2.76')]">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11041">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r042_van_wiechen_ontwikkelingsonderzoek">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11042">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r043_bfmt">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11043">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r054_screeningsinstrumenten">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11054">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r045_sdq">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11045">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                                    </xsl:call-template>
                                </pertinentInformation>
                            </xsl:when>
                            <xsl:when test="self::r049_screening_logopedie">
                                <xsl:comment><xsl:text> </xsl:text><xsl:value-of select="local-name()"/><xsl:text> </xsl:text></xsl:comment>
                                <pertinentInformation>
                                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.11049">
                                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
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

</xsl:stylesheet>

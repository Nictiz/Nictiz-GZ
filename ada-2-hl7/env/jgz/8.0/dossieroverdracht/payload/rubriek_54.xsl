<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.11054">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <rubricCluster xmlns="urn:hl7-org:v3" classCode="CLUSTER" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.11054"/>
            <code code="R054" codeSystem="2.16.840.1.113883.2.4.4.40.391">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'R054'][@codeSystem = '2.16.840.1.113883.2.4.4.40.391']/@displayName"/>
            </code>
            <!--Screeningsinstrument psychosociale problematiek: 1341 0..1 (W0640, KL_AN, Screeningsinstrument PP)-->
            <!--Datum afname SPP: 1342 0..1 (W0025, TS, Datum)-->
            <!--SPP ingevuld door: 1343 0..1 (W0641, KL_AN, SPP ingevuld door)-->
            <!--Plaats van afname SPP: 1344 0..1 (W0611, KL_AN, Wijze van afname)-->
            <!--Bijzonderheden SPP: 1345 0..1 (W0020, AN, Alfanumeriek 200)-->
            <xsl:if test="screeningsinstrument_psychosociale_problematiek | datum_afname_spp | spp_ingevuld_door | bijzonderheden_spp">
                <component>
                    <!-- Template :: obs Bijzonderheden SPP -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41345">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:if>
            <!--Conclusie SPP: 1346 0..1 (W0082, AN, Alfanumeriek 4000)-->
            <xsl:for-each select="conclusie_spp">
                <component>
                    <!-- Template :: obs Conclusie SPP -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41346">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Overall risicoinschatting SPARK: 1495 0..1 (W0669, KL_AN, SPARK-risicoinschatting)-->
            <xsl:for-each select="overall_risicoinschatting_spark">
                <component>
                    <!-- Template :: obs Overall risicoinschatting SPARK -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41495">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>

            <!--Overall conclusie alle domeinen DMOP -->
            <xsl:for-each select="overall_conclusie_alle_domeinen_dmop">
                <component>
                    <!-- Template :: obs  Overall conclusie alle domeinen DMOP -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41623">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Waardering domein ‘Omstandigheden en gebeurtenissen' (DMOP) -->
            <xsl:for-each select="waardering_domein_omstandigheden_en_gebeurtenissen_dmop">
                <component>
                    <!-- Template :: obs Waardering domein ‘Omstandigheden en gebeurtenissen' (DMOP) -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41624">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Waardering domein 'Welbevinden kind' (DMOP) -->
            <xsl:for-each select="waardering_domein_welbevinden_kind_dmop">
                <component>
                    <!-- Template :: obs Waardering domein 'Welbevinden kind' (DMOP) -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41625">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Waardering domein 'Rol partner' (DMOP) -->
            <xsl:for-each select="waardering_domein_rol_partner_dmop">
                <component>
                    <!-- Template :: obs Waardering domein 'Rol partner' (DMOP) -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41626">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Waardering domein 'Competentie ouder' (DMOP) -->
            <xsl:for-each select="waardering_domein_competentie_ouder_dmop">
                <component>
                    <!-- Template :: obs Waardering domein 'Competentie ouder' (DMOP) -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41627">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Waardering domein 'Sociale steun' (DMOP) -->
            <xsl:for-each select="waardering_domein_sociale_steun_dmop">
                <component>
                    <!-- Template :: obs Waardering domein 'Sociale steun' (DMOP) -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41628">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--GIZ-driehoek -->
            <xsl:for-each select="gizdriehoek">
                <component>
                    <!-- Template :: obs GIZ-driehoek -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41629">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Bijzonderheden GIZ-driehoek -->
            <xsl:for-each select="bijzonderheden_gizdriehoek">
                <component>
                    <!-- Template :: obs Bijzonderheden GIZ-driehoek -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41630">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Lichamelijke ontwikkeling -->
            <xsl:for-each select="lichamelijke_ontwikkeling">
                <component>
                    <!-- Template :: obs Lichamelijke ontwikkeling -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41631">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Verstandelijke ontwikkeling -->
            <xsl:for-each select="verstandelijke_ontwikkeling">
                <component>
                    <!-- Template :: obs Verstandelijke ontwikkeling -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41632">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Emotionele ontwikkeling -->
            <xsl:for-each select="emotionele_ontwikkeling">
                <component>
                    <!-- Template :: obs Emotionele ontwikkeling -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41633">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Sociale en seksuele ontwikkeling -->
            <xsl:for-each select="sociale_en_seksuele_ontwikkeling">
                <component>
                    <!-- Template :: obs Sociale en seksuele ontwikkeling -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41634">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Basiszorg / veiligheid -->
            <xsl:for-each select="basiszorg__veiligheid">
                <component>
                    <!-- Template :: obs Basiszorg / veiligheid -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41635">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Opvoeden -->
            <xsl:for-each select="opvoeden">
                <component>
                    <!-- Template :: obs Opvoeden -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41636">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Beleving ouderschap-->
            <xsl:for-each select="beleving_ouderschap">
                <component>
                    <!-- Template :: obs Beleving ouderschap -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41637">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Onderlinge steun ouders -->
            <xsl:for-each select="onderlinge_steun_ouders">
                <component>
                    <!-- Template :: obs Onderlinge steun ouders-->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41638">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Gezinsomstandigheden-->
            <xsl:for-each select="gezinsomstandigheden">
                <component>
                    <!-- Template :: obs Gezinsomstandigheden -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41639">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Netwerk-->
            <xsl:for-each select="netwerk">
                <component>
                    <!-- Template :: obs Netwerk -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41640">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!--Conclusie van de zorgbehoeften GIZ-->
            <xsl:for-each select="conclusie_van_de_zorgbehoeften_giz">
                <component>
                    <!-- Template :: obs Conclusie van de zorgbehoeften GIZ -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41641">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>

        </rubricCluster>
    </xsl:template>

    <!-- placeholder 1 -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41345">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41345"/>
            <code code="1345" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1345'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: datum_afname_spp-->
            <xsl:for-each select="datum_afname_spp">
                <xsl:call-template name="makeTSValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">effectiveTime</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Item(s) :: bijzonderheden_spp-->
            <xsl:choose>
                <xsl:when test="bijzonderheden_spp">
                    <xsl:for-each select="bijzonderheden_spp">
                        <xsl:call-template name="makeSTValue">
                            <xsl:with-param name="elemName">value</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                    <value xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="ST" nullFlavor="NI"/>
                </xsl:otherwise>
            </xsl:choose>
            <!-- Item(s) :: screeningsinstrument_psychosociale_problematiek-->
            <xsl:for-each select="screeningsinstrument_psychosociale_problematiek">
                <xsl:call-template name="makeCVValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">methodCode</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
            <!-- Item(s) :: spp_ingevuld_door-->
            <xsl:for-each select="spp_ingevuld_door">
                <performer typeCode="PRF">
                    <assignedEntity classCode="ASSIGNED">
                        <xsl:call-template name="makeCVValue">
                            <xsl:with-param name="xsiType" select="''"/>
                            <xsl:with-param name="elemName">code</xsl:with-param>
                        </xsl:call-template>
                    </assignedEntity>
                </performer>
            </xsl:for-each>
        </observation>
    </xsl:template>
    
    <!-- placeholder 2 -->
</xsl:stylesheet>

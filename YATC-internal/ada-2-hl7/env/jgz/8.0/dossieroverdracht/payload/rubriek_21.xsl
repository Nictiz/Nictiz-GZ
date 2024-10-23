<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.11021">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <rubricCluster xmlns="urn:hl7-org:v3" classCode="CLUSTER" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.11021"/>
            <code code="R021" codeSystem="2.16.840.1.113883.2.4.4.40.391">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'R021'][@codeSystem = '2.16.840.1.113883.2.4.4.40.391']/@displayName"/>
            </code>
            <!-- Lichamelijk functioneren nagevraagd -->
            <xsl:for-each select="zindelijkheid">
                <component>
                    <!-- Template :: obs Zindelijkheid -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40324">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!-- Bijzonderheden ontlasten/plassen/zindelijkheid -->
            <xsl:for-each select="bijzonderheden_ontlastenplassenzindelijkheid">
                <component>
                    <!-- Template :: obs Bijzonderheden ontlasten/plassen/zindelijkheid -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40325">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!-- Seksueel actief -->
            <!-- Anticonceptie -->
            <xsl:for-each select="seksueel_functioneren">
                <component>
                    <!-- Template :: obs Seksueel functioneren -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41649">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="toelichting_seksueel_functioneren">
                <component>
                    <!-- Template :: obs Toelichting seksueel functioneren -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41650">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="conclusie_seksueel_gedrag">
                <component>
                    <!-- Template :: obs Conclusie seksueel gedrag -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41651">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!-- Adaptatie/persoonlijkheid/sociaal gedrag nagevraagd -->
            <!-- Bijzonderheden hechting -->
            <xsl:for-each select="bijzonderheden_hechting">
                <component>
                    <!-- Template :: obs Bijzonderheden hechting -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40773">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!-- relatie met ouder/verzorger -->
            <xsl:for-each select="relatie_met_ouderverzorger">
                <component>
                    <!-- Template :: obs relatie met ouder/verzorger -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40774">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!-- Bijzonderheden gedrag/temperament -->
            <!-- Bijzonderheden karakter/persoonlijkheid -->
            <!-- Bijzonderheden zelfbeeld -->
            <!-- Bijzonderheden stemming/angsten -->
            <!-- Bijzonderheden ontdekkingsdrang -->
            <!-- Bijzonderheden zelfstandigheid -->
            <!-- Bijzonderheden begrijpen -->
            <!-- Bijzonderheden wilsontwikkeling -->
            <xsl:for-each select="bijzonderheden_wilsontwikkeling">
                <component>
                    <!-- Template :: obs Bijzonderheden wilsontwikkeling -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40781">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="genotsmiddelenverslavingsrisico">
                <component>
                    <!-- Template :: obs Genotsmiddelen/verslavingsrisico -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41646">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="soorten_genotsmiddelenverslavingsrisico">
                <component>
                    <!-- Template :: obs Soorten genotsmiddelen/verslavingsrisico -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41647">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="toelichting_genotsmiddelenverslavingsrisico">
                <component>
                    <!-- Template :: obs Toelichting genotsmiddelen/verslavingsrisico -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41648">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!-- Bijzonderheden omgaan met broer/zus/leeftijdgenoten -->
            <!-- Bijzonderheden contact met volwassenen -->
            <!-- Bijzonderheden omgaan met nieuwe situaties -->
            <!-- Bijzonderheden geweld/delinquent gedrag -->
            <!-- Bijzonderheden verslavingsrisico -->
            <!-- Toelichting verslavingsrisico -->
            <!-- Functioneren op school nagevraagd -->
            <!-- Bijzonderheden functioneren in de klas -->
            <!-- Bijzonderheden indruk school -->
            <!-- Bijzonderheden schoolverzuim -->
            <xsl:for-each select="schoolverzuim">
                <component>
                    <!-- Template :: obs Bijzonderheden schoolverzuim -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41601">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!-- Bijzonderheden schoolverzuim -->
            <xsl:for-each select="toelichting_schoolverzuim">
                <component>
                    <!-- Template :: obs Bijzonderheden schoolverzuim -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41602">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!-- Bijzonderheden schoolverzuim -->
            <xsl:for-each select="advies_met_betrekking_tot_deelname_aan_lesprogramma">
                <component>
                    <!-- Template :: obs Bijzonderheden schoolverzuim -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41603">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!-- Bijzonderheden schoolverzuim -->
            <xsl:for-each select="toelichting_advies_met_betrekking_tot_deelname_lesprogramma">
                <component>
                    <!-- Template :: obs Bijzonderheden schoolverzuim -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41604">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
        </rubricCluster>
    </xsl:template>
    
    <!-- placeholder JGZ-333 -->
    <!-- obs Seksueel functioneren -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41649">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41649"/>
            <code code="1649" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1649'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Seksueel functioneren-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!-- obs Toelichting seksueel functioneren -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41650">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41650"/>
            <code code="1650" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1650'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Toelichting seksueel functioneren-->
            <xsl:call-template name="makeSTValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!-- obs Conclusie seksueel gedrag -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41651">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41651"/>
            <code code="1651" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1651'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Conclusie seksueel gedrag-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    <!-- placeholder JGZ-335 -->
    <!-- obs Genotsmiddelen/verslavingsrisico -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41646">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41646"/>
            <code code="1646" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1646'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Genotsmiddelen/verslavingsrisico-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!-- obs Soorten genotsmiddelen/verslavingsrisico -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41647">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41647"/>
            <code code="1647" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1647'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Soorten genotsmiddelen/verslavingsrisico-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!-- obs Toelichting genotsmiddelen/verslavingsrisico -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41648">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41648"/>
            <code code="1648" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1648'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Toelichting genotsmiddelen/verslavingsrisico-->
            <xsl:call-template name="makeSTValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
</xsl:stylesheet>

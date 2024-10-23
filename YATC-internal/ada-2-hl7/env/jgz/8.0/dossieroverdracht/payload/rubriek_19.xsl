<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">

    <!-- Rubriek 19 Terugkerende anamnese -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.11019">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <rubricCluster xmlns="urn:hl7-org:v3" classCode="CLUSTER" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.11019"/>
            <code code="R019" codeSystem="2.16.840.1.113883.2.4.4.40.391">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'R019'][@codeSystem = '2.16.840.1.113883.2.4.4.40.391']/@displayName"/>
            </code>
            <xsl:for-each select="anamnese">
                <component>
                    <!-- Template :: obs Anamnese -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40748">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="ervaren_gezondheid">
                <component>
                    <!-- Template :: obs Ervaren gezondheid -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40514">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="voeding_en_eetgedrag">
                <component>
                    <!-- Template :: obs voeding en eetgedrag -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40323">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="melkvoeding_op_dit_moment">
                <component>
                    <!-- Template :: obs Melkvoeding op dit moment -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40496">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="vitamine_k">
                <component>
                    <!-- Template :: obs Vitamine K -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41337">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="vitamine_d">
                <component>
                    <!-- Template :: obs Vitamine D -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41338">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="toelichting_vitamine">
                <component>
                    <!-- Template :: obs Toelichting vitamine -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41339">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_slapenwaken">
                <component>
                    <!-- Template :: obs Bijzonderheden slapen/waken -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40322">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>

            <xsl:for-each select="bijzonderheden_huilen">
                <component>
                    <!-- Template :: obs Bijzonderheden huilen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41611">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>

            <xsl:for-each select="bijzonderheden_mondgedrag">
                <component>
                    <!-- Template :: obs Bijzonderheden mondgedrag -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40179">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="poetsen_gebit">
                <component>
                    <!-- Template :: obs Poetsen gebit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40188">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="tandartsbezoek">
                <component>
                    <!-- Template :: obs Tandartsbezoek -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40190">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="in_de_omgeving_van_de_jeugdige_wordt_wel_eens_of_dagelijks_gerookt">
                <component>
                    <!-- Template :: obs In de omgeving van de jeugdige wordt wel eens of dagelijks gerookt -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41665">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="toelichting_roken_in_omgeving_van_de_jeugdige">
                <component>
                    <!-- Template :: obs Toelichting roken in omgeving van de jeugdige -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41666">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="stoppen_met_roken_interventie_besproken">
                <component>
                    <!-- Template :: obs Stoppen met roken interventie besproken -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41667">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_lichaamsbeweging">
                <component>
                    <!-- Template :: obs Bijzonderheden lichaamsbeweging -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40330">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>

            <xsl:for-each select="leefstijl">
                <component>
                    <!-- Template :: obs Leefstijl-->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41612">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="jeugdige_heeft_zwemdiploma">
                <component>
                    <!-- Template :: obs Jeugdige heeft zwemdiploma -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41668">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="ontvangen_paramedische_zorg">
                <component>
                    <!-- Template :: obs Consult huisarts/specialist/derden -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40754">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="kinderziekten">
                <component>
                    <!-- Template :: obs (Kinder-)ziekten -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40152">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="ongevallen">
                <component>
                    <!-- Template :: obs Ongevallen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40154">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="medicijn_gebruik">
                <component>
                    <!-- Template :: obs Medicijn gebruik -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40155">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="medicijngebruik_tijdens_zwangerschap">
                <component>
                    <!-- Template :: obs medicijngebruik_tijdens_zwangerschap -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41588">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="ingrijpende_gebeurtenissen">
                <component>
                    <!-- Template :: obs Ingrijpende gebeurtenissen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40755">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="a_terme_datum">
                <component>
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41578">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="kinkhoest_doorgemaakt_na_zwangerschapsduur_12w6d">
                <component>
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41580">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="kinkhoestvaccinatie_gekregen_na_zwangerschapsduur_12w6d">
                <component>
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41582">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="stollingsstoornis">
                <component>
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41585">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="chronisch_drager_hepatitisb">
                <component>
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41586">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
        </rubricCluster>
    </xsl:template>
    
    <!-- Placeholder mapping obs template 1 -->
    <!-- obs In de omgeving van de jeugdige wordt wel eens of dagelijks gerookt -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41665">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41665"/>
            <code code="1665" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1665'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: In de omgeving van de jeugdige wordt wel eens of dagelijks gerookt-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!-- Placeholder mapping obs template 2 -->
    <!-- obs Toelichting roken in omgeving van de jeugdige -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41666">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41666"/>
            <code code="1666" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1666'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Toelichting roken in omgeving van de jeugdige-->
            <xsl:call-template name="makeSTValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!-- Placeholder mapping obs template 3 -->
    <!-- obs Jeugdige heeft zwemdiploma -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41668">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41668"/>
            <code code="1668" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1668'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Jeugdige heeft zwemdiploma-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!-- Placeholder mapping obs template 4 -->
    <!-- Placeholder mapping obs template 5 -->
    <!-- Placeholder mapping obs template 6 -->
    <!-- Placeholder mapping obs template 7 -->
    <!-- Placeholder mapping obs template 8 -->

    <!-- obs Stoppen met roken interventie besproken -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41667">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41667"/>
            <code code="1667" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1667'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Stoppen met roken interventie besproken-->
            <xsl:call-template name="makeBLValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
</xsl:stylesheet>

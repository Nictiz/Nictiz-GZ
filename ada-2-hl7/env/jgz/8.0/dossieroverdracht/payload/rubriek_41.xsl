<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.11041">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <rubricCluster xmlns="urn:hl7-org:v3" classCode="CLUSTER" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.11041"/>
            <code code="R041" codeSystem="2.16.840.1.113883.2.4.4.40.391">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'R041'][@codeSystem = '2.16.840.1.113883.2.4.4.40.391']/@displayName"/>
            </code>
            <!-- Vaccinatie -->
            <!-- Contra-indicatie om (nu) te vaccineren -->
            <xsl:for-each select="contraindicatie_om_nu_te_vaccineren">
                <component>
                    <!-- Template :: obs Contra-indicatie om (nu) te vaccineren -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41644">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!-- de_kinderarts_heeft_een_contraindicatie_voor_vaccinatie_doorgegeven -->
            <xsl:for-each select="de_kinderarts_heeft_een_contraindicatie_voor_vaccinatie_doorgegeven">
                <component>
                    <!-- Template :: obs De kinderarts heeft een contra-indicatie voor vaccinatie doorgegeven -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41682">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!-- Toelichting contra-indicatie om (nu) te vaccineren -->
            <xsl:for-each select="toelichting_contraindicatie_om_nu_te_vaccineren">
                <component>
                    <!-- Template :: obs Toelichting contra-indicatie om (nu) te vaccineren -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41645">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <!-- moeder_heeft_biological_gebruikt -->
            <xsl:for-each select="moeder_heeft_biological_gebruikt">
                <component>
                    <!-- Template :: obs Moeder heeft biological gebruikt -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41683">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="uitslag_serologisch_onderzoek_hepatitis_b">
                <component>
                    <!-- Template :: obs Uitslag serologisch onderzoek Hepatitis B -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40869">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bcg_litteken">
                <component>
                    <!-- Template :: obs BCG-litteken -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.45063">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="vaccinatieschema_dktp">
                <component>
                    <observation negationInd="false">
                        <!-- Template :: obs Vaccinatieschema DKTP -->
                        <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41584">
                            <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                        </xsl:call-template>
                    </observation>
                </component>
            </xsl:for-each>
            <xsl:for-each select="reden_afwijkend_schema">
                <component>
                    <!-- Template :: obs Reden afwijkend schema  -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40870">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="toelichting_afwijkend_schema">
                <component>
                    <!-- Template :: obs Toelichting afwijkend schema  -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40871">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="datum_maternale_kinkhoestvaccinatie">
                <component>
                    <!-- Template :: obs Datum maternale kinkhoestvaccinatie -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41587">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
        </rubricCluster>
    </xsl:template>
    
    <!-- Placeholder BDS element vaccinatie -->
    <!-- Placeholder BDS element 1644 -->
    <!-- obs Contra-indicatie om (nu) te vaccineren -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41644">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41644"/>
            <code code="1644" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1644'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Contra-indicatie om (nu) te vaccineren-->
            <xsl:call-template name="makeBLValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    <!-- Placeholder BDS element 1682 -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41682">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41682"/>
            <code code="1682" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1682'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: De kinderarts heeft een contra-indicatie voor vaccinatie doorgegeven-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    <!-- Placeholder BDS element 1645 -->
    <!-- obs Toelichting contra-indicatie om (nu) te vaccineren -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41645">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41645"/>
            <code code="1645" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1645'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Toelichting contra-indicatie om (nu) te vaccineren-->
            <xsl:call-template name="makeSTValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    <!-- Placeholder BDS element 1683 -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41683">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41683"/>
            <code code="1683" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1683'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Moeder heeft biological gebruikt-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
   
</xsl:stylesheet>

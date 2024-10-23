<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.11026">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <rubricCluster xmlns="urn:hl7-org:v3" classCode="CLUSTER" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.11026"/>
            <code code="R026" codeSystem="2.16.840.1.113883.2.4.4.40.391">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'R026'][@codeSystem = '2.16.840.1.113883.2.4.4.40.391']/@displayName"/>
            </code>
            <xsl:for-each select="genitaliapuberteitsontwikkeling">
                <component>
                    <!-- Template :: obs Genitalia/puberteitsontwikkeling -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41674">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_genitaliapuberteitsontwikkeling">
                <component>
                    <!-- Template :: obs Bijzonderheden genitalia/puberteitsontwikkeling -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40228">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="borstontwikkeling_meisje">
                <component>
                    <!-- Template :: obs Borstontwikkeling meisje -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40317">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="pubesbeharing_meisje">
                <component>
                    <!-- Template :: obs Pubesbeharing meisje -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40825">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="datum_menarche">
                <component>
                    <!-- Template :: obs Datum menarche -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40312">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_menstruatie">
                <component>
                    <!-- Template :: obs Bijzonderheden menstruatie -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40824">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="ligging_testes">
                <component>
                    <!-- Template :: obs Ligging testes -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41672">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_testis_rechts">
                <component>
                    <!-- Template :: obs Bijzonderheden testis rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40422">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_testis_links">
                <component>
                    <!-- Template :: obs Bijzonderheden testis links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41392">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="ontwikkeling_genitalia_jongen">
                <component>
                    <!-- Template :: obs Ontwikkeling genitalia jongen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40313">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="pubesbeharing_jongen">
                <component>
                    <!-- Template :: obs Pubesbeharing jongen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40315">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="beoordeling_puberteitsontwikkeling">
                <component>
                    <!-- Template :: obs Bijzonderheden anus -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41673">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
        </rubricCluster>
    </xsl:template>
    
    <!-- Placeholder obs mapping 1 -->
    <!-- obs Ligging testes -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41672">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41672"/>
            <code code="1672" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1672'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Ligging testes-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!-- Placeholder obs mapping 2 -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41673">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41673"/>
            <code code="1673" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1673'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: beoordeling_puberteitsontwikkeling-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!-- Placeholder obs mapping 3 -->
    <!-- obs Genitalia/puberteitsontwikkeling -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41674">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41674"/>
            <code code="1674" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1674'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Genitalia/puberteitsontwikkeling-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    <!-- Placeholder obs mapping 4 -->
    <!-- Placeholder obs mapping 5 -->
    <!-- Placeholder obs mapping 6 -->
    <!-- Placeholder obs mapping 7 -->
    <!-- Placeholder obs mapping 8 -->
    <!-- Placeholder obs mapping 9 -->
    <!-- Placeholder obs mapping 10 -->
    <!-- Placeholder obs mapping 11 -->
    <!-- Placeholder obs mapping 12 -->
    <!-- Placeholder obs mapping 13 -->
    <!-- Placeholder obs mapping 14 -->
    <!-- Placeholder obs mapping 15 -->

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.40313">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.40313"/>
            <code code="313" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '313'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: ontwikkeling_genitalia_jongen-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.40315">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.40315"/>
            <code code="315" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '315'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: pubesbeharing_jongen-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.40317">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.40317"/>
            <code code="317" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '317'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: borstontwikkeling_meisje-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.40825">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.40825"/>
            <code code="825" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '825'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: pubesbeharing_meisje-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
</xsl:stylesheet>

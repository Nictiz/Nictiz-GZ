<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.11039">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <rubricCluster xmlns="urn:hl7-org:v3" classCode="CLUSTER" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.11039"/>
            <code code="R039" codeSystem="2.16.840.1.113883.2.4.4.40.391">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'R039'][@codeSystem = '2.16.840.1.113883.2.4.4.40.391']/@displayName"/>
            </code>
            <xsl:for-each select="hart_en_vaatstelsel">
                <component>
                    <!-- Template :: obs Hart- en Vaatstelsel -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41681">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="risicosignalen_hartfunctie">
                <component>
                    <!-- Template :: obs Risicosignalen hartfunctie -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41680">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="groep_g044_geruis_intensiteit">
                <component>
                    <groupCluster>
                        <code code="G044" codeSystem="2.16.840.1.113883.2.4.4.40.393">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'G044'][@codeSystem = '2.16.840.1.113883.2.4.4.40.393']/@displayName"/>
                        </code>
                        <xsl:for-each select="geruis_intensiteit">
                            <component>
                                <!-- Template :: obs Geruis intensiteit -->
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40856">
                                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                        <xsl:for-each select="geruis_timing">
                            <component>
                                <!-- Template :: obs Geruis timing -->
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40858">
                                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                        <xsl:for-each select="lokalisatie">
                            <component>
                                <!-- Template :: obs Lokalisatie -->
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40859">
                                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                        <xsl:for-each select="voortgeleiding">
                            <component>
                                <!-- Template :: obs Voortgeleiding -->
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40860">
                                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                    </groupCluster>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_harttonen">
                <component>
                    <!-- Template :: obs Bijzonderheden harttonen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40861">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_hartritme">
                <component>
                    <!-- Template :: obs Bijzonderheden hartritme -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40862">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bloeddruk_systolisch">
                <component>
                    <!-- Template :: obs Bloeddruk systolisch -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41486">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bloeddruk_diastolisch">
                <component>
                    <!-- Template :: obs Bloeddruk diastolisch -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41487">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="lever">
                <component>
                    <!-- Template :: obs Lever -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40206">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="milt">
                <component>
                    <!-- Template :: obs Milt -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40207">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="a_femoralis_rechts">
                <component>
                    <!-- Template :: obs A. femoralis rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40146">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="a_femoralis_links">
                <component>
                    <!-- Template :: obs A. femoralis links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40746">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="overige_bijzonderheden_hartonderzoek">
                <component>
                    <!-- Template :: obs Overige bijzonderheden hartonderzoek -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40428">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
        </rubricCluster>
    </xsl:template>

    <!-- Placeholder template -->
    <!-- obs Hart- en Vaatstelsel -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41681">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41681"/>
            <code code="1681" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1681'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Hart- en Vaatstelsel-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!-- obs Risicosignalen hartfunctie -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41680">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41680"/>
            <code code="1680" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1680'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Risicosignalen hartfunctie-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!-- Placeholder template -->
    <!-- Placeholder template -->
    <!-- Placeholder template -->
    <!-- Placeholder template -->
    <!-- Placeholder template -->
    <!-- Placeholder template -->
    <!-- Placeholder template -->
</xsl:stylesheet>

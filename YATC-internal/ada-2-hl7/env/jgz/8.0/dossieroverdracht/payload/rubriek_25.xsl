<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.11025">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <rubricCluster xmlns="urn:hl7-org:v3" classCode="CLUSTER" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.11025"/>
            <code code="R025" codeSystem="2.16.840.1.113883.2.4.4.40.391">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'R025'][@codeSystem = '2.16.840.1.113883.2.4.4.40.391']/@displayName"/>
            </code>
            <xsl:for-each select="bewegingsapparaat_onderzocht">
                <component>
                    <!-- Template :: obs Bewegingsapparaat onderzocht -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40212">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="groep_g024_wervelkolom">
                <component>
                    <groupCluster>
                        <code code="G024" codeSystem="2.16.840.1.113883.2.4.4.40.393">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'G024'][@codeSystem = '2.16.840.1.113883.2.4.4.40.393']/@displayName"/>
                        </code>
                        <xsl:for-each select="bijzonderheden_wervelkolom">
                            <component>
                                <!-- Template :: obs Bijzonderheden wervelkolom -->
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40217">
                                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                    </groupCluster>
                </component>
            </xsl:for-each>
            <xsl:for-each select="hoogteverschil_gibbus_bij_scoliose">
                <component>
                    <!-- Template :: obs Hoogteverschil gibbus bij scoliose -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40800">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="groep_g119_scoliose_hoekmeting">
                <component>
                    <groupCluster>
                        <code code="G119" codeSystem="2.16.840.1.113883.2.4.4.40.393">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'G119'][@codeSystem = '2.16.840.1.113883.2.4.4.40.393']/@displayName"/>
                        </code>
                        <xsl:for-each select="scoliose_hoekmeting">
                            <component>
                                <!-- Template :: obs Bijzonderheden heupen -->
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41671">
                                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                    </groupCluster>
                </component>
            </xsl:for-each>
            <xsl:for-each select="groep_g026_heupen">
                <component>
                    <groupCluster>
                        <code code="G026" codeSystem="2.16.840.1.113883.2.4.4.40.393">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'G026'][@codeSystem = '2.16.840.1.113883.2.4.4.40.393']/@displayName"/>
                        </code>
                        <xsl:for-each select="bijzonderheden_heupen">
                            <component>
                                <!-- Template :: obs Bijzonderheden heupen -->
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40219">
                                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                    </groupCluster>
                </component>
            </xsl:for-each>
            <xsl:for-each select="toelichting_bijzonderheden_heupen">
                <component>
                    <!-- Template :: obs Toelichting bijzonderheden heupen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41446">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_bovenste_extremiteiten">
                <component>
                    <!-- Template :: obs Bijzonderheden bovenste extremiteiten -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40802">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_hand_rechts">
                <component>
                    <!-- Template :: obs Bijzonderheden hand rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41426">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_hand_links">
                <component>
                    <!-- Template :: obs Bijzonderheden hand links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41425">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="groep_g028_onderste_extremiteiten">
                <component>
                    <groupCluster>
                        <code code="G028" codeSystem="2.16.840.1.113883.2.4.4.40.393">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'G028'][@codeSystem = '2.16.840.1.113883.2.4.4.40.393']/@displayName"/>
                        </code>
                        <xsl:for-each select="bijzonderheden_onderste_extremiteiten">
                            <component>
                                <!-- Template :: obs Bijzonderheden onderste extremiteiten -->
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40221">
                                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                    </groupCluster>
                </component>
            </xsl:for-each>
            <xsl:for-each select="beenlengteverschil">
                <component>
                    <!-- Template :: obs Beenlengteverschil -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40804">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_voet_rechts">
                <component>
                    <!-- Template :: obs Bijzonderheden voet rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40223">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_voet_links">
                <component>
                    <!-- Template :: obs Bijzonderheden voet links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40805">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
        </rubricCluster>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41671">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41671"/>
            <code code="1671" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1671'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: scoliose_hoekmeting-->
            <xsl:call-template name="makeINTValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
            <!-- Item(s) :: lichaamskant_scoliose_hoekmeting-->
            <xsl:for-each select="../lichaamskant_scoliose_hoekmeting">
                <xsl:call-template name="makeCVValue">
                    <xsl:with-param name="xsiType" select="''"/>
                    <xsl:with-param name="elemName">targetSiteCode</xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
        </observation>
    </xsl:template>
</xsl:stylesheet>

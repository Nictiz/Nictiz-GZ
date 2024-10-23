<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.11023">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <rubricCluster xmlns="urn:hl7-org:v3" classCode="CLUSTER" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.11023"/>
            <code code="R023" codeSystem="2.16.840.1.113883.2.4.4.40.391">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'R023'][@codeSystem = '2.16.840.1.113883.2.4.4.40.391']/@displayName"/>
            </code>
            <xsl:for-each select="hoofdhals_onderzocht">
                <component>
                    <!-- Template :: obs Hoofd/hals onderzocht -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40167">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="voorkeurshouding">
                <component>
                    <!-- Template :: obs Voorkeurshouding -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41678">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="groep_g023_hoofd">
                <component>
                    <groupCluster>
                        <code code="G023" codeSystem="2.16.840.1.113883.2.4.4.40.393">
                            <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'G023'][@codeSystem = '2.16.840.1.113883.2.4.4.40.393']/@displayName"/>
                        </code>
                        <xsl:for-each select="bijzonderheden_hoofd">
                            <component>
                                <!-- Template :: obs Bijzonderheden hoofd -->
                                <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40170">
                                    <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                                </xsl:call-template>
                            </component>
                        </xsl:for-each>
                    </groupCluster>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_uiterlijk_oor_rechts">
                <component>
                    <!-- Template :: obs Bijzonderheden uiterlijk oor rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40794">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_uiterlijk_oor_links">
                <component>
                    <!-- Template :: obs Bijzonderheden uiterlijk oor links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40795">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_trommelvlies_rechts">
                <component>
                    <!-- Template :: obs Bijzonderheden trommelvlies rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40174">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_trommelvlies_links">
                <component>
                    <!-- Template :: obs Bijzonderheden trommelvlies links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40175">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_neus">
                <component>
                    <!-- Template :: obs Bijzonderheden neus -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40176">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_mondtong">
                <component>
                    <!-- Template :: obs Bijzonderheden mond/tong -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40796">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_tonsillen">
                <component>
                    <!-- Template :: obs Bijzonderheden tonsillen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40184">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_hals">
                <component>
                    <!-- Template :: obs Bijzonderheden hals -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40797">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_gebitkaak">
                <component>
                    <!-- Template :: obs Bijzonderheden gebit/kaak -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40193">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
        </rubricCluster>
    </xsl:template>
    
    <!-- placeholder template mapping -->
    <!-- obs Voorkeurshouding -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41678">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41678"/>
            <code code="1678" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1678'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Voorkeurshouding-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!-- placeholder template mapping -->
    <!-- placeholder template mapping -->
    <!-- placeholder template mapping -->
    <!-- placeholder template mapping -->
    <!-- placeholder template mapping -->
    <!-- placeholder template mapping -->
    <!-- placeholder template mapping -->
    <!-- placeholder template mapping -->
    <!-- placeholder template mapping -->

</xsl:stylesheet>

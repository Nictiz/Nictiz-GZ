<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.11043">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <rubricCluster xmlns="urn:hl7-org:v3" classCode="CLUSTER" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.11043"/>
            <code code="R043" codeSystem="2.16.840.1.113883.2.4.4.40.391">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'R043'][@codeSystem = '2.16.840.1.113883.2.4.4.40.391']/@displayName"/>
            </code>
            <xsl:for-each select="gebruikt_hand">
                <component>
                    <!-- Template :: obs Gebruikt hand -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41382">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="observatie_bij_oefeningen">
                <component>
                    <!-- Template :: obs Observatie bij oefeningen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41005">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_1_figuren_natekenen__kwantiteit">
                <component>
                    <!-- Template :: obs 1. Figuren natekenen - kwantiteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41007">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_2_lijntrekken__kwantiteit">
                <component>
                    <!-- Template :: obs 2. Lijntrekken - kwantiteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41008">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_3_stippen_zetten__kwantiteit">
                <component>
                    <!-- Template :: obs 3. Stippen zetten - kwantiteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41010">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_4_vingerduim_oppositie__kwantiteit_rechts">
                <component>
                    <!-- Template :: obs 4. Vinger-duim oppositie - kwantiteit rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41012">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_4_vingerduim_oppositie__kwantiteit_links">
                <component>
                    <!-- Template :: obs 4. Vinger-duim oppositie - kwantiteit links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41013">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_5_oogbewegingen__kwantiteit">
                <component>
                    <!-- Template :: obs 5. Oogbewegingen - kwantiteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41015">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_6_topneus_proef__kwantiteit_rechts">
                <component>
                    <!-- Template :: obs 6. Top-neus proef - kwantiteit rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41017">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_6_topneus_proef__kwantiteit_links">
                <component>
                    <!-- Template :: obs 6. Top-neus proef - kwantiteit links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41018">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_7_diadochokinese__kwantiteit_rechts">
                <component>
                    <!-- Template :: obs 7. Diadochokinese - kwantiteit rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41019">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_7_diadochokinese__kwantiteit_links">
                <component>
                    <!-- Template :: obs 7. Diadochokinese - kwantiteit links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41020">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_8_veter_strikken__kwantiteit">
                <component>
                    <!-- Template :: obs 8. Veter strikken - kwantiteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41022">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_9_een_been_staan__kwantiteit_rechts">
                <component>
                    <!-- Template :: obs 9. Eén been staan - kwantiteit rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41023">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_9_een_been_staan__kwantiteit_links">
                <component>
                    <!-- Template :: obs 9. Eén been staan - kwantiteit links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41024">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_10_hielen_lopen__kwantiteit">
                <component>
                    <!-- Template :: obs 10. Hielen lopen - kwantiteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41026">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_11_streeplopen__kwantiteit">
                <component>
                    <!-- Template :: obs 11. Streeplopen - kwantiteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41028">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_12_hinkelen__kwantiteit_rechts">
                <component>
                    <!-- Template :: obs 12. Hinkelen - kwantiteit rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41030">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_12_hinkelen__kwantiteit_links">
                <component>
                    <!-- Template :: obs 12. Hinkelen - kwantiteit links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41031">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_13_springen__kwantiteit">
                <component>
                    <!-- Template :: obs 13. Springen - kwantiteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41033">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_2_lijntrekken__kwaliteit">
                <component>
                    <!-- Template :: obs 2. Lijntrekken - kwaliteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41009">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_3_pengreep__kwaliteit">
                <component>
                    <!-- Template :: obs 3. Pengreep - kwaliteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41011">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_4_vingerduim_oppositie__kwaliteit">
                <component>
                    <!-- Template :: obs 4. Vinger-duim oppositie - kwaliteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41014">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_5_oogbewegingen__kwaliteit">
                <component>
                    <!-- Template :: obs 5. Oogbewegingen - kwaliteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41016">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_7_diadochokinese__kwaliteit">
                <component>
                    <!-- Template :: obs 7. Diadochokinese - kwaliteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41021">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_9_een_been_staan__kwaliteit">
                <component>
                    <!-- Template :: obs 9. Eén been staan - kwaliteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41025">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_10_hielen_lopen__kwaliteit">
                <component>
                    <!-- Template :: obs 10. Hielen lopen - kwaliteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41027">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_11_streeplopen__kwaliteit">
                <component>
                    <!-- Template :: obs 11. Streeplopen - kwaliteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41029">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_12_hinkelen__kwaliteit">
                <component>
                    <!-- Template :: obs 12. Hinkelen - kwaliteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41032">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_13_springen__kwaliteit">
                <component>
                    <!-- Template :: obs 13. Springen - kwaliteit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41034">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="is_er_sprake_van_fysieke_belemmeringen">
                <component>
                    <!-- Template :: obs Is er sprake van fysieke belemmeringen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41035">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_fysieke_belemmeringen">
                <component>
                    <!-- Template :: obs Bijzonderheden fysieke belemmeringen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41036">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="is_er_sprake_van_negatieve_kindfactoren">
                <component>
                    <!-- Template :: obs Is er sprake van negatieve kindfactoren -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41037">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_negatieve_kindfactoren">
                <component>
                    <!-- Template :: obs Bijzonderheden negatieve kindfactoren -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41038">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="is_er_sprake_van_negatieve_omgevingsfactoren">
                <component>
                    <!-- Template :: obs Is er sprake van negatieve omgevingsfactoren -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41039">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_negatieve_omgevingsfactoren">
                <component>
                    <!-- Template :: obs Bijzonderheden negatieve omgevingsfactoren -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41040">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="percentiel">
                <component>
                    <!-- Template :: obs Percentiel -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41042">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_bfmt">
                <component>
                    <!-- Template :: obs Bijzonderheden BFMT -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41045">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
        </rubricCluster>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41005">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41005"/>
            <code code="1005" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1005'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: observatie_bij_oefeningen-->
            <xsl:call-template name="makeSTValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41007">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41007"/>
            <code code="1007" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1007'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _1_figuren_natekenen__kwantiteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41008">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41008"/>
            <code code="1008" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1008'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _2_lijntrekken__kwantiteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41009">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41009"/>
            <code code="1009" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1009'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _2_lijntrekken__kwaliteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41010">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41010"/>
            <code code="1010" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1010'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _3_stippen_zetten__kwantiteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41011">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41011"/>
            <code code="1011" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1011'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _3_pengreep__kwaliteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41012">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41012"/>
            <code code="1012" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1012'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _4_vingerduim_oppositie__kwantiteit_rechts-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41013">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41013"/>
            <code code="1013" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1013'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _4_vingerduim_oppositie__kwantiteit_links-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41014">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41014"/>
            <code code="1014" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1014'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _4_vingerduim_oppositie__kwaliteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41015">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41015"/>
            <code code="1015" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1015'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _5_oogbewegingen__kwantiteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41016">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41016"/>
            <code code="1016" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1016'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _5_oogbewegingen__kwaliteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41017">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41017"/>
            <code code="1017" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1017'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _6_topneus_proef__kwantiteit_rechts-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41018">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41018"/>
            <code code="1018" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1018'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _6_topneus_proef__kwantiteit_links-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41019">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41019"/>
            <code code="1019" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1019'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _7_diadochokinese__kwantiteit_rechts-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41020">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41020"/>
            <code code="1020" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1020'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _7_diadochokinese__kwantiteit_links-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41021">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41021"/>
            <code code="1021" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1021'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _7_diadochokinese__kwaliteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41022">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41022"/>
            <code code="1022" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1022'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _8_veter_strikken__kwantiteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41023">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41023"/>
            <code code="1023" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1023'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _9_een_been_staan__kwantiteit_rechts-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41024">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41024"/>
            <code code="1024" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1024'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _9_een_been_staan__kwantiteit_links-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41025">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41025"/>
            <code code="1025" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1025'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _9_een_been_staan__kwaliteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41026">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41026"/>
            <code code="1026" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1026'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _10_hielen_lopen__kwantiteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41027">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41027"/>
            <code code="1027" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1027'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _10_hielen_lopen__kwaliteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41028">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41028"/>
            <code code="1028" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1028'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _11_streeplopen__kwantiteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41029">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41029"/>
            <code code="1029" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1029'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _11_streeplopen__kwaliteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41030">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41030"/>
            <code code="1030" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1030'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _12_hinkelen__kwantiteit_rechts-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41031">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41031"/>
            <code code="1031" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1031'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _12_hinkelen__kwantiteit_links-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41032">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41032"/>
            <code code="1032" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1032'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _12_hinkelen__kwaliteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41033">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41033"/>
            <code code="1033" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1033'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _13_springen__kwantiteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41034">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41034"/>
            <code code="1034" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1034'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _13_springen__kwaliteit-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41035">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41035"/>
            <code code="1035" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1035'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: is_er_sprake_van_fysieke_belemmeringen-->
            <xsl:call-template name="makeBLValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41036">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41036"/>
            <code code="1036" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1036'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: bijzonderheden_fysieke_belemmeringen-->
            <xsl:call-template name="makeSTValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41037">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41037"/>
            <code code="1037" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1037'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: is_er_sprake_van_negatieve_kindfactoren-->
            <xsl:call-template name="makeBLValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41038">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41038"/>
            <code code="1038" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1038'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: bijzonderheden_negatieve_kindfactoren-->
            <xsl:call-template name="makeSTValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41039">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41039"/>
            <code code="1039" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1039'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: is_er_sprake_van_negatieve_omgevingsfactoren-->
            <xsl:call-template name="makeBLValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41040">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41040"/>
            <code code="1040" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1040'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: bijzonderheden_negatieve_omgevingsfactoren-->
            <xsl:call-template name="makeSTValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41042">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41042"/>
            <code code="1042" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1042'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: percentiel-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41045">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41045"/>
            <code code="1045" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1045'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: bijzonderheden_bfmt-->
            <xsl:call-template name="makeSTValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41382">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41382"/>
            <code code="1382" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1382'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: gebruikt_hand-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

</xsl:stylesheet>

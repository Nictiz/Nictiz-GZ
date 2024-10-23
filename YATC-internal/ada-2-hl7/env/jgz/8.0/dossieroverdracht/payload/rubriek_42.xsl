<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.11042">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <rubricCluster xmlns="urn:hl7-org:v3" classCode="CLUSTER" moodCode="EVN">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.11042"/>
            <code code="R042" codeSystem="2.16.840.1.113883.2.4.4.40.391">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = 'R042'][@codeSystem = '2.16.840.1.113883.2.4.4.40.391']/@displayName"/>
            </code>
            <xsl:for-each select="kolom_van_wiechen_onderzoek">
                <component>
                    <!-- Template :: obs 1531. kolom_van_wiechen_onderzoek -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41531">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="gedragstoestand_van_wiechen">
                <component>
                    <!-- Template :: obs Gedragstoestand Van Wiechen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40877">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="interactie_van_wiechen">
                <component>
                    <!-- Template :: obs Interactie Van Wiechen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40878">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_1_ogen_fixeren">
                <component>
                    <!-- Template :: obs 1. Ogen fixeren -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40879">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_1">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 1 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40880">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_2_volgt_met_ogen_en_hoofd_30030_rechts">
                <component>
                    <!-- Template :: obs 2. Volgt met ogen èn hoofd 30º-0º-30º rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40881">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_2_volgt_met_ogen_en_hoofd_30030_links">
                <component>
                    <!-- Template :: obs 2. Volgt met ogen èn hoofd 30º-0º-30º links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40883">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_2">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 2 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40882">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_3_handen_af_en_toe_open_rechts">
                <component>
                    <!-- Template :: obs 3. Handen af en toe open rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40884">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_3_handen_af_en_toe_open_links">
                <component>
                    <!-- Template :: obs 3. Handen af en toe open links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40885">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_3">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 3 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41240">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_4_kijkt_naar_eigen_handen">
                <component>
                    <!-- Template :: obs 4. Kijkt naar eigen handen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40886">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_4">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 4 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41241">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_5_speelt_met_handen_middenvoor">
                <component>
                    <!-- Template :: obs 5. Speelt met handen middenvoor -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40887">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_5">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 5 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41242">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_6_pakt_in_rugligging_voorwerp_binnen_bereik_rechts">
                <component>
                    <!-- Template :: obs 6. Pakt in rugligging voorwerp binnen bereik rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40888">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_6_pakt_in_rugligging_voorwerp_binnen_bereik_links">
                <component>
                    <!-- Template :: obs 6. Pakt in rugligging voorwerp binnen bereik links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40889">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_6">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 6 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41243">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_7_pakt_blokje_over">
                <component>
                    <!-- Template :: obs 7. Pakt blokje over -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40890">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_7">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 7 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41244">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_8_houdt_blokje_vast_pakt_er_nog_een_in_andere_hand">
                <component>
                    <!-- Template :: obs 8. Houdt blokje vast, pakt er nog een in andere hand -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40891">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_8">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 8 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41245">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_9_speelt_met_beide_voeten_rechts">
                <component>
                    <!-- Template :: obs 9. Speelt met beide voeten rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40892">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_9_speelt_met_beide_voeten_links">
                <component>
                    <!-- Template :: obs 9. Speelt met beide voeten links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40893">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_9">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 9 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41246">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_10_pakt_propje_met_duim_en_wijsvinger_rechts">
                <component>
                    <!-- Template :: obs 10. Pakt propje met duim en wijsvinger rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40894">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_10_pakt_propje_met_duim_en_wijsvinger_links">
                <component>
                    <!-- Template :: obs 10. Pakt propje met duim en wijsvinger links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40896">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_10">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 10 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40895">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_11_doet_blokje_inuit_doos_rechts">
                <component>
                    <!-- Template :: obs 11. Doet blokje in/uit doos rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40897">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_11_doet_blokje_inuit_doos_links">
                <component>
                    <!-- Template :: obs 11. Doet blokje in/uit doos links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40898">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_11">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 11 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40899">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_12_speelt_geven_en_nemen">
                <component>
                    <!-- Template :: obs 12. Speelt "geven en nemen" -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40900">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_12">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 12 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40901">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_13_stapelt_2_blokjes_rechts">
                <component>
                    <!-- Template :: obs 13. Stapelt 2 blokjes rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40902">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_13_stapelt_2_blokjes_links">
                <component>
                    <!-- Template :: obs 13. Stapelt 2 blokjes links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40903">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_13">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 13 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40904">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_14_gaat_op_onderzoek_uit">
                <component>
                    <!-- Template :: obs 14. Gaat op onderzoek uit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40905">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_14">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 14 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41247">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_15_stapelt_3_blokjes_rechts">
                <component>
                    <!-- Template :: obs 15. Stapelt 3 blokjes rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40906">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_15_stapelt_3_blokjes_links">
                <component>
                    <!-- Template :: obs 15. Stapelt 3 blokjes links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40907">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_15">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 15 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40908">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_16_doet_anderen_na">
                <component>
                    <!-- Template :: obs 16. Doet anderen na -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40909">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_16">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 16 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41248">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_17_stapelt_6_blokjes">
                <component>
                    <!-- Template :: obs 17. Stapelt 6 blokjes -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40910">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_17">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 17 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40911">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_18_plaatst_ronde_vorm_in_stoof">
                <component>
                    <!-- Template :: obs 18. Plaatst ronde vorm in stoof -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40912">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_18">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 18 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41249">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_19_trekt_kledingstuk_uit">
                <component>
                    <!-- Template :: obs 19. Trekt kledingstuk uit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40913">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_19">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 19 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41250">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_20_bouwt_vrachtauto_na">
                <component>
                    <!-- Template :: obs 20. Bouwt vrachtauto na -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40914">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_20">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 20 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40915">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_21_plaatst_3_vormen_in_stoof">
                <component>
                    <!-- Template :: obs 21. Plaatst 3 vormen in stoof -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40916">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_21">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 21 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41251">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_22_tekent_verticale_lijn_na">
                <component>
                    <!-- Template :: obs 22. Tekent verticale lijn na -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40917">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_22">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 22 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41252">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_23_bouwt_brug_na">
                <component>
                    <!-- Template :: obs 23. Bouwt brug na -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40918">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_23">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 23 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40919">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_24_plaatst_4_vormen_in_stoof">
                <component>
                    <!-- Template :: obs 24. Plaatst 4 vormen in stoof -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40920">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_24">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 24 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41253">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_25_trekt_eigen_kledingstuk_aan">
                <component>
                    <!-- Template :: obs 25. Trekt eigen kledingstuk aan -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40921">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_25">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 25 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41254">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_26_tekent_cirkel_na">
                <component>
                    <!-- Template :: obs 26. Tekent cirkel na -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40922">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_26">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 26 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41255">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_27_houdt_potlood_met_vingers_vast">
                <component>
                    <!-- Template :: obs 27. Houdt potlood met vingers vast -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40923">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_27">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 27 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40925">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_28_tekent_kruis_na">
                <component>
                    <!-- Template :: obs 28. Tekent kruis na -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40926">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_28">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 28 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41256">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_29_reageert_op_toespreken">
                <component>
                    <!-- Template :: obs 29. Reageert op toespreken -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40927">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_29">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 29 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41257">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_30_lacht_terug">
                <component>
                    <!-- Template :: obs 30. Lacht terug -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40928">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_30">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 30 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41258">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="lacht_eerste_keer_terug">
                <component>
                    <!-- Template :: obs Lacht eerste keer terug -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40929">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_31_maakt_geluiden_terug">
                <component>
                    <!-- Template :: obs 31. Maakt geluiden terug -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40930">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_31">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 31 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41259">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_32_maakt_gevarieerde_geluiden">
                <component>
                    <!-- Template :: obs 32. Maakt gevarieerde geluiden -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40931">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_32">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 32 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41260">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_33_zegt_dadababa_of_gaga">
                <component>
                    <!-- Template :: obs 33. Zegt "dada-baba" of "gaga" -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40932">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_33">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 33 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41261">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_34_brabbelt_bij_zijn_spel">
                <component>
                    <!-- Template :: obs 34. Brabbelt bij zijn spel -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40933">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_34">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 34 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41262">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_35_reageert_op_mondeling_verzoek">
                <component>
                    <!-- Template :: obs 35. Reageert op mondeling verzoek -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40934">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_35">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 35 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41263">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_36_maakt_communicatieve_gebaren">
                <component>
                    <!-- Template :: obs 36. Maakt communicatieve gebaren" -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40935">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_36">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 36 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41264">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_37_zegt_2_geluidswoorden_met_begrip">
                <component>
                    <!-- Template :: obs 37. Zegt 2 "geluidswoorden" met begrip -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40936">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_37">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 37 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41265">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_38_begrijpt_enkele_dagelijks_gebruikte_zinnen">
                <component>
                    <!-- Template :: obs 38. Begrijpt enkele dagelijks gebruikte zinnen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40937">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_38">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 38 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41266">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_39_zegt_3_woorden_met_begrip">
                <component>
                    <!-- Template :: obs 39. Zegt 3 'woorden'met begrip -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40938">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_39">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 39 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41267">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_40_begrijpt_fantasieopdrachtjes_m">
                <component>
                    <!-- Template :: obs 40. Begrijpt spelopdrachtjes -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40939">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_40">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 40 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41268">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_41_zegt_zinnen_van_2_woorden">
                <component>
                    <!-- Template :: obs 41. Zegt "zinnen" van 2 woorden -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40940">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_41">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 41 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41269">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="score_op_aanvullende_vragen_op_ontwikkelingskenmerk_41">
                <component>
                    <!-- Template :: obs Score op aanvullende vragen op ontwikkelingskenmerk  -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41684">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_42_wijst_6_lichaamsdelen_aan_bij_pop">
                <component>
                    <!-- Template :: obs 42. Wijst 6 lichaamsdelen aan bij pop -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40941">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_42">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 42 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40942">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="score_spelvraag_van_wiechentaalonderzoek">
                <component>
                    <!-- Template :: obs Score spelvraag Van Wiechentaalonderzoek -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41686">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_43_noemt_zichzelf_mij_of_ik">
                <component>
                    <!-- Template :: obs 43. Noemt zichzelf "mij" of "ik" -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40943">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_43">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 43 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40944">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_44_wijst_5_plaatjes_aan_in_boek">
                <component>
                    <!-- Template :: obs 44. Wijst 5 plaatjes aan in boek -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40945">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_44">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 44 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40946">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_45_zegt_zinnen_van_3_of_meer_woorden">
                <component>
                    <!-- Template :: obs 45. Zegt "zinnen" van 3 of meer woorden -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40947">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_45">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 45 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41270">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_46_is_verstaanbaar_voor_bekenden">
                <component>
                    <!-- Template :: obs 46. Is verstaanbaar voor bekenden -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40948">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_46">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 46 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41271">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_47_praat_spontaan_over_gebeurtenissen_thuisspeelzaal">
                <component>
                    <!-- Template :: obs 47. Praat spontaan over gebeurtenissen thuis/speelzaal -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40949">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_47">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 47 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41272">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_48_stelt_vragen_naar_wie_wat_waar_hoe">
                <component>
                    <!-- Template :: obs 48. Stelt vragen naar "wie", "wat", "waar", "hoe" -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40950">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_48">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 48 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41273">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_49_is_goed_verstaanbaar_voor_onderzoeker">
                <component>
                    <!-- Template :: obs 49. Is goed verstaanbaar voor onderzoeker -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40951">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_49">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 49 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40952">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_50_stelt_vragen_naar_hoeveel_wanneer_waarom">
                <component>
                    <!-- Template :: obs 50. Stelt vragen naar "hoeveel", "wanneer", "waarom" -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40953">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_50">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 50 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41274">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_51_begrijpt_analogieen_en_tegenstellingen">
                <component>
                    <!-- Template :: obs 51. Begrijpt analogieën en tegenstellingen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40954">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_51">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 51 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41275">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_52_beweegt_armen_evenveel">
                <component>
                    <!-- Template :: obs 52. Beweegt armen evenveel -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41669">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_52">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 52 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40957">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_53_beweegt_benen_evenveel">
                <component>
                    <!-- Template :: obs 53. Beweegt benen evenveel -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41670">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_53">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 53 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40960">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_54_blijft_hangen_bij_optillen_onder_de_oksels">
                <component>
                    <!-- Template :: obs 54. Blijft hangen bij optillen onder de oksels -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40961">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_54">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 54 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41276">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_55_reacties_bij_optrekken_tot_zit">
                <component>
                    <!-- Template :: obs 55. Reacties bij optrekken tot zit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40962">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_55">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 55 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40963">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_56_heft_kin_even_van_onderlaag">
                <component>
                    <!-- Template :: obs 56. Heft kin even van onderlaag -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40964">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_56">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 56 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40965">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_57_heft_in_buikligging_hoofd_tot_45">
                <component>
                    <!-- Template :: obs 57. Heft in buikligging hoofd tot 45º -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40966">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_57">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 57 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40967">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_58_kijkt_rond_met_90_geheven_hoofd">
                <component>
                    <!-- Template :: obs 58. Kijkt rond met 90º geheven hoofd -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40968">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_58">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 58 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40969">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_59_benen_gebogen_of_trappelen_bij_verticaal_zwaaien_rechts">
                <component>
                    <!-- Template :: obs 59. Benen gebogen of trappelen bij verticaal zwaaien rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40970">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_59_benen_gebogen_of_trappelen_bij_verticaal_zwaaien_links">
                <component>
                    <!-- Template :: obs 59. Benen gebogen of trappelen bij verticaal zwaaien links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40971">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_59">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 59 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40972">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_60_rolt_zich_om_van_rug_naar_buik_en_omgekeerd">
                <component>
                    <!-- Template :: obs 60. Rolt zich om van rug naar buik en omgekeerd -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40973">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_60">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 60 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40974">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_61_kan_hoofd_goed_ophouden_in_zit">
                <component>
                    <!-- Template :: obs 61. Kan hoofd goed ophouden in zit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40975">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_61">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 61 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40976">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_62_zit_op_billen_met_gestrekte_benen">
                <component>
                    <!-- Template :: obs 62. Zit op billen met gestrekte benen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40977">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_62">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 62 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41277">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_63_zit_stabiel_los">
                <component>
                    <!-- Template :: obs 63. Zit stabiel los -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40978">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_63">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 63 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40979">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_64_kruipt_vooruit_buik_op_de_grond">
                <component>
                    <!-- Template :: obs 64. Kruipt vooruit, buik op de grond -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40980">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_64">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 64 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40981">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_65_trekt_zich_op_tot_staan">
                <component>
                    <!-- Template :: obs 65. Trekt zich op tot staan -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41278">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_65">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 65 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41279">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_66_kruipt_vooruit">
                <component>
                    <!-- Template :: obs 66. Kruipt vooruit -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40982">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_66">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 66 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40983">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_67_loopt_langs">
                <component>
                    <!-- Template :: obs 67. Loopt langs -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40984">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_67">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 67 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40985">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="eerste_keer_los_lopen">
                <component>
                    <!-- Template :: obs Eerste keer los lopen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40988">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_68a_loopt_los">
                <component>
                    <!-- Template :: obs 68a. loopt los-->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41660">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_68a">
                <component>
                    <!-- Template :: obs Opmerking bij vwo 68a-->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41661">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_68b_loopt_goed_los">
                <component>
                    <!-- Template :: obs 68b. loopt goed los-->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41662">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_68b">
                <component>
                    <!-- Template :: obs Opmerking bij vwo 68b-->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41663">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_68c_loopt_soepel">
                <component>
                    <!-- Template :: obs 68c. loopt soepel-->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41664">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_68c">
                <component>
                    <!-- Template :: obs Opmerking bij vwo 68c-->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41690">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_69_gooit_bal_zonder_om_te_vallen">
                <component>
                    <!-- Template :: obs 69. Gooit bal zonder om te vallen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40989">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_69">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 69 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40990">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_70_kan_hurken_en_weer_gaan_staan_zonder_steun_en_zonder_hulp_van_de_armen">
                <component>
                    <!-- Template :: obs 70 kan hurken en weer_gaan staan zonder steun_en zonder_hulp van de armen -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40991">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_70">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 70 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40992">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_71_schopt_bal_weg_rechts">
                <component>
                    <!-- Template :: obs 71. Schopt bal weg rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40993">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_71_schopt_bal_weg_links">
                <component>
                    <!-- Template :: obs 71. Schopt bal weg links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40994">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_71">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 71 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40995">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_72_kan_in_zit_soepel_roteren">
                <component>
                    <!-- Template :: obs 72. Kan in zit soepel roteren -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40996">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_72">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 72 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40997">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_73_fietst_op_driewieler">
                <component>
                    <!-- Template :: obs 73. Fietst (op driewieler) -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40998">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_73">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 73 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41280">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_74_springt_met_beide_voeten_tegelijk">
                <component>
                    <!-- Template :: obs 74. Springt met beide voeten tegelijk -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.40999">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_74">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 74 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41000">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_75_kan_minstens_5_seconden_op_een_been_staan_rechts">
                <component>
                    <!-- Template :: obs 75. Kan minstens 5 seconden op één been staan rechts -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41001">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="_75_kan_minstens_5_seconden_op_een_been_staan_links">
                <component>
                    <!-- Template :: obs 75. Kan minstens 5 seconden op één been staan links -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41002">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="opmerking_bij_vwo_75">
                <component>
                    <!-- Template :: obs Opmerking bij VWO 75 -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41003">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
            <xsl:for-each select="bijzonderheden_van_wiechen_onderzoek">
                <component>
                    <!-- Template :: obs Bijzonderheden Van Wiechen onderzoek -->
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.6.10.100.41004">
                        <xsl:with-param name="W0639_HL7_W0646_HL7_W0647_HL7" select="$W0639_HL7_W0646_HL7_W0647_HL7" as="element()*"/>
                    </xsl:call-template>
                </component>
            </xsl:for-each>
        </rubricCluster>
    </xsl:template>
    <!--placeholder JGZ-223-->
    <!-- obs Maakt communicatieve gebaren -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.40935">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.40935"/>
            <code code="935" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '935'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _36_Maakt communicatieve gebaren-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!--placeholder JGZ-224-->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.40938">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.40938"/>
            <code code="938" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '938'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _39_zegt_3_woorden_met_begrip-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    <!--placeholder JGZ-259-->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.40991">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.40991"/>
            <code code="991" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '991'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _70_kan_hurken_en_weer_gaan_staan_zonder_steun_en_zonder_hulp_van_de_armen-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!--placeholder JGZ-350-->
    
    <!-- obs Score op aanvullende vragen op ontwikkelingskenmerk 41 -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41684">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41684"/>
            <code code="1684" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1684'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Score op aanvullende vragen op ontwikkelingskenmerk 41-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!-- obs Score spelvraag Van Wiechentaalonderzoek -->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41686">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41686"/>
            <code code="1686" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1686'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: Score spelvraag Van Wiechentaalonderzoek-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!--placeholder JGZ-353-->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41660">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41660"/>
            <code code="1660" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1660'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _68_loopt_los-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41661">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41661"/>
            <code code="1661" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1661'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: opmerking_bij_vwo_68a-->
            <xsl:call-template name="makeSTValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>

    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41662">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41662"/>
            <code code="1662" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1662'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _68b_loopt_goed_los-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41663">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41663"/>
            <code code="1663" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1663'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: opmerking_bij_vwo_68b-->
            <xsl:call-template name="makeSTValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41664">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41664"/>
            <code code="1664" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1664'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _68c_loopt_soepel-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41690">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41690"/>
            <code code="1690" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1690'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: opmerking_bij_vwo_68c-->
            <xsl:call-template name="makeSTValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    
    <!--placeholder JGZ-354-->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41669">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41669"/>
            <code code="1669" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1669'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _52_beweegt_armen_evenveel-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
    <!--placeholder JGZ-356-->
    <xsl:template name="template_2.16.840.1.113883.2.4.6.10.100.41670">
        <xsl:param name="W0639_HL7_W0646_HL7_W0647_HL7" as="element()*" required="yes"/>
        <observation xmlns="urn:hl7-org:v3" classCode="OBS" moodCode="EVN" negationInd="false">
            <templateId root="2.16.840.1.113883.2.4.6.10.100.41670"/>
            <code code="1670" codeSystem="2.16.840.1.113883.2.4.4.40.267">
                <xsl:copy-of select="$W0639_HL7_W0646_HL7_W0647_HL7/conceptList/concept[@code = '1670'][@codeSystem = '2.16.840.1.113883.2.4.4.40.267']/@displayName"/>
            </code>
            <!-- Item(s) :: _53_beweegt_benen_evenveel-->
            <xsl:call-template name="makeCVValue">
                <xsl:with-param name="elemName">value</xsl:with-param>
            </xsl:call-template>
        </observation>
    </xsl:template>
</xsl:stylesheet>

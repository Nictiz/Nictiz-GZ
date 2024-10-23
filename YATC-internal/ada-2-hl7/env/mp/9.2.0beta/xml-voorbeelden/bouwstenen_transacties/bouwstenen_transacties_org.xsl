<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all" version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="urn:hl7-org:v3" xmlns:hl7="urn:hl7-org:v3" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:nf="http://www.nictiz.nl/functions" xmlns:hl7nl="urn:hl7-nl:v3" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:local="#local.2024011810474749063820100" xmlns:pharm="urn:ihe:pharm:medication" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- ================================================================== -->
    <!--
        TBD
    -->
    <!-- ================================================================== -->
    <!--
        Copyright © Nictiz
        
        This program is free software; you can redistribute it and/or modify it under the terms of the
        GNU Lesser General Public License as published by the Free Software Foundation; either version
        2.1 of the License, or (at your option) any later version.
        
        This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
        without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
        See the GNU Lesser General Public License for more details.
        
        The full text of the license is available at http://www.gnu.org/copyleft/lesser.html
    -->
    <!-- ================================================================== -->
    
    <xsl:import href="../../2_hl7_mp_include_920.xsl"/>
    
    <xsl:output method="xml" indent="yes"/>
    <!-- Generates a HL7 message based on ADA input -->
    
    <xsl:include href="../../../../../../../YATC-shared/xslmod/general.mod.xsl"/>

    <!-- ======================================================================= -->

    <!-- give dateT a value when you need conversion of relative T dates, typically only needed for test instances -->
    <!--    <xsl:param name="dateT" as="xs:date?" select="current-date()"/>-->
    <xsl:param name="dateT" as="xs:date?" select="xs:date('2021-03-24')"/>
    <!--    <xsl:param name="dateT" as="xs:date?"/>-->
    <!-- whether to generate a user instruction description text from the structured information, typically only needed for test instances  -->
    <xsl:param name="generateInstructionText" as="xs:boolean?" select="false()"/>
    <!-- param to influence whether to output schematron references, typically only needed for test instances -->
    <xsl:param name="schematronRef" as="xs:boolean" select="true()"/>

    <!-- the input ada instances which contain the bouwstenen -->
    <xsl:param name="inputAdaFilesDir" as="xs:string" required="no" select="'../ada_instance/'"/>
    <xsl:param name="inputAdaFiles" as="document-node()*" select="yatcs:get-document-collection($inputAdaFilesDir)"/>
    <xsl:param name="outputDir" as="xs:string?" select="'../hl7_instance'"/>

    <!-- ================================================================== -->

    <xsl:template match="/">

        <!-- MA's -->
        <xsl:result-document href="{$outputDir}/bsma-example-920-1.xml">

            <xsl:variable name="mbh" select="$inputAdaFiles/adaxml/data/*[not(self::sturen_voorstel_medicatieafspraak)]/medicamenteuze_behandeling[medicatieafspraak]"/>
            <xsl:variable name="patient" select="($mbh/../patient)[1]"/>

            <xsl:if test="$schematronRef">
                <xsl:processing-instruction name="nictiz">status="example"</xsl:processing-instruction>
                <xsl:processing-instruction name="xml-model">phase="#ALL" href="file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/Publicaties/20210921/mp-xml-20210921T194523/schematron_closed_warnings/mp-mp92_mg_ma.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
            </xsl:if>
            <organizer classCode="CLUSTER" moodCode="EVN" xmlns:cda="urn:hl7-org:v3">
                <xsl:attribute name="xsi:schemaLocation" select="'urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd'"/>
                <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9335"/>
                <code code="419891008" displayName="Gegevensobject" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                <statusCode code="completed"/>
                <!-- Patient -->
                <xsl:for-each select="$patient">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180611000000"/>
                </xsl:for-each>
                <!-- Medicamenteuze behandeling -->
                <xsl:for-each select="$mbh">
                    <!-- Medicatieafspraak -->
                    <xsl:for-each select="medicatieafspraak[not(kopie_indicator/@value = 'true')]">
                        <component typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9324_20201015132016"/>
                        </component>
                    </xsl:for-each>
                    <!-- Medicatieafspraak -->
                    <xsl:for-each select="medicatieafspraak[kopie_indicator/@value = 'true']">
                        <component typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9325_20201515132423"/>
                        </component>
                    </xsl:for-each>
                </xsl:for-each>
            </organizer>

        </xsl:result-document>
        <!-- WDS'en -->
        <xsl:result-document href="{$outputDir}/bswds-example-920-1.xml">

            <xsl:variable name="mbh" select="$inputAdaFiles/adaxml/data/*/medicamenteuze_behandeling[wisselend_doseerschema]"/>
            <xsl:variable name="patient" select="($mbh/../patient)[1]"/>

            <xsl:if test="$schematronRef">
                <xsl:processing-instruction name="nictiz">status="example"</xsl:processing-instruction>
                <xsl:processing-instruction name="xml-model">phase="#ALL" href="../../../../../../../../../SVN/AORTA/branches/Onderhoud_Mp_v90/Publicaties/20210921/mp-xml-20210921T194523/schematron_closed_warnings/mp-mp92-mg-wds.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
            </xsl:if>
            <organizer classCode="CLUSTER" moodCode="EVN" xmlns:cda="urn:hl7-org:v3">
                <xsl:attribute name="xsi:schemaLocation" select="'urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd'"/>
                <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9382"/>
                <code code="419891008" displayName="Gegevensobject" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                <statusCode code="completed"/>
                <!-- Patient -->
                <xsl:for-each select="$patient">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180611000000"/>
                </xsl:for-each>
                <!-- Medicamenteuze behandeling -->
                <xsl:for-each select="$mbh">
                    <!-- wisselend_doseerschema -->
                    <xsl:for-each select="wisselend_doseerschema">
                        <component typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9380_202106171758546"/>
                        </component>
                    </xsl:for-each>
                </xsl:for-each>
            </organizer>

        </xsl:result-document>
        <!-- VV's -->
        <xsl:result-document href="{$outputDir}/bsvv-example-920-1.xml">

            <xsl:variable name="mbh" select="$inputAdaFiles/adaxml/data/*[not(self::sturen_voorstel_verstrekkingsverzoek)]/medicamenteuze_behandeling[verstrekkingsverzoek]"/>
            <xsl:variable name="patient" select="($mbh/../patient)[1]"/>

            <xsl:if test="$schematronRef">
                <xsl:processing-instruction name="nictiz">status="example"</xsl:processing-instruction>
                <xsl:processing-instruction name="xml-model">phase="#ALL" href="../../../../../../../../../SVN/AORTA/branches/Onderhoud_Mp_v90/Publicaties/20210921/mp-xml-20210921T194523/schematron_closed_warnings/mp-mp92_mg_vv.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
            </xsl:if>
            <organizer classCode="CLUSTER" moodCode="EVN" xmlns:cda="urn:hl7-org:v3">
                <xsl:attribute name="xsi:schemaLocation" select="'urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd'"/>
                <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9366"/>
                <code code="419891008" displayName="Gegevensobject" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                <statusCode code="completed"/>
                <!-- Patient -->
                <xsl:for-each select="$patient">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180611000000"/>
                </xsl:for-each>
                <!-- Medicamenteuze behandeling -->
                <xsl:for-each select="$mbh">
                    <!-- Medicatieafspraak -->
                    <xsl:for-each select="verstrekkingsverzoek">
                        <component typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9356_20210402132627"/>
                        </component>
                    </xsl:for-each>
                </xsl:for-each>
            </organizer>

        </xsl:result-document>
        <!-- TA's -->
        <xsl:result-document href="{$outputDir}/bsta-example-920-1.xml">

            <xsl:variable name="mbh" select="$inputAdaFiles/adaxml/data/*/medicamenteuze_behandeling[toedieningsafspraak]"/>
            <xsl:variable name="patient" select="($mbh/../patient)[1]"/>

            <xsl:if test="$schematronRef">
                <xsl:processing-instruction name="nictiz">status="example"</xsl:processing-instruction>
                <xsl:processing-instruction name="xml-model">phase="#ALL" href="../../../../../../../../../SVN/AORTA/branches/Onderhoud_Mp_v90/Publicaties/20210921/mp-xml-20210921T194523/schematron_closed_warnings/mp-mp92_mg_ta.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
            </xsl:if>
            <organizer classCode="CLUSTER" moodCode="EVN" xmlns:cda="urn:hl7-org:v3">
                <xsl:attribute name="xsi:schemaLocation" select="'urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd'"/>
                <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9343"/>
                <code code="419891008" displayName="Gegevensobject" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                <statusCode code="completed"/>
                <!-- Patient -->
                <xsl:for-each select="$patient">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180611000000"/>
                </xsl:for-each>
                <!-- Medicamenteuze behandeling -->
                <xsl:for-each select="$mbh">
                    <xsl:for-each select="toedieningsafspraak[not(kopie_indicator/@value = 'true')]">
                        <component typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9332_20201015134926"/>
                        </component>
                    </xsl:for-each>
                    <xsl:for-each select="toedieningsafspraak[kopie_indicator/@value = 'true']">
                        <component typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9327_20201015133041"/>
                        </component>
                    </xsl:for-each>
                </xsl:for-each>
            </organizer>

        </xsl:result-document>
        <!-- MVE's -->
        <xsl:result-document href="{$outputDir}/bsmve-example-920-1.xml">

            <xsl:variable name="mbh" select="$inputAdaFiles/adaxml/data/*/medicamenteuze_behandeling[medicatieverstrekking]"/>
            <xsl:variable name="patient" select="($mbh/../patient)[1]"/>

            <xsl:if test="$schematronRef">
                <xsl:processing-instruction name="nictiz">status="example"</xsl:processing-instruction>
                <xsl:processing-instruction name="xml-model">phase="#ALL" href="../../../../../../../../../SVN/AORTA/trunk/Zorgtoepassing/Medicatieproces/DECOR/mp-runtime-develop/mp-mp92_mg_mve.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
            </xsl:if>
            <organizer classCode="CLUSTER" moodCode="EVN" xmlns:cda="urn:hl7-org:v3">
                <xsl:attribute name="xsi:schemaLocation" select="'urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd'"/>
                <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9365"/>
                <code code="419891008" displayName="Gegevensobject" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                <statusCode code="completed"/>
                <!-- Patient -->
                <xsl:for-each select="$patient">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180611000000"/>
                </xsl:for-each>
                <!-- Medicamenteuze behandeling -->
                <xsl:for-each select="$mbh">
                    <xsl:for-each select="medicatieverstrekking">
                        <component typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9364_20210602161935"/>
                        </component>
                    </xsl:for-each>
                </xsl:for-each>
            </organizer>

        </xsl:result-document>
        <!-- MGB's -->
        <xsl:result-document href="{$outputDir}/bsmgb-example-920-1.xml">

            <xsl:variable name="mbh" select="$inputAdaFiles/adaxml/data/*/medicamenteuze_behandeling[medicatiegebruik]"/>
            <xsl:variable name="patient" select="($mbh/../patient)[1]"/>

            <xsl:if test="$schematronRef">
                <xsl:processing-instruction name="nictiz">status="example"</xsl:processing-instruction>
                <xsl:processing-instruction name="xml-model">phase="#ALL" href="../../../../../../../../../SVN/AORTA/branches/Onderhoud_Mp_v90/Publicaties/20210921/mp-xml-20210921T194523/schematron_closed_warnings/mp-mp92_mg_mgb.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
            </xsl:if>
            <organizer classCode="CLUSTER" moodCode="EVN" xmlns:cda="urn:hl7-org:v3">
                <xsl:attribute name="xsi:schemaLocation" select="'urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd'"/>
                <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9342"/>
                <code code="419891008" displayName="Gegevensobject" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                <statusCode code="completed"/>
                <!-- Patient -->
                <xsl:for-each select="$patient">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180611000000"/>
                </xsl:for-each>
                <!-- Medicamenteuze behandeling -->
                <xsl:for-each select="$mbh">
                    <xsl:for-each select="medicatiegebruik[not(kopie_indicator/@value = 'true')]">
                        <component typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9322_20201015131242"/>
                        </component>
                    </xsl:for-each>
                    <xsl:for-each select="medicatiegebruik[kopie_indicator/@value = 'true']">
                        <component typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9331_20201015134756"/>
                        </component>
                    </xsl:for-each>
                </xsl:for-each>
            </organizer>

        </xsl:result-document>
        <!-- MTD's -->
        <xsl:result-document href="{$outputDir}/bsmtd-example-920-1.xml">

            <xsl:variable name="mbh" select="$inputAdaFiles/adaxml/data/*/medicamenteuze_behandeling[medicatietoediening]"/>
            <xsl:variable name="patient" select="($mbh/../patient)[1]"/>

            <xsl:if test="$schematronRef">
                <xsl:processing-instruction name="nictiz">status="example"</xsl:processing-instruction>
                <xsl:processing-instruction name="xml-model">phase="#ALL" href="../../../../../../../../../SVN/AORTA/branches/Onderhoud_Mp_v90/Publicaties/20210921/mp-xml-20210921T194523/schematron_closed_warnings/mp-mp92-mg-mtd.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
            </xsl:if>
            <organizer classCode="CLUSTER" moodCode="EVN" xmlns:cda="urn:hl7-org:v3">
                <xsl:attribute name="xsi:schemaLocation" select="'urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd'"/>
                <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9374"/>
                <code code="419891008" displayName="Gegevensobject" codeSystem="2.16.840.1.113883.6.96" codeSystemName="SNOMED CT"/>
                <statusCode code="completed"/>
                <!-- Patient -->
                <xsl:for-each select="$patient">
                    <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180611000000"/>
                </xsl:for-each>
                <!-- Medicamenteuze behandeling -->
                <xsl:for-each select="$mbh">
                    <xsl:for-each select="medicatietoediening">
                        <component typeCode="COMP">
                            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9373_20210616162231"/>
                        </component>
                    </xsl:for-each>
                </xsl:for-each>
            </organizer>

        </xsl:result-document>

    </xsl:template>
</xsl:stylesheet>

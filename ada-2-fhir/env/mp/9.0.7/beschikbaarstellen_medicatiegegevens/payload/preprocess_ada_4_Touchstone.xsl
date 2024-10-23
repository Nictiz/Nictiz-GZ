<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" exclude-result-prefixes="#all" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:local="urn:fhir:stu3:functions">
    <!-- ================================================================== -->
    <!--
        This XSL was created to facilitate mapping for ADA MP9-transaction
        Do some preprocessing in ada files, because Touchstone cannot interpret duration use properly
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

    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
    <xsl:strip-space elements="*"/>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <!-- Start conversion. Let's update the periodofuse duration to an end date for a particular MA -->
        <xsl:apply-templates select="." mode="preprocess4TS"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="medicatieafspraak[gebruiksperiode/@value]/identificatie[@value = ('MBH_907_QA5_MA-JNK', 'tsMBH_907_QA5_MA-GSA')]" mode="preprocess4TS">
        <!-- Start conversion. Let's update the periodofuse duration to an end date for a particular MA -->
        <!-- let's add the gebruiksperiode_eind in this dirty hack -->
        <gebruiksperiode_eind value="{'T-44D{23:59:59}'}" conceptId="2.16.840.1.113883.2.4.3.11.999.77.11.1.9580.2" datatype="datetime"/>
        <xsl:copy>
            <xsl:apply-templates select="@*" mode="preprocess4TS"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="medicatieafspraak[identificatie/@value = ('MBH_907_QA5_MA-JNK', 'tsMBH_907_QA5_MA-GSA')]/gebruiksperiode" mode="preprocess4TS">
        <!-- Start conversion. Let's update the periodofuse duration to an end date for a particular MA -->
        <!-- do not copy -->
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@* | node()" mode="preprocess4TS">
        <!-- Default copy template -->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" mode="preprocess4TS"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>

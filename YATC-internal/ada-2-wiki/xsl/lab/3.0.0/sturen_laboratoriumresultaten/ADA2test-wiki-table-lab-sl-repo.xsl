<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.202302071459320978950100" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <!-- ================================================================== -->
    <!--
         One of the ada-2-wiki processing stylesheets for lab/3.0.0
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

    <xsl:output method="text" encoding="utf-16"/>

    <xsl:include href="../../../../xslmod/ada-2-wiki-build-standard-parameters.mod.xsl"/>

    <xsl:import href="../../ADA2test-wiki-table-lab.xsl"/>

    <xsl:strip-space elements="*"/>

    <!-- ======================================================================= -->

    <!-- Get the working set of ADA files to process: -->
    <xsl:variable name="ada-files" select="yatcs:get-ada-files()"/>

    <!-- Override transaction to be handled -->
    <xsl:param name="transactionId" as="xs:string" select="'2.16.840.1.113883.2.4.3.11.60.25.4.28'"/>
    <xsl:param name="testGoal" as="xs:string" select="'kwalificatie'"/>

    <xsl:param name="do-ada-files" as="xs:boolean" select="true()"/>

    <!-- Make sure the conversion uses all applicable repo stuff -->
    <xsl:variable name="this" as="element()*">
        <xsl:choose>
            <xsl:when test="$do-ada-files">
                <xsl:sequence select="$ada-files//adaxml/data/*"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:sequence select="//adaxml/data/*"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">

        <xsl:text>
__NUMBEREDHEADINGS__
{{DISPLAYTITLE:Laboratoriumuitwisseling: addendum inhoudelijke gegevens}}

=Addenda voor inhoudelijke gegevens=</xsl:text>

        <xsl:choose>
            <xsl:when test="$do-ada-files">
                <xsl:apply-templates select="$ada-files/adaxml/data/*" mode="wiki"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="adaxml/data/*" mode="wiki"/>
            </xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>

</xsl:stylesheet>

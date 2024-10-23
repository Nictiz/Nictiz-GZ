<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.mzp_pzv_dzb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This stylesheet dereferences all imports/includes for a stylesheet, recursively.
       Main purpose is to get one big file to see where something we're interested in is 
       happening in the usually massive include structures.
       
       The output is not runnable, use for inspection purposes only!
    -->
    <!-- ======================================================================= -->
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
    <!-- ======================================================================= -->
    <!-- SETUP: -->

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:mode name="mode-process-stylesheet" on-no-match="shallow-copy"/>

    <xsl:include href="../xslmod/general.mod.xsl"/>
    <xsl:include href="../xslmod/href.mod.xsl"/>

    <!-- ================================================================== -->

    <xsl:variable name="start-uri" as="xs:string" select="base-uri(/) => yatcs:href-canonical()"/>

    <xsl:variable name="lf" as="xs:string" select="'&#10;'"/>
    <xsl:variable name="lf2" as="xs:string" select="$lf || $lf"/>

    <!-- ======================================================================= -->

    <xsl:template match="/">
        <xsl:call-template name="process-stylesheet">
            <xsl:with-param name="uri" select="$start-uri"/>
            <xsl:with-param name="type" select="'root'"/>
        </xsl:call-template>
    </xsl:template>

    <!-- ======================================================================= -->

    <xsl:template name="process-stylesheet">
        <xsl:param name="uri" as="xs:string" required="true"/>
        <xsl:param name="type" as="xs:string" required="true"/>

        <xsl:value-of select="$lf2"/>
        <xsl:comment> ======= START {$uri}  == </xsl:comment>
        <xsl:element name="FILE-{upper-case($type)}">
            <xsl:attribute name="href" select="$uri"/>
            <xsl:choose>
                <xsl:when test="not(doc-available($uri))">
                    <xsl:comment> == NOT AVAILABLE == </xsl:comment>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates select="doc($uri)/*" mode="mode-process-stylesheet">
                        <xsl:with-param name="current-uri" as="xs:string" select="$uri" tunnel="true"/>
                    </xsl:apply-templates>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:element>
        <xsl:comment> ======= END {$uri}  == </xsl:comment>
        <xsl:value-of select="$lf2"/>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="(*:include | *:import)[exists(@href)]" mode="mode-process-stylesheet">
        <xsl:param name="current-uri" as="xs:string" required="true" tunnel="true"/>

        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:call-template name="process-stylesheet">
                <xsl:with-param name="uri" select="resolve-uri(@href, $current-uri) => yatcs:href-canonical()"/>
                <xsl:with-param name="type" select="local-name(.)"/>
            </xsl:call-template>
        </xsl:copy>

    </xsl:template>

</xsl:stylesheet>

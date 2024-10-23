<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:xtlc="http://www.xtpxlib.nl/ns/common" xmlns:local="#local" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" exclude-result-prefixes="#all">
    <!-- ================================================================== -->
    <!--~	
        Creates the manifest necessary for creating the zip file	
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
    <!-- ======================================================================= -->

    <!-- SETUP: -->

    <xsl:param name="includeBase" as="xs:boolean" required="yes"/>

    <xsl:include href="../../xslmod/href.mod.xsl"/>

    <xsl:mode on-no-match="shallow-skip"/>

    <!-- ================================================================== -->
    <!-- MAIN TEMPLATES: -->

    <xsl:template match="/*" xmlns="http://www.w3.org/ns/xproc-step">

        <xsl:variable name="baseRaw" as="xs:string" select="if (ends-with(@xml:base, '/')) then substring(@xml:base, 1, string-length(@xml:base) - 1) else string(@xml:base)"/>
        <xsl:variable name="base" as="xs:string" select="yatcs:href-path($baseRaw)"/>

        <c:archive>
            <xsl:for-each select="//c:file">
                <xsl:variable name="nameForHref" as="xs:string" select="yatcs:href-concat(ancestor-or-self::*/@name)"/>
                <xsl:variable name="name" as="xs:string">
                    <xsl:choose>
                        <xsl:when test="$includeBase">
                            <xsl:sequence select="$nameForHref"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:sequence select="yatcs:href-concat(subsequence(ancestor-or-self::*/@name, 2))"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:variable>
                <c:entry name="{$name}" href="{yatcs:href-add-encoding(yatcs:href-concat(($base, $nameForHref)))}"/>
            </xsl:for-each>
        </c:archive>

    </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.t1y_djx_gwb" xmlns:c="http://www.w3.org/ns/xproc-step" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
       This stylesheet prepares a directory operation by turning the output of a p:directory list into a flat list.
       
       Input is the output of a p:directory-list step. Output is a <dir-prepared> element with child <copy> elements,
       suitable for further processing.
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

    <xsl:mode on-no-match="fail"/>

    <xsl:strip-space elements="*"/>

    <xsl:include href="../../xslmod/general.mod.xsl"/>
    <xsl:include href="../../xslmod/href.mod.xsl"/>

    <!-- ================================================================== -->
    <!-- PARAMETERS: -->

    <xsl:param name="hrefSource" as="xs:string" required="yes"/>

    <xsl:param name="hrefTarget" as="xs:string?" required="false" select="()">
        <!-- When there is no target directory specified, no targets will be computed. -->
    </xsl:param>

    <xsl:variable name="hasTarget" as="xs:boolean" select="normalize-space($hrefTarget) ne ''"/>

    <xsl:variable name="hrefSourceCanonical" as="xs:string" select="yatcs:href-canonical($hrefSource)"/>
    <xsl:variable name="hrefTargetCanonical" as="xs:string?" select="if ($hasTarget) then yatcs:href-canonical($hrefTarget) else ()"/>

    <!-- ======================================================================= -->

    <xsl:template match="/">

        <!-- Pre-flight checks: -->
        <xsl:call-template name="check-href-is-absolute">
            <xsl:with-param name="href" select="$hrefSource"/>
        </xsl:call-template>
        <xsl:if test="$hasTarget">
            <xsl:call-template name="check-href-is-absolute">
                <xsl:with-param name="href" select="$hrefTarget"/>
            </xsl:call-template>
        </xsl:if>

        <directory-list href-source-canonical="{$hrefSourceCanonical}">
            <xsl:if test="$hasTarget">
                <!-- Add information to the root needed in the encompassing XProc step (used for clearing the target) : -->
                <xsl:attribute name="href-target-canonical" select="$hrefTargetCanonical"/>
            </xsl:if>
            <xsl:for-each select="/c:directory//c:file">
                <xsl:variable name="relativeName" as="xs:string" select="yatcs:href-concat((ancestor-or-self::*/@name)[position() gt 1])"/>
                <file>
                    <xsl:copy-of select="(@* except @xml:base)"/>
                    <xsl:attribute name="href-source" select="yatcs:href-concat(($hrefSourceCanonical, $relativeName))"/>
                    <xsl:if test="$hasTarget">
                        <xsl:attribute name="href-target" select="yatcs:href-concat(($hrefTargetCanonical, $relativeName))"/>
                    </xsl:if>
                </file>
            </xsl:for-each>
        </directory-list>

    </xsl:template>

    <!-- ======================================================================= -->
    <!-- SUPPORT: -->

    <xsl:template name="check-href-is-absolute">
        <!-- Raises an error if $href is not absolute. -->
        <xsl:param name="href" as="xs:string" required="yes"/>

        <xsl:if test="not(yatcs:href-is-absolute($href))">
            <xsl:call-template name="yatcs:raise-error">
                <xsl:with-param name="msg-parts" select="('Relative href passed for directory operation: &quot;{$href}&quot;')"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>

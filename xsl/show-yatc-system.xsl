<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.mb2_b33_dwb" exclude-result-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       This stylesheet returns all the information computed by module ../xslmod/yatc-system.mod.xsl
       in text format, so it can be displayed in a command line tool.
       
       The script for running this is: ../bin/show-yatc-system.bat
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

    <xsl:output method="text"/>
    
    <xsl:include href="../xslmod/href.mod.xsl"/>
    <xsl:include href="../xslmod/yatc-system.mod.xsl"/>
    
    <xsl:param name="staticBaseUri" as="xs:string" required="false" select="static-base-uri()"/>
    <xsl:variable name="staticBaseUriNormalized" as="xs:string" select="yatcs:href-protocol-add(yatcs:href-canonical($staticBaseUri), $yatcs:protocol-file, false())"/>
    
    <!-- ================================================================== -->

    <xsl:template match="/">
        <OUTPUT>
            <xsl:call-template name="add-line">
                <xsl:with-param name="prompt" select="'Base URI passed'"/>
                <xsl:with-param name="value" select="$staticBaseUriNormalized"/>
            </xsl:call-template>
            <xsl:call-template name="add-line">
                <xsl:with-param name="prompt" select="'Base drive root'"/>
                <xsl:with-param name="value" select="$yatcs:baseDriveRoot"/>
            </xsl:call-template>
            <xsl:call-template name="add-line">
                <xsl:with-param name="prompt" select="'Base directory'"/>
                <xsl:with-param name="value" select="$yatcs:baseDirectoryUri"/>
            </xsl:call-template>
            <xsl:call-template name="add-line">
                <xsl:with-param name="prompt" select="'Repository name'"/>
                <xsl:with-param name="value" select="yatcs:get-repository-name($staticBaseUriNormalized)"/>
            </xsl:call-template>
            <xsl:call-template name="add-line">
                <xsl:with-param name="prompt" select="'Repository directory URI'"/>
                <xsl:with-param name="value" select="yatcs:get-repository-directory-uri($staticBaseUriNormalized)"/>
            </xsl:call-template>
            <xsl:call-template name="add-line">
                <xsl:with-param name="prompt" select="'Component name'"/>
                <xsl:with-param name="value" select="yatcs:get-component-name($staticBaseUriNormalized)"/>
            </xsl:call-template>
            <xsl:call-template name="add-line">
                <xsl:with-param name="prompt" select="'Component directory URI'"/>
                <xsl:with-param name="value" select="yatcs:get-component-directory-uri($staticBaseUriNormalized)"/>
            </xsl:call-template>
        </OUTPUT>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="add-line">
        <xsl:param name="prompt" as="xs:string" required="yes"/>
        <xsl:param name="value" as="xs:string" required="yes"/>

        <xsl:value-of select="$prompt"/>
        <xsl:value-of select="': &quot;'"/>
        <xsl:value-of select="$value"/>
        <xsl:value-of select="'&quot;'"/>
        <xsl:value-of select="'&#10;'"/>
    </xsl:template>

</xsl:stylesheet>

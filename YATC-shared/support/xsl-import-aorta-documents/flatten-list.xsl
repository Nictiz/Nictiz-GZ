<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.a3w_5rz_21c" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="https://nictiz.nl/ns/YATC-shared/import-aorta-documents" xmlns:yatcs-iad="https://nictiz.nl/ns/YATC-shared/import-aorta-documents" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       flatten-import-aorta-documents-list.xsl
       
       Just leaves a list of documents
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

    <xsl:output method="xml" indent="true" encoding="UTF-8"/>

    <xsl:mode on-no-match="fail"/>
    
    <xsl:include href="../../xslmod/general.mod.xsl"/>
    <xsl:include href="../../xslmod/href.mod.xsl"/>
    
    <!-- ======================================================================= -->
    <!-- PARAMETERS: -->
    
    <xsl:param name="AORTADirectory" as="xs:string" required="true"/>
    <xsl:param name="yatcInternalDirectory" as="xs:string" required="yes"/>
    
    <!-- ================================================================== -->

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="yatcs-iad:import-aorta-documents">
        <xsl:copy>
            <xsl:copy-of select="@* except (@xsi:*, @href-target)"/>
            <xsl:attribute name="timestamp" select="current-dateTime()"/>
            <xsl:attribute name="aorta-directory" select="$AORTADirectory"/>
            <xsl:attribute name="yatc-internal-directory" select="$yatcInternalDirectory"/>
            <xsl:attribute name="href-target" select="yatcs:href-concat(($yatcInternalDirectory, @href-target)) => yatcs:href-canonical()"/>
            <xsl:attribute name="href-target-rel" select="yatcs:href-canonical(@href-target)"/>
            <xsl:apply-templates select="*">
                <xsl:with-param name="baseDirectory" select="$AORTADirectory" tunnel="true"/>
                <xsl:with-param name="baseDirectoryRel" select="''" tunnel="true"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template match="yatcs-iad:directory">
        <xsl:param name="baseDirectory" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="baseDirectoryRel" as="xs:string" required="true" tunnel="true"/>
        
        <!-- Don't copy, carry on: -->
        <xsl:variable name="newBaseDirectory" as="xs:string" select="yatcs:href-concat(($baseDirectory, @href)) => yatcs:href-canonical()"/>
        <xsl:variable name="newBaseDirectoryRel" as="xs:string" select="yatcs:href-concat(($baseDirectoryRel, @href)) => yatcs:href-canonical()"/>
        
        <xsl:comment> == Directory: {$newBaseDirectory} ({$newBaseDirectoryRel})== </xsl:comment>
        <xsl:apply-templates select="*">
            <xsl:with-param name="baseDirectory" select="$newBaseDirectory" tunnel="true"/>
            <xsl:with-param name="baseDirectoryRel" select="$newBaseDirectoryRel" tunnel="true"/>
        </xsl:apply-templates>
    </xsl:template>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template match="yatcs-iad:document">
        <xsl:param name="baseDirectory" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="baseDirectoryRel" as="xs:string" required="true" tunnel="true"/>
        
        <xsl:variable name="fullHref" as="xs:string" select="yatcs:href-concat(($baseDirectory, @href)) => yatcs:href-canonical()"/>
        <xsl:if test="not(doc-available($fullHref))">
            <xsl:call-template name="yatcs:raise-error">
                <xsl:with-param name="msg-parts" select="'Document for AORTA import ', yatcs:q($fullHref), ' not found or not well-formed.'"/>
            </xsl:call-template>
        </xsl:if>
        <xsl:variable name="relHref" as="xs:string" select="yatcs:href-concat(($baseDirectoryRel, @href)) => yatcs:href-canonical()"/>
        <xsl:copy>
            <xsl:copy-of select="@* except @href"/>
            <xsl:attribute name="href" select="$fullHref"/>
            <xsl:attribute name="href-rel" select="$relHref"/>
        </xsl:copy>
        
    </xsl:template>

</xsl:stylesheet>

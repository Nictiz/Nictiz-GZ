<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.a3w_5rz_21c" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="https://nictiz.nl/ns/YATC-shared/import-aorta-documents" xmlns:yatcs-iad="https://nictiz.nl/ns/YATC-shared/import-aorta-documents" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
      TBD
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

    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:include href="../../xslmod/href.mod.xsl"/>

    <!-- ======================================================================= -->

    <xsl:param name="hrefPipeline" as="xs:string" required="yes"/>
    <xsl:param name="hrefInput" as="xs:string" required="yes"/>

    <!-- ======================================================================= -->

    <xsl:variable name="lf" as="xs:string" select="'&#10;'"/>
    <xsl:variable name="lf2" as="xs:string" select="$lf || $lf"/>

    <xsl:variable name="hrefTargetRel" as="xs:string" select="/*/@href-target-rel"/>
    <xsl:variable name="hrefTarget" as="xs:string" select="/*/@href-target"/>
    <xsl:variable name="AORTADirectory" as="xs:string" select="/*/@aorta-directory"/>

    <!-- ======================================================================= -->


    <xsl:template match="/">

        <xsl:text># YATC-internal directory `{$hrefTargetRel}`</xsl:text>
        <xsl:value-of select="$lf2"/>

        <xsl:text>The `{$hrefTargetRel}` directory contains documents *copied* from the AORTA repository. These documents are used for validations and/or transformations. The documents included/imported (recursively) are also copied. The directory structure for these documents is left as it was in AORTA. Copying (instead of referencing) these documents is considered safe because the AORTA repository is relatively stable with respect to these documents.</xsl:text>
        <xsl:value-of select="$lf2"/>
        
        <xsl:text>------------------------------</xsl:text>
        <xsl:value-of select="$lf2"/>
        
        <xsl:call-template name="add-data-line">
            <xsl:with-param name="prompt" select="'Copy timestamp'"/>
            <xsl:with-param name="data" select="current-dateTime() => string() => substring(1, 19)"/>
        </xsl:call-template>
        
        <xsl:call-template name="add-data-line">
            <xsl:with-param name="prompt" select="'Input document for copy (local)'"/>
            <xsl:with-param name="data" select="$hrefInput => yatcs:href-canonical()"/>
            <xsl:with-param name="code" select="true()"/>
        </xsl:call-template>
        
        <xsl:call-template name="add-data-line">
            <xsl:with-param name="prompt" select="'Processing pipeline (local)'"/>
            <xsl:with-param name="data" select="$hrefPipeline => yatcs:href-canonical()"/>
            <xsl:with-param name="code" select="true()"/>
        </xsl:call-template>
        
        <xsl:call-template name="add-data-line">
            <xsl:with-param name="prompt" select="'Source AORTA directory (local)'"/>
            <xsl:with-param name="data" select="$AORTADirectory => yatcs:href-canonical()"/>
            <xsl:with-param name="code" select="true()"/>
        </xsl:call-template>
        
        <xsl:call-template name="add-data-line">
            <xsl:with-param name="prompt" select="'Target directory (local)'"/>
            <xsl:with-param name="data" select="$hrefTarget => yatcs:href-canonical()"/>
            <xsl:with-param name="code" select="true()"/>
        </xsl:call-template>
        
        <xsl:text>------------------------------</xsl:text>
        <xsl:value-of select="$lf2"/>

        <xsl:text>The following AORTA base documents were copied:</xsl:text>
        <xsl:value-of select="$lf2"/>

        <xsl:for-each select="/*/yatcs-iad:document[xs:boolean(@base-document)]">
            <xsl:text>* `</xsl:text>
            <xsl:value-of select="@href-rel"/>
            <xsl:text>`</xsl:text>
            <xsl:value-of select="$lf"/>
        </xsl:for-each>
        <xsl:value-of select="$lf"/>

        <xsl:text>The following AORTA included/imported documents were copied:</xsl:text>
        <xsl:value-of select="$lf2"/>

        <xsl:for-each select="/*/yatcs-iad:document[not(xs:boolean(@base-document))]">
            <xsl:text>* `</xsl:text>
            <xsl:value-of select="@href-rel"/>
            <xsl:text>`</xsl:text>
            <xsl:value-of select="$lf"/>
        </xsl:for-each>
        <xsl:value-of select="$lf"/>

        
    </xsl:template>

    <!-- ======================================================================= -->

    <xsl:template name="add-data-line">
        <xsl:param name="prompt" as="xs:string" required="yes"/>
        <xsl:param name="data" as="xs:string" required="yes"/>
        <xsl:param name="code" as="xs:boolean" required="false" select="false()"/>

        <xsl:value-of select="$prompt"/>
        <xsl:text>: </xsl:text>
        <xsl:if test="$code">
            <xsl:text>`</xsl:text>
        </xsl:if>
        <xsl:value-of select="$data => replace('^file:/+', '')"/>
        <xsl:if test="$code">
            <xsl:text>`</xsl:text>
        </xsl:if>
        <xsl:value-of select="$lf2"/>
    </xsl:template>


</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.u42_4yr_51c" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       Module for sanitizing filenames. That is, if we have a path into a known directory (like YATC-internal
       or HL7-mappings), the local path is stripped off.
       
       Depends on href.mod.xsl
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

    <xsl:mode name="local:mode-sanitize-node" on-no-match="shallow-copy"/>
    
    <!-- ======================================================================= -->
    
    <xsl:variable name="local:repository-prefix-yatc" as="xs:string" select="'YATC-'"/>
    <xsl:variable name="local:repository-prefix-hl7-mappings" as="xs:string" select="'HL7-mappings'"/>
    <xsl:variable name="local:repository-prefix-art_decor" as="xs:string" select="'art_decor'"/>
    
    <!-- Remark: We specifically work with repository name *prefixes* here. This means that derived repositories like HL7-mappings-NEW, 
         which are sometimes used during development, are also tackled. -->
    
    <!-- ======================================================================= -->
    
    <xsl:function name="yatcs:sanitize-filename" as="xs:string">
        <!-- The provenance (the filename of the original) is stripped of the path info *before* any recognized repository name. 
             This to ensure that local path information (where was all info stored on the local disk) is not visible. 
             Known repositories are:
             * YATC-*
             * HL7-mappings
             * art_decor
             If you ever add something outside of a known repository, this trick no longer works and the full path will become visible
             (without file:/ protocol).
        -->
        <xsl:param name="in" as="xs:string"/>
        
        <xsl:variable name="inNoProtocol" as="xs:string" select="yatcs:href-protocol-remove($in)"/>
        <xsl:choose>
            <xsl:when test="contains($inNoProtocol, '/' || $local:repository-prefix-yatc)">
                <xsl:sequence select="replace($inNoProtocol, '^.+?/(' || $local:repository-prefix-yatc || '.+)$', '$1' )"/>
            </xsl:when>
            <xsl:when test="contains($inNoProtocol, '/' || $local:repository-prefix-hl7-mappings)">
                <xsl:sequence select="replace($inNoProtocol, '^.+?/(' || $local:repository-prefix-hl7-mappings || '.+)$', '$1' )"/>
            </xsl:when>
            <xsl:when test="contains($inNoProtocol, '/' || $local:repository-prefix-art_decor)">
                <xsl:sequence select="replace($inNoProtocol, '^.+?/(' || $local:repository-prefix-art_decor || '.+)$', '$1' )"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:sequence select="$inNoProtocol"/>
            </xsl:otherwise>  
        </xsl:choose>
    </xsl:function>
    
    <!-- ======================================================================= -->
    
    <xsl:template name="yatcs:sanitize-filenames-in-attributes">
        <!-- Sanitizes any attributes that contain a filename starting with file:/ -->
        <xsl:param name="node" as="node()" required="false" select="."/>
        <xsl:apply-templates select="$node" mode="local:mode-sanitize-node"/>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template match="@*[matches(., '^file:/+')]" mode="local:mode-sanitize-node">
        <xsl:attribute name="{node-name(.)}" select="yatcs:sanitize-filename(.)"/>
    </xsl:template>
    
</xsl:stylesheet>

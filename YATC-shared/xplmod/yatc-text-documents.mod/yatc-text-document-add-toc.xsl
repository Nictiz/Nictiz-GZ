<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.ct4_k5q_5wb" xmlns:yatcs-td="https://nictiz.nl/ns/YATC-shared/text-document" xmlns="https://nictiz.nl/ns/YATC-shared/text-document" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This stylesheet adds a table of contents to YATC text documents.
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

    <xsl:output method="xml" encoding="UTF-8"/>

    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:mode name="mode-add-anchors" on-no-match="shallow-copy"/>

    <xsl:include href="../../xslmod/general.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL VARIABLES: -->

    <xsl:variable name="add-toc" as="xs:boolean" select="yatcs:str2bln(/*/@toc, true())"/>

    <!-- ======================================================================= -->
    
    <xsl:template match="/*">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:apply-templates select="@* | (yatcs-td:* except yatcs-td:section)"/>
            <xsl:apply-templates select="yatcs-td:section[1]"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template match="/*/yatcs-td:section[1]">
        <xsl:if test="$add-toc">
            <section>
                <title>Table of contents</title>
                <xsl:call-template name="add-toc-level">
                    <xsl:with-param name="root" select="/*"/>
                </xsl:call-template>
            </section>
        </xsl:if>
        <xsl:apply-templates select=". | following-sibling::yatcs-td:section" mode="mode-add-anchors"/>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:template name="add-toc-level">
        <xsl:param name="root" as="element()" required="false" select="."/>
        
        <xsl:variable name="sections" as="element(yatcs-td:section)*" select="$root/yatcs-td:section"/>
        <xsl:if test="exists($sections)">
            <unorderedlist>
                <xsl:for-each select="$sections">
                    <entry>
                        <para><link href="#{local:section-anchor(.)}"><xsl:value-of select="yatcs-td:title"/></link></para>
                        <xsl:call-template name="add-toc-level"/>
                    </entry>                    
                </xsl:for-each>
            </unorderedlist>
        </xsl:if>
    </xsl:template>
    
    <!-- ======================================================================= -->
    <!-- ADD ANCHORS: -->
    
    <xsl:template match="yatcs-td:section/yatcs-td:title" mode="mode-add-anchors">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <anchor name="{local:section-anchor(..)}"/>
            <xsl:apply-templates mode="#current"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- ======================================================================= -->
    <!-- SUPPORT: -->
    
    <xsl:function name="local:section-anchor" as="xs:string">
        <xsl:param name="section" as="element(yatcs-td:section)?"/>
        
        <xsl:choose>
            <xsl:when test="exists($section)">
                <xsl:variable name="section-nr" as="xs:integer" select="count($section/preceding-sibling::yatcs-td:section) + 1"/>
                <xsl:sequence select="local:section-anchor(($section/ancestor::yatcs-td:section)[last()]) || '-' || $section-nr"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:sequence select="'section-anchor'"/>
            </xsl:otherwise>  
        </xsl:choose>
    </xsl:function>
    
</xsl:stylesheet>

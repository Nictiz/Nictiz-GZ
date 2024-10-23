<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.jb2_cdt_jzb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This stylesheet will check for duplicate filenames in the list of include/import files 
       (which can happen when subdirectories are involved) and makes these unique.
       
       A duplicate entry in the masters list (which can happen when subdirectories are involved) is not allowed!
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

    <xsl:include href="../../../../YATC-shared/xslmod/general.mod.xsl"/>
    <xsl:include href="../../../../YATC-shared/xslmod/href.mod.xsl"/>
    
    <!-- ================================================================== -->

    <xsl:template match="/*/masters">
        <!-- Duplicate target hrefs here not allowed! -->
        <xsl:for-each-group select="document" group-by="string(@href-target)">
            <xsl:if test="count(current-group()) ne 1">
                <xsl:call-template name="yatcs:raise-error">
                    <xsl:with-param name="msg-parts" select="('Duplicate master target found while flattening: ', yatcs:q(current-grouping-key()))"/>
                </xsl:call-template>
            </xsl:if>
        </xsl:for-each-group>

        <!-- If we reach this, all is well, just copy it: -->
        <xsl:copy-of select="."/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="/*/includes">
        <xsl:copy>
            <xsl:copy-of select="@*"/>

            <xsl:for-each-group select="document" group-by="string(@name)">
                <xsl:choose>
                    <xsl:when test="count(current-group()) ne 1">
                        <!-- Duplicate name, de-duplicate it in the target! -->
                        <xsl:for-each select="current-group()">
                            <xsl:copy>
                                <xsl:copy-of select="@*"/>
                                
                                <xsl:variable name="hrefTarget" as="xs:string" select="string(@href-target)"/>
                                <xsl:variable name="hrefTargetDirectory" as="xs:string" select="yatcs:href-path($hrefTarget)"/>
                                <xsl:variable name="hrefTargetName" as="xs:string" select="yatcs:href-name-noext($hrefTarget)"/>
                                <xsl:variable name="hrefTargetExtension" as="xs:string" select="yatcs:href-ext($hrefTarget)"/>
                                <xsl:variable name="newTargetFilename" as="xs:string" select="$hrefTargetName || '-' || generate-id(.) || '.' || $hrefTargetExtension">
                                    <!-- There is an almost infinitesimal chance that the name is now still not unique, let's just not bother with that… -->
                                </xsl:variable>
                                <xsl:attribute name="href-target" select="yatcs:href-concat(($hrefTargetDirectory, $newTargetFilename))"/>
                                <xsl:attribute name="renamed" select="true()"/>
                                
                            </xsl:copy>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- Name is unique, just copy: -->
                        <xsl:copy-of select="current-group()"/>
                    </xsl:otherwise>  
                </xsl:choose>
            </xsl:for-each-group>

        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>

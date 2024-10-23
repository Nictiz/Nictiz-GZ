<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.ert_dgc_lwb" exclude-result-prefixes="#all" expand-text="false">
    <!-- ======================================================================= -->
    <!-- 
       This module provides access to the standard ADA release file.
       
       To override this in an import, redefine the adaReleaseFilename or adaReleaseFileUri parameter (*not* adaReleaseFile).
       The system checks whether this release file is actually there and by overriding the file*name*, 
       this mechanism keeps working. 
       
       Depends on:
       - ada-2-wiki-build-standard-parameters.mod.xsl
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
    <!-- LOAD THE ADA RELEASE FILE: -->
    
    <xsl:param name="useAdaReleaseFile" required="false" select="string(true())">
        <!-- Specify as false to stop the build from using an ADA release file . -->
    </xsl:param>

    <xsl:param name="adaReleaseFilename" as="xs:string" required="false" select="$sourceProjectName || '-ada-release.xml'">
        <!-- The filename part of the ADA release file. -->
    </xsl:param>
    
    <xsl:param name="adaReleaseFileUri" as="xs:string" select="yatcs:href-concat(($parameters($yatcs:parnameProjectsBaseStorageDirectory)[1], $sourceProjectName, 'definitions', $adaReleaseFilename))">
        <!-- The full URI of the ADA release file. -->
    </xsl:param>

    <xsl:param name="adaReleaseFile" as="document-node()?">
        <xsl:choose>
            <xsl:when test="not(xs:boolean($useAdaReleaseFile))">
                <xsl:sequence select="()"/>
            </xsl:when>
            <xsl:when test="doc-available($adaReleaseFileUri)">
                <xsl:sequence select="doc($adaReleaseFileUri)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="yatcs:raise-error">
                    <xsl:with-param name="msg-parts" select="('ADA release file ', yatcs:q($adaReleaseFileUri), ' not found or not well-formed')"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:param>

</xsl:stylesheet>

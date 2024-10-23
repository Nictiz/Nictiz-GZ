<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local-efg-56772" exclude-result-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       This stylesheet is a stand-alone driver for the yatcs:get-combined-parameters#2 function in ../xslmod/yatc-parameters.mod.xsl.
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

    <xsl:include href="../xslmod/general.mod.xsl"/>
    <xsl:include href="../xslmod/href.mod.xsl"/>
    <xsl:include href="../xslmod/yatc-system.mod.xsl"/>
    <xsl:include href="../xslmod/yatc-parameters.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- PARAMETERS: -->

    <xsl:param name="staticBaseUri" as="xs:string" required="false" select="static-base-uri()">
        <!-- The static base URI of the location from where the set of parameters must be computed. -->
    </xsl:param>

    <xsl:param name="hrefAdditionalParameterDocuments" as="xs:string*" required="no" select="()">
        <!-- Optional href-s of additional parameter documents to take into account. -->
    </xsl:param>

    <xsl:param name="nameContains" as="xs:string?" required="false" select="()">
        <!-- An optional string for the parameter name to contain (case-insensitive) -->
    </xsl:param>

    <!-- ======================================================================= -->
    <!-- GLOBAL VARIABLES: -->

    <xsl:variable name="nameContainsNormalized" as="xs:string?" select="if (normalize-space($nameContains) eq '') then () else lower-case($nameContains)"/>

    <xsl:variable name="parameters" as="element(yatcs:parameters)" select="yatcs:get-combined-parameters($staticBaseUri, $hrefAdditionalParameterDocuments)"/>

    <xsl:variable name="lf" as="xs:string" select="'&#10;'"/>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <xsl:for-each select="$parameters/yatcs:parameter[local:show-parameter(@name)]">
            <xsl:value-of select="@name"/>
            <xsl:text>=</xsl:text>
            <xsl:for-each select="yatcs:value">
                <xsl:text>"</xsl:text>
                <xsl:value-of select="."/>
                <xsl:text>"</xsl:text>
                <xsl:if test="position() ne last()">
                    <xsl:text>, </xsl:text>
                </xsl:if>
            </xsl:for-each>
            <xsl:value-of select="$lf"/>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:show-parameter" as="xs:boolean">
        <xsl:param name="name" as="xs:string"/>

        <xsl:choose>
            <xsl:when test="empty($nameContainsNormalized)">
                <xsl:sequence select="true()"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:sequence select="contains(lower-case($name), $nameContainsNormalized)"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

</xsl:stylesheet>

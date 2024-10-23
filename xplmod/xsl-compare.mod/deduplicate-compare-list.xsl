<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.txd_tw4_ywb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       Deduplicates a compare list for comparing directories/files. See ../compare.mod.xpl
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

    <xsl:include href="../../xslmod/href.mod.xsl"/>

    <!-- ================================================================== -->

    <xsl:template match="/*/*:application">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:for-each-group select="*" group-by="local:grouping-key(.)">
                <xsl:sequence select="current-group()[1]"/>
            </xsl:for-each-group>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:grouping-key" as="xs:string">
        <xsl:param name="compare-elm" as="element()"/>

        <xsl:for-each select="$compare-elm">

            <xsl:choose>
                <xsl:when test="exists(@href1) and exists(@href2)">
                    <xsl:sequence select="string-join((local-name(.), yatcs:href-canonical(@href1), yatcs:href-canonical(@href2)), '|')"/>
                </xsl:when>
                <xsl:otherwise>
                    <!-- Some unexpected element with not the expected attributes. Just keep it by generating a unique key for it: -->
                    <xsl:sequence select="generate-id(.)"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:function>

</xsl:stylesheet>

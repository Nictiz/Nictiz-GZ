<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.sfz_wjn_fwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
       This is stylesheet that is used to postprocess the ADA data files for mp/9.0.7 after retrieval.
       
       Original comment: This XSL was created to facilitate mapping from ADA MP9-transaction.
       
       The filename was kept, but the contents was changed into a (much shorter) 3.0 version.
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

    <xsl:strip-space elements="*"/>

    <!-- ================================================================== -->

    <xsl:template match="stoptype[@code]">
        <!-- Let's update the stoptype display name following issue https://bits.nictiz.nl/browse/MP-80 -->
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:choose>
                <xsl:when test="@code='1' and @codeSystem='2.16.840.1.113883.2.4.3.11.60.20.77.5.2.1'">
                    <xsl:attribute name="displayName">Tijdelijk</xsl:attribute>
                </xsl:when>
                <xsl:when test="@code='2' and @codeSystem='2.16.840.1.113883.2.4.3.11.60.20.77.5.2.1'">
                    <xsl:attribute name="displayName">Definitief</xsl:attribute>
                </xsl:when>
            </xsl:choose>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>

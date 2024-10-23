<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="true" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:nwf="http://www.nictiz.nl/wiki-functions" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.202302071459349160650100" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <!-- ================================================================== -->
    <!--
        Generic ada-2-wiki processing function(s).
    -->
    <!-- ================================================================== -->
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
    <!-- ================================================================== -->
    
    <xsl:import href="../../../../YATC-shared/xsl/util/utilities.xsl"/>
    <xsl:import href="../../../../YATC-shared/xsl/util/datetime.xsl"/>
    <xsl:import href="date-functions.xsl"/>
    <xsl:import href="constants.xsl"/>

    <xsl:function name="nwf:unit-string" as="xs:string?">
        <!-- Returns a unit string for display purposes, depending on the given unit ánd whether the value is singular or plural -->
        <xsl:param name="value" as="xs:double?">
            <!-- Input param to determine whether to return the singular or plural form for display -->
        </xsl:param>
        <xsl:param name="unit-in" as="xs:string?">
            <!-- Input unit string -->
        </xsl:param>

        <xsl:variable name="unit" select="normalize-space(lower-case($unit-in))"/>

        <xsl:choose>
            <!-- same string for singular and plural -->
            <xsl:when test="$unit = ('milliliter', 'ml')">ml</xsl:when>
            <xsl:when test="$unit = ('internationale eenheid', '[iU]')">internationale eenheid</xsl:when>
            <xsl:when test="$unit = ('uur', 'h')">uur</xsl:when>
            <!-- return singular form -->
            <xsl:when test="$value gt 0 and $value lt 2">
                <xsl:choose>
                    <xsl:when test="$unit = ('dag', 'd')">dag</xsl:when>
                    <xsl:when test="$unit = ('week', 'wk')">week</xsl:when>
                    <xsl:when test="$unit = ('jaar', 'a')">jaar</xsl:when>
                    <xsl:when test="$unit = ('stuk', '1')">stuk</xsl:when>
                    <xsl:when test="$unit = ('dosis')">dosis</xsl:when>
                    <xsl:when test="$unit = ('druppel', '[drp]')">druppel</xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="normalize-space($unit-in)"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <!-- return plural form -->
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="$unit = ('dag', 'd')">dagen</xsl:when>
                    <xsl:when test="$unit = ('week', 'wk')">weken</xsl:when>
                    <xsl:when test="$unit = ('jaar', 'a')">jaar</xsl:when>
                    <xsl:when test="$unit = ('stuk', '1')">stuks</xsl:when>
                    <xsl:when test="$unit = ('dosis')">doses</xsl:when>
                    <xsl:when test="$unit = ('druppel', '[drp]')">druppels</xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="normalize-space($unit-in)"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>
    
</xsl:stylesheet>

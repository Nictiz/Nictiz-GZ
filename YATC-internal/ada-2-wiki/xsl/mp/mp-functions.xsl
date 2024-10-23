<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:nwf="http://www.nictiz.nl/wiki-functions" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023030708211997343970100">
    <!-- ================================================================== -->
    <!--
        Support functions for medicatieproces.
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

    <xsl:import href="../../../../YATC-shared/xsl/util/mp-functions.xsl"/>

    <xsl:strip-space elements="*"/>

    <!-- ================================================================== -->

    <xsl:function name="nf:configurable-T-date" as="xs:string?">
        <!-- Output date, which could be a relative date. -->
        <xsl:param name="current-element" as="element()?">
            <!-- the ada xml element in the current bouwsteen that has a date to be converted -->
        </xsl:param>
        <xsl:param name="output0time" as="xs:boolean?">
            <!-- whether or not a time of 00:00 should be outputted in the text. -->
        </xsl:param>
        <xsl:param name="outputEndtime" as="xs:boolean?">
            <!-- whether or not a time of 23:59 should be outputted in the text. -->
        </xsl:param>
        <xsl:variable name="string-output" as="xs:string*">
            <xsl:choose>
                <xsl:when test="$current-element/@value castable as xs:dateTime">
                    <xsl:value-of select="nf:formatDate($current-element/@value)"/>
                    <xsl:variable name="time" select="nf:formatTime(nf:getTime($current-element/@value), $output0time)"/>
                    <xsl:value-of select="
                            if ($time) then
                                concat(', om ', $time)
                            else
                                ()"/>
                </xsl:when>
                <xsl:when test="$current-element/@value castable as xs:date">
                    <xsl:value-of select="nf:formatDate($current-element/@value)"/>
                </xsl:when>
                <xsl:when test="starts-with($current-element/@value, 'T')">
                    <xsl:value-of select="nf:formatTDate($current-element/@value, $output0time, $outputEndtime)"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$current-element/@value"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:value-of select="normalize-space(string-join($string-output, ''))"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:periode-string" as="xs:string?">
        <!-- Outputs a human readable string for a period with a possible start, duration, end date. 
            The actual dates may be replaced by a configurable "T"-date with an addition of subtraction of a given number of days. -->
        <xsl:param name="start-date">
            <!-- start date of the period -->
        </xsl:param>
        <xsl:param name="periode">
            <!-- duration of the period -->
        </xsl:param>
        <xsl:param name="end-date">
            <!-- end date of the period -->
        </xsl:param>
        <xsl:param name="criterium" as="element()?">
            <!-- criterium of the period -->
        </xsl:param>

        <xsl:variable name="waarde" as="xs:string*">
            <xsl:if test="$start-date[@value]">Vanaf <xsl:value-of select="nf:configurable-T-date($start-date, false(), true())"/></xsl:if>
            <xsl:if test="$start-date[@value] and ($periode[@value] | $end-date[@value])">
                <xsl:value-of select="', '"/>
            </xsl:if>
            <xsl:if test="$periode[@value]">gedurende <xsl:value-of select="concat($periode/@value, ' ', nwf:unit-string($periode/@value, $periode/@unit))"/></xsl:if>
            <xsl:if test="$end-date[@value]"> tot en met <xsl:value-of select="nf:configurable-T-date($end-date, true(), false())"/></xsl:if>
            <xsl:if test="$criterium[@value]"> (<xsl:value-of select="$criterium/@value"/>)</xsl:if>
            <!-- projectgroep wil geen tekst 'tot nader order' in omschrijving, teams app Marijke dd 30 mrt 2020 -->
            <!--                <xsl:if test="not($periode[@value]) and not($end-date[@value])"><xsl:if test="$start-date[@value]">, </xsl:if>tot nader order</xsl:if>-->
        </xsl:variable>
        <xsl:value-of select="normalize-space(string-join($waarde, ''))"/>
    </xsl:function>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="true" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023020714593489993150100" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <!-- ================================================================== -->
    <!--
        Functions for processing dates (and times).
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

    <xsl:function name="nf:datetime-2-timestring" as="xs:string?">
        <!-- Takes an inputTime as string and outputs the time in format '14:32' (24 hour clock, hoours and minutes only) -->
        <xsl:param name="in" as="xs:string?">
            <!-- xs:dateTime or xs:time castable string -->
        </xsl:param>

        <xsl:choose>
            <xsl:when test="$in castable as xs:dateTime">
                <xsl:value-of select="format-dateTime(xs:dateTime($in), '[H01]:[m01]')"/>
            </xsl:when>
            <xsl:when test="$in castable as xs:time">
                <xsl:value-of select="format-time(xs:time($in), '[H01]:[m01]')"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$in"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:getTime" as="xs:time?">
        <!-- Returns the xs:time from a xs:dateTime formatted string. Could include timezone. -->
        <xsl:param name="xs-datetime" as="xs:string?">
            <!--  -->
        </xsl:param>

        <xsl:if test="substring-after($xs-datetime, 'T') castable as xs:time">
            <xsl:value-of select="xs:time(substring-after($xs-datetime, 'T'))"/>
        </xsl:if>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:formatDate" as="xs:string?">
        <!-- Takes an xml date(time) as a string in inputDate and outputs the date in format '3 jun 2018' -->
        <xsl:param name="inputDate" as="xs:string?">
            <!-- xs:date castable string -->
        </xsl:param>
        <xsl:variable name="date" select="substring($inputDate, 1, 10)"/>

        <!-- Normally you would use format-date() using Dutch language/country, but Saxon-He and Saxon-PE both misbehave and return English month names regardless
                e.g. format-date(xs:date('2019-03-21'), '[D01] [Mn,*-3] [Y0001]', 'nl', AD', 'NL') -->
        <xsl:if test="$date castable as xs:date">
            <xsl:variable name="xsdate" select="xs:date($date)" as="xs:date"/>
            <xsl:variable name="daynum" select="day-from-date($xsdate)" as="xs:integer"/>
            <xsl:variable name="monthnum" select="month-from-date($xsdate)" as="xs:integer"/>
            <xsl:variable name="yearnum" select="year-from-date($xsdate)" as="xs:integer"/>

            <xsl:value-of select="concat($daynum, ' ', nf:getDutchMonthName($monthnum, 3, 'low'), ' ', $yearnum)"/>
        </xsl:if>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:formatTDate" as="xs:string*">
        <!-- Formats ada relativeDate(time) to a display date(Time) -->
        <xsl:param name="relativeDate" as="xs:string?">
            <!-- Input ada relativeDate(Time) -->
        </xsl:param>
        <xsl:param name="output0time" as="xs:boolean?">
            <!-- Whether or not a time of 00:00 should be outputted in the text. Defaults to true. -->
        </xsl:param>
        <xsl:param name="outputEndtime" as="xs:boolean?">
            <!-- Whether or not a time of 23:59 should be outputted in the text.  Defaults to true. -->
        </xsl:param>

        <xsl:choose>
            <!-- double check for expected relative date(time) like "T-50D{12:34:56}" in the input -->
            <xsl:when test="matches($relativeDate, '^(T|DOB)([+\-]\d+(\.\d+)?[YMD])?')">
                <xsl:analyze-string select="$relativeDate" regex="\d+(\.\d+)?[YMD]">
                    <xsl:matching-substring>
                        <xsl:if test="position() gt 2">
                            <xsl:text> en </xsl:text>
                        </xsl:if>
                        <xsl:choose>
                            <xsl:when test="ends-with(., 'Y')">
                                <xsl:value-of select="substring(., 1, string-length(.) - 1)"/>
                                <xsl:text> jaar</xsl:text>
                            </xsl:when>
                            <xsl:when test="ends-with(., 'M')">
                                <xsl:value-of select="substring(., 1, string-length(.) - 1)"/>
                                <xsl:choose>
                                    <xsl:when test="xs:decimal(substring(., 1, string-length(.) - 1)) = 1">
                                        <xsl:text> maand</xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text> maanden</xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:when>
                            <xsl:when test="ends-with(., 'D')">
                                <xsl:value-of select="substring(., 1, string-length(.) - 1)"/>
                                <xsl:choose>
                                    <xsl:when test="xs:decimal(substring(., 1, string-length(.) - 1)) = 1">
                                        <xsl:text> dag</xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text> dagen</xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:when>
                            <xsl:otherwise>
                                <!-- unknown date part ... not possible but not taking chances -->
                                <xsl:value-of select="."/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:matching-substring>
                    <xsl:non-matching-substring>
                        <xsl:choose>
                            <xsl:when test=". = 'T+' or . = 'T-'">
                                <xsl:text>T </xsl:text>
                                <xsl:value-of select="substring(., 2, 1)"/>
                                <xsl:text>

</xsl:text>
                            </xsl:when>
                            <xsl:when test=". = 'DOB+' or . = 'DOB-'">
                                <xsl:text>DOB </xsl:text>
                                <xsl:value-of select="substring(., 4, 1)"/>
                                <xsl:text>

</xsl:text>
                            </xsl:when>
                            <!-- AWE support for relative date(time) like "T{12:34:56}" in the input -->
                            <xsl:when test="matches(., 'T\{.*\}')">
                                <xsl:if test="(string-length(.) gt 3) and (not(starts-with(., 'T{00:00') or starts-with(., 'T{23:59'))) or ($outputEndtime and starts-with(., 'T{23:59')) or ($output0time and starts-with(., 'T{00:00'))">
                                    <xsl:value-of select="concat('T om ', replace(substring(., 3, string-length(.) - 3), '(:00)$', ''), ' uur')"/>
                                </xsl:if>
                            </xsl:when>
                            <xsl:when test="matches(., '\{.*\}')">
                                <xsl:if test="(string-length(.) gt 2) and (not(starts-with(., '{00:00') or starts-with(., '{23:59'))) or ($outputEndtime and starts-with(., '{23:59')) or ($output0time and starts-with(., '{00:00'))">
                                    <!-- AWE output the minutes even though they are :00, so output 15:00 uur instead of 15 uur -->
                                    <xsl:value-of select="concat(' om ', replace(substring(., 2, string-length(.) - 2), '(:00)$', ''), ' uur')"/>
                                </xsl:if>
                            </xsl:when>
                            <xsl:otherwise>
                                <!-- unknown part or just T or DOB -->
                                <xsl:value-of select="."/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:non-matching-substring>
                </xsl:analyze-string>
            </xsl:when>
            <xsl:otherwise>
                <!-- simply return input string -->
                <xsl:value-of select="$relativeDate"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:getDutchMonthName" as="xs:string?">
        <!-- Return Dutch month name from month number (1-12) -->
        <xsl:param name="monthnum" as="xs:integer?">
            <!-- xs:integer month number e.g. from month-from-date() -->
        </xsl:param>
        <xsl:param name="length" as="xs:integer?">
            <!-- Max length of the name to return. Default 3 -->
        </xsl:param>
        <xsl:param name="case" as="xs:string">
            <!-- Casing of the name to return. 'low' (default), 'high', 'firstcap' -->
        </xsl:param>

        <xsl:variable name="fullMonthName" as="xs:string?">
            <xsl:choose>
                <xsl:when test="$monthnum = 1">Januari</xsl:when>
                <xsl:when test="$monthnum = 2">Februari</xsl:when>
                <xsl:when test="$monthnum = 3 and $length = 3">Mrt</xsl:when>
                <xsl:when test="$monthnum = 3">Maart</xsl:when>
                <xsl:when test="$monthnum = 4">April</xsl:when>
                <xsl:when test="$monthnum = 5">Mei</xsl:when>
                <xsl:when test="$monthnum = 6">Juni</xsl:when>
                <xsl:when test="$monthnum = 7">Juli</xsl:when>
                <xsl:when test="$monthnum = 8">Augustus</xsl:when>
                <xsl:when test="$monthnum = 9">September</xsl:when>
                <xsl:when test="$monthnum = 10">Oktober</xsl:when>
                <xsl:when test="$monthnum = 11">November</xsl:when>
                <xsl:when test="$monthnum = 12">December</xsl:when>
            </xsl:choose>
        </xsl:variable>

        <xsl:variable name="casedMonthName" as="xs:string?">
            <xsl:choose>
                <xsl:when test="$case = 'high'">
                    <xsl:value-of select="upper-case($fullMonthName)"/>
                </xsl:when>
                <xsl:when test="$case = 'firstcap'">
                    <xsl:value-of select="$fullMonthName"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="lower-case($fullMonthName)"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <xsl:choose>
            <xsl:when test="string-length($casedMonthName) = 0"/>
            <xsl:when test="$length gt 0">
                <xsl:value-of select="substring($casedMonthName, 1, $length)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$casedMonthName"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:formatTime" as="xs:string?">
        <!-- Takes an inputTime as string or time and outputs the time in format ' 14:32' (24 hour clock) -->
        <xsl:param name="inputTime">
            <!--  -->
        </xsl:param>
        <xsl:param name="output0time" as="xs:boolean?">
            <!-- boolean to either output the time smaller than or equal to 00:00:29 or not. Default = true = output the zero-time -->
        </xsl:param>
        <xsl:if test="$inputTime castable as xs:time">
            <xsl:choose>
                <xsl:when test="not(exists($output0time)) or $output0time">
                    <xsl:value-of select="format-time(xs:time($inputTime), ' [H01]:[m01]')"/>
                </xsl:when>
                <xsl:when test="xs:time($inputTime) gt xs:time('00:00:29')">
                    <xsl:value-of select="format-time(xs:time($inputTime), ' [H01]:[m01]')"/>
                </xsl:when>
            </xsl:choose>
        </xsl:if>
    </xsl:function>
    
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/YATC-shared/xsl/util/datetime.xsl"?>
<?yatc-distribution-info name="VZVZ-MedMij" timestamp="2024-02-06T09:13:30.86+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/YATC-shared/xsl/util/datetime.xsl == -->
<!-- == Distribution: VZVZ-MedMij; 0.2; 2024-02-06T09:13:30.86+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:util="urn:hl7:utilities"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:functx="http://www.functx.com"
                xmlns:yatcs="https://nictiz.nl/ns/YATC-shared"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:local="#local.2023111508475363470720100">
   <!-- ================================================================== -->
   <!--
        TBD
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
   <!-- Uncomment for testing... -->
   <!--<xsl:output indent="yes" omit-xml-declaration="yes"/>
    <xsl:template match="/" exclude-result-prefixes="#all">
        <xsl:variable name="T" select="current-date()" as="xs:date"/>
        <x T="{$T}">
            <xsl:text>&#10;   </xsl:text>
            <xsl:comment>just T</xsl:comment>
            <x in="T"><xsl:value-of select="nf:calculate-t-date('T',$T)"/></x>
            <x in="T-0D"><xsl:value-of select="nf:calculate-t-date('T-0D',$T)"/></x>
            <xsl:comment>a date</xsl:comment>
            <x in="2020-06-22"><xsl:value-of select="nf:calculate-t-date('2020-06-22',$T)"/></x>
            <xsl:comment>year based</xsl:comment>
            <x in="T-1Y{{12:34:56}}"><xsl:value-of select="nf:calculate-t-date('T-1Y{12:34:56}',$T)"/></x>
            <x in="T-2Y{{12:34}}"><xsl:value-of select="nf:calculate-t-date('T-2Y{12:34}',$T)"/></x>
            <x in="T-3Y{{12}}"><xsl:value-of select="nf:calculate-t-date('T-3Y{12}',$T)"/></x>
            <x in="T-4Y"><xsl:value-of select="nf:calculate-t-date('T-4Y',$T)"/></x>
            <xsl:comment>month based</xsl:comment>
            <x in="T-1M{{12:34:56}}"><xsl:value-of select="nf:calculate-t-date('T-1M{12:34:56}',$T)"/></x>
            <x in="T-2M{{12:34}}"><xsl:value-of select="nf:calculate-t-date('T-2M{12:34}',$T)"/></x>
            <x in="T-3M{{12}}"><xsl:value-of select="nf:calculate-t-date('T-3M{12}',$T)"/></x>
            <x in="T-4M"><xsl:value-of select="nf:calculate-t-date('T-4M',$T)"/></x>
            <xsl:comment>day based</xsl:comment>
            <x in="T-20D{{00:00:00}}"><xsl:value-of select="nf:calculate-t-date('T-20D{00:00:00}',$T)"/></x>
            <x in="T-1D{{12:34:56}}"><xsl:value-of select="nf:calculate-t-date('T-1D{12:34:56}',$T)"/></x>
            <x in="T-2D{{12:34}}"><xsl:value-of select="nf:calculate-t-date('T-2D{12:34}',$T)"/></x>
            <x in="T-3D{{12}}"><xsl:value-of select="nf:calculate-t-date('T-3D{12}',$T)"/></x>
            <x in="T-4D"><xsl:value-of select="nf:calculate-t-date('T-4D',$T)"/></x>
            <xsl:comment>year/month based</xsl:comment>
            <x in="T-1Y2M{{12:34:56}}"><xsl:value-of select="nf:calculate-t-date('T-1Y2M{12:34:56}',$T)"/></x>
            <x in="T-2Y2M{{12:34}}"><xsl:value-of select="nf:calculate-t-date('T-2Y2M{12:34}',$T)"/></x>
            <x in="T-3Y2M{{12}}"><xsl:value-of select="nf:calculate-t-date('T-3Y2M{12}',$T)"/></x>
            <x in="T-4Y2M"><xsl:value-of select="nf:calculate-t-date('T-4Y2M',$T)"/></x>
            <xsl:comment>year/day based</xsl:comment>
            <x in="T-1Y2D{{12:34:56}}"><xsl:value-of select="nf:calculate-t-date('T-1Y2D{12:34:56}',$T)"/></x>
            <x in="T-2Y2D{{12:34}}"><xsl:value-of select="nf:calculate-t-date('T-2Y2D{12:34}',$T)"/></x>
            <x in="T-3Y2D{{12}}"><xsl:value-of select="nf:calculate-t-date('T-3Y2D{12}',$T)"/></x>
            <x in="T-4Y2D"><xsl:value-of select="nf:calculate-t-date('T-3Y2D',$T)"/></x>
            <xsl:comment>month/day based</xsl:comment>
            <x in="T-1M2D{{12:34:56}}"><xsl:value-of select="nf:calculate-t-date('T-1M2D{12:34:56}',$T)"/></x>
            <x in="T-2M2D{{12:34}}"><xsl:value-of select="nf:calculate-t-date('T-2M2D{12:34}',$T)"/></x>
            <x in="T-3M2D{{12}}"><xsl:value-of select="nf:calculate-t-date('T-3M2D{12}',$T)"/></x>
            <x in="T-4M2D"><xsl:value-of select="nf:calculate-t-date('T-3M2D',$T)"/></x>
            <xsl:comment>year/month/day based</xsl:comment>
            <x in="T-1Y2M{{12:34:56}}"><xsl:value-of select="nf:calculate-t-date('T-1Y2M2D{12:34:56}',$T)"/></x>
            <x in="T-2Y2M{{12:34}}"><xsl:value-of select="nf:calculate-t-date('T-2Y2M2D{12:34}',$T)"/></x>
            <x in="T-3Y2M{{12}}"><xsl:value-of select="nf:calculate-t-date('T-3Y2M2D{12}',$T)"/></x>
            <x in="T-4Y2M2D"><xsl:value-of select="nf:calculate-t-date('T-5Y2M2D',$T)"/></x>
            <xsl:comment>illegal time (just produces date and logs error)</xsl:comment>
            <x in="T-1D{{24}}"><xsl:value-of select="nf:calculate-t-date('T-1D{25}',$T)"/></x>
        </x>
    </xsl:template>-->
   <!-- ================================================================== -->
   <xsl:function name="nf:timestamp-to-dateTime"
                 as="xs:dateTime?">
      <!-- Convert an ADA timestamp element to an xs:dateTime value, if possible. -->
      <xsl:param name="timestamp"
                 as="xs:string">
         <!-- The ADA element of type timestamp to convert. -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="normalize-space($timestamp) castable as xs:dateTime">
            <xsl:value-of select="xs:dateTime(nf:add-Amsterdam-timezone-to-dateTimeString(normalize-space($timestamp)))"/>
         </xsl:when>
         <xsl:when test="concat(normalize-space($timestamp), ':00') castable as xs:dateTime">
            <xsl:value-of select="xs:dateTime(nf:add-Amsterdam-timezone-to-dateTimeString(concat(normalize-space($timestamp), ':00')))"/>
         </xsl:when>
         <xsl:when test="normalize-space($timestamp) castable as xs:date">
            <xsl:value-of select="xs:dateTime(concat(normalize-space($timestamp), 'T00:00:00'))"/>
         </xsl:when>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:isFuture"
                 as="xs:boolean">
      <!-- Returns true (boolean) if the date or dateTime is in the future. Defaults to false. Input should be a value that is castable to a date or dateTime. Input may be empty which results in the default false value. -->
      <xsl:param name="dateOrDt">
         <!-- The ADA date or dateTime. -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$dateOrDt castable as xs:date">
            <xsl:value-of select="$dateOrDt &gt; current-date()"/>
         </xsl:when>
         <xsl:when test="$dateOrDt castable as xs:dateTime">
            <xsl:value-of select="$dateOrDt &gt; current-dateTime()"/>
         </xsl:when>
         <xsl:when test="starts-with($dateOrDt, 'T+')">
            <xsl:value-of select="true()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="false()"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:isFutureRelativeDate"
                 as="xs:boolean">
      <!-- Returns true (boolean) if the dateOrDt is in the future compared to relativeDateOrDt. Defaults to false. 
            Input should be a value that is castable to an XML date or dateTime. Input may be empty or non-parseable which results in the default false value. -->
      <xsl:param name="dateOrDt"
                 as="xs:string?">
         <!-- The ADA date or dateTime which should contain an XML date or dateTime. -->
      </xsl:param>
      <xsl:param name="relativeDateOrDt"
                 as="xs:string?">
         <!-- The ada date or dateTime to compare the dateOrDt to. Should contain an XML date or dateTime. 
            Defaults to current-date(Time) when empty or non-parseable to an XML date(Time). -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$dateOrDt castable as xs:dateTime">
            <xsl:choose>
               <xsl:when test="$relativeDateOrDt castable as xs:dateTime">
                  <xsl:value-of select="xs:dateTime($dateOrDt) gt xs:dateTime($relativeDateOrDt)"/>
               </xsl:when>
               <xsl:when test="$relativeDateOrDt castable as xs:date">
                  <xsl:value-of select="xs:dateTime($dateOrDt) gt xs:dateTime(concat($relativeDateOrDt, 'T00:00:00'))"/>
               </xsl:when>
               <xsl:otherwise>
                  <!-- default current-dateTime -->
                  <xsl:value-of select="xs:dateTime($dateOrDt) gt current-dateTime()"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:when>
         <xsl:when test="$dateOrDt castable as xs:date">
            <xsl:choose>
               <xsl:when test="$relativeDateOrDt castable as xs:date">
                  <xsl:value-of select="xs:date($dateOrDt) gt xs:date($relativeDateOrDt)"/>
               </xsl:when>
               <xsl:when test="$relativeDateOrDt castable as xs:dateTime">
                  <xsl:value-of select="xs:date($dateOrDt) gt xs:date(substring($relativeDateOrDt, 1, 10))"/>
               </xsl:when>
               <xsl:otherwise>
                  <!-- default current-date -->
                  <xsl:value-of select="xs:date($dateOrDt) gt current-date()"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="false()"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:isPast"
                 as="xs:boolean">
      <!-- Returns true (boolean) if the date or dateTime is in the past. Defaults to false. Input should be a value that is castable to a date or dateTime. Input may be empty which results in the default false value. -->
      <xsl:param name="dateOrDt">
         <!-- The ADA date or dateTime which should contain an XML date or dateTime. -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$dateOrDt castable as xs:date">
            <xsl:value-of select="$dateOrDt &lt; current-date()"/>
         </xsl:when>
         <xsl:when test="$dateOrDt castable as xs:dateTime">
            <xsl:value-of select="$dateOrDt &lt; current-dateTime()"/>
         </xsl:when>
         <xsl:when test="starts-with($dateOrDt, 'T-')">
            <xsl:value-of select="true()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="false()"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:isPastRelativeDate"
                 as="xs:boolean">
      <!-- Returns true (boolean) if the dateOrDt is in the past compared to relativeDateOrDt. Defaults to false. 
            Input should be a value that is castable to an XML date or dateTime. Input may be empty or non-parseable which results in the default false value. -->
      <xsl:param name="dateOrDt"
                 as="xs:string?">
         <!-- The ADA date or dateTime which should contain an XML date or dateTime. -->
      </xsl:param>
      <xsl:param name="relativeDateOrDt"
                 as="xs:string?">
         <!-- The ada date or dateTime to compare the dateOrDt to. Should contain an XML date or dateTime. 
            Defaults to current-date(Time) when empty or non-parseable to an XML date(Time). -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$dateOrDt castable as xs:dateTime">
            <xsl:choose>
               <xsl:when test="$relativeDateOrDt castable as xs:dateTime">
                  <xsl:value-of select="xs:dateTime($dateOrDt) lt xs:dateTime($relativeDateOrDt)"/>
               </xsl:when>
               <xsl:when test="$relativeDateOrDt castable as xs:date">
                  <xsl:value-of select="xs:dateTime($dateOrDt) lt xs:dateTime(concat($relativeDateOrDt, 'T00:00:00'))"/>
               </xsl:when>
               <xsl:otherwise>
                  <!-- default current-dateTime -->
                  <xsl:value-of select="xs:dateTime($dateOrDt) lt current-dateTime()"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:when>
         <xsl:when test="$dateOrDt castable as xs:date">
            <xsl:choose>
               <xsl:when test="$relativeDateOrDt castable as xs:date">
                  <xsl:value-of select="xs:date($dateOrDt) lt xs:date($relativeDateOrDt)"/>
               </xsl:when>
               <xsl:when test="$relativeDateOrDt castable as xs:dateTime">
                  <xsl:value-of select="xs:date($dateOrDt) lt xs:date(substring($relativeDateOrDt, 1, 10))"/>
               </xsl:when>
               <xsl:otherwise>
                  <!-- default current-date -->
                  <xsl:value-of select="xs:date($dateOrDt) lt current-date()"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="false()"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:quantity-to-xsDuration"
                 as="xs:duration">
      <!-- Convert an ADA quantity element to an xs:yearMonthDuration or xs:dayTimeDuration value, if possible. If not possible, the output is emptpy -->
      <xsl:param name="quantity"
                 as="element()">
         <!-- The ADA element of type quantity to convert. -->
      </xsl:param>
      <xsl:if test="$quantity/@value castable as xs:float">
         <xsl:choose>
            <xsl:when test="upper-case($quantity/@unit) = ('Y', 'A', 'ANN', 'JAAR', 'JAREN', 'YEAR', 'YEARS')">
               <xsl:copy-of select="xs:yearMonthDuration(concat('P', normalize-space($quantity/@value), 'Y'))"/>
            </xsl:when>
            <xsl:when test="upper-case($quantity/@unit) = ('MO', 'MAAND', 'MAANDEN', 'MONTH', 'MONTHS')">
               <xsl:copy-of select="xs:yearMonthDuration(concat('P', normalize-space($quantity/@value), 'M'))"/>
            </xsl:when>
            <xsl:when test="upper-case($quantity/@unit) = ('WK', 'WEEK', 'WEKEN', 'WEEKS')">
               <xsl:copy-of select="xs:dayTimeDuration(concat('P', number($quantity/@value) * 7, 'D'))"/>
            </xsl:when>
            <xsl:when test="upper-case($quantity/@unit) = ('D', 'DAG', 'DAGEN', 'DAY', 'DAYS')">
               <xsl:copy-of select="xs:dayTimeDuration(concat('P', normalize-space($quantity/@value), 'D'))"/>
            </xsl:when>
            <xsl:when test="upper-case($quantity/@unit) = ('H', 'HR', 'UUR', 'UREN', 'HOUR', 'HOURS')">
               <xsl:copy-of select="xs:dayTimeDuration(concat('PT', normalize-space($quantity/@value), 'H'))"/>
            </xsl:when>
            <xsl:when test="upper-case($quantity/@unit) = ('MIN', 'MINUTE', 'MINUUT', 'MINUTES', 'MINUTEN')">
               <xsl:copy-of select="xs:dayTimeDuration(concat('PT', normalize-space($quantity/@value), 'M'))"/>
            </xsl:when>
            <xsl:when test="upper-case($quantity/@unit) = ('S', 'SEC', 'SECONDE', 'SECONDEN', 'SECONDES', 'SECOND', 'SECONDS')">
               <xsl:copy-of select="xs:dayTimeDuration(concat('PT', normalize-space($quantity/@value), 'S'))"/>
            </xsl:when>
         </xsl:choose>
      </xsl:if>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:add-Amsterdam-timezone-to-dateTimeString"
                 as="xs:string?">
      <!-- Takes input string. If it is a dateTime, it checks if it has a timezone. If it is a dateTime without timezone the appropriate Amsterdam timezone will be set. In all other cases, the input string is returned. -->
      <xsl:param name="in"
                 as="xs:string?">
         <!-- ISO 8601 formatted dateTimeString with or without timezone "yyyy-mm-ddThh:mm:ss" or "yyyy-mm-ddThh:mm:ss[+/-]nn:nn" -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$in castable as xs:dateTime">
            <xsl:value-of select="nf:add-Amsterdam-timezone(xs:dateTime($in))"/>
         </xsl:when>
         <!-- http://hl7.org/fhir/STU3/datatypes.html#datetime
                If hours and minutes are specified, a time zone SHALL be populated. 
                Seconds must be provided due to schema type constraints but may be zero-filled and may be ignored. -->
         <xsl:when test="concat($in, ':00') castable as xs:dateTime">
            <xsl:value-of select="nf:add-Amsterdam-timezone(xs:dateTime(concat($in, ':00')))"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$in"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:add-Amsterdam-timezone"
                 as="xs:dateTime">
      <!-- Add an Amsterdam timezone to an xs:dateTime without one. Return input unaltered otherwise. -->
      <xsl:param name="in"
                 as="xs:dateTime">
         <!-- xs:dateTime with or without timezone -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="empty(timezone-from-dateTime($in))">
            <!-- Since 1996 DST starts last Sunday of March 02:00 and ends last Sunday of October at 03:00/02:00 (clock is set backwards) -->
            <!-- There is one hour in october (from 02 - 03) for which we can't be sure if no timezone is provided in the input, 
                    we default to standard time (+01:00), the correct time will be represented if a timezone was in the input, 
                    otherwise we cannot know in which hour it occured (DST or standard time) -->
            <xsl:variable name="March31"
                          select="xs:date(concat(year-from-dateTime($in), '-03-31'))"/>
            <xsl:variable name="DateTime-Start-SummerTime"
                          select="xs:dateTime(concat(year-from-dateTime($in), '-03-', (31 - functx:day-of-week($March31)), 'T02:00:00Z'))"/>
            <xsl:variable name="October31"
                          select="xs:date(concat(year-from-dateTime($in), '-10-31'))"/>
            <xsl:variable name="DateTime-End-SummerTime"
                          select="xs:dateTime(concat(year-from-dateTime($in), '-10-', (31 - functx:day-of-week($October31)), 'T02:00:00Z'))"/>
            <xsl:choose>
               <xsl:when test="$in ge $DateTime-Start-SummerTime and $in lt $DateTime-End-SummerTime">
                  <!--return UTC +2 in summer-->
                  <xsl:value-of select="adjust-dateTime-to-timezone($in, xs:dayTimeDuration('PT2H'))"/>
               </xsl:when>
               <xsl:otherwise>
                  <!--return UTC +1 in winter -->
                  <xsl:value-of select="adjust-dateTime-to-timezone($in, xs:dayTimeDuration('PT1H'))"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$in"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:calculate-date"
                 as="xs:string?">
      <!-- Calculates a new date, using inDate, operator (plus/minus) an inDuration -->
      <xsl:param name="inDate"
                 as="xs:string?">
         <!-- The ada input date as a string. Should be parseable as xs:date or xs:dateTime. Otherwise no output. -->
      </xsl:param>
      <xsl:param name="operator"
                 as="xs:string?">
         <!-- The operator to do the arithmetics with. Should be plus or minus, otherwise no output. -->
      </xsl:param>
      <xsl:param name="inDuration"
                 as="element()">
         <!-- The ada duration element, which should be added or subtracted. Must have proper @value and @unit attributes. Otherwise no output. -->
      </xsl:param>
      <xsl:if test="string-length($inDate) gt 0 and not(empty($inDuration)) and $operator = ('plus', 'minus')">
         <xsl:variable name="duration"
                       select="nf:quantity-to-xsDuration($inDuration)"/>
         <xsl:if test="not(empty($duration))">
            <xsl:choose>
               <xsl:when test="$inDate castable as xs:dateTime">
                  <xsl:choose>
                     <xsl:when test="$operator = 'plus'">
                        <xsl:value-of select="xs:dateTime($inDate) + $duration"/>
                     </xsl:when>
                     <xsl:when test="$operator = 'minus'">
                        <xsl:value-of select="xs:dateTime($inDate) - $duration"/>
                     </xsl:when>
                  </xsl:choose>
               </xsl:when>
               <xsl:when test="$inDate castable as xs:date">
                  <xsl:choose>
                     <xsl:when test="$operator = 'plus'">
                        <xsl:value-of select="xs:date($inDate) + $duration"/>
                     </xsl:when>
                     <xsl:when test="$operator = 'minus'">
                        <xsl:value-of select="xs:date($inDate) - $duration"/>
                     </xsl:when>
                  </xsl:choose>
               </xsl:when>
            </xsl:choose>
         </xsl:if>
      </xsl:if>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:calculate-t-date"
                 as="xs:string?">
      <!-- Converts a T-12D{12:34:56} like string into a proper XML date or dateTime -->
      <xsl:param name="in"
                 as="xs:string?">
         <!-- The input string to be converted -->
      </xsl:param>
      <xsl:param name="inputDateT"
                 as="xs:date?">
         <!-- The T date (if applicable) that  is relative to -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="(starts-with($in, 'T') or starts-with($in, 'DOB')) and $inputDateT castable as xs:date">
            <xsl:variable name="sign"
                          select="replace($in, '^(T|DOB)([+-])?.*', '$2')"/>
            <xsl:variable name="amountYearMonth"
                          as="xs:string?">
               <xsl:if test="matches($in, '^(T|DOB)[+-](\d+(\.\d+)?[YM]){0,2}')">
                  <xsl:value-of select="replace($in, '^(T|DOB)[+-]((\d+(\.\d+)?Y)?(\d+(\.\d+)?M)?).*', '$2')"/>
               </xsl:if>
            </xsl:variable>
            <xsl:variable name="amountDay"
                          as="xs:string?">
               <xsl:if test="matches($in, '^(T|DOB)[+-](\d+(\.\d+)?[YM]){0,2}(\d+(\.\d+)?D).*')">
                  <xsl:value-of select="replace($in, '^(T|DOB)[+-](\d+(\.\d+)?[YM]){0,2}(\d+(\.\d+)?D)?.*', '$4')"/>
               </xsl:if>
            </xsl:variable>
            <xsl:variable name="timePart"
                          select="                         if (matches($in, '^(T|DOB)[^\{]*\{([^\}]+)\}')) then                             replace($in, '^(T|DOB)[^\{]*\{([^\}]+)\}', '$2')                         else                             ()"/>
            <xsl:variable name="time"
                          as="xs:string?">
               <xsl:choose>
                  <xsl:when test="string-length($timePart) = 2">
                     <!-- time given in hours, let's add 0 minutes/seconds -->
                     <xsl:value-of select="concat($timePart, ':00:00')"/>
                  </xsl:when>
                  <xsl:when test="string-length($timePart) = 5">
                     <!-- time given in minutes, let's add 0 seconds -->
                     <xsl:value-of select="concat($timePart, ':00')"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:value-of select="$timePart"/>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:variable>
            <xsl:variable name="calculatedYearMonth"
                          as="xs:date">
               <xsl:choose>
                  <xsl:when test="$sign = '+' and string-length($amountYearMonth) gt 0">
                     <xsl:value-of select="$inputDateT + xs:yearMonthDuration(concat('P', $amountYearMonth))"/>
                  </xsl:when>
                  <xsl:when test="$sign = '-' and string-length($amountYearMonth) gt 0">
                     <xsl:value-of select="$inputDateT - xs:yearMonthDuration(concat('P', $amountYearMonth))"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:copy-of select="$inputDateT"/>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:variable>
            <xsl:variable name="calculatedDay"
                          as="xs:date">
               <xsl:choose>
                  <xsl:when test="$sign = '+' and string-length($amountDay) gt 0">
                     <xsl:value-of select="$calculatedYearMonth + xs:dayTimeDuration(concat('P', $amountDay))"/>
                  </xsl:when>
                  <xsl:when test="$sign = '-' and string-length($amountDay) gt 0">
                     <xsl:value-of select="$calculatedYearMonth - xs:dayTimeDuration(concat('P', $amountDay))"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:copy-of select="$calculatedYearMonth"/>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:variable>
            <xsl:if test="string-length($time) gt 0 and not($time castable as xs:time)">
               <xsl:call-template name="util:logMessage">
                  <xsl:with-param name="level"
                                  select="$logERROR"/>
                  <xsl:with-param name="msg">Variable dateTime "
<xsl:value-of select="$in"/>" found with illegal time string "
<xsl:value-of select="$timePart"/>"</xsl:with-param>
               </xsl:call-template>
            </xsl:if>
            <xsl:variable name="calculatedDateTime">
               <xsl:choose>
                  <xsl:when test="string-length($time) gt 0 and $time castable as xs:time">
                     <xsl:value-of select="xs:dateTime(concat(format-date($calculatedDay, '[Y0001]-[M01]-[D01]'), 'T', $time))"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <!-- we sometimes get a timezone, which is the current timezone of the system which does not make sense -->
                     <!-- so we strip the timezone -->
                     <xsl:value-of select="format-date($calculatedDay, '[Y0001]-[M01]-[D01]')"/>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:variable>
            <xsl:value-of select="nf:add-Amsterdam-timezone-to-dateTimeString($calculatedDateTime)"/>
         </xsl:when>
         <xsl:otherwise>
            <!-- we cannot calculate anything -->
            <xsl:value-of select="nf:add-Amsterdam-timezone-to-dateTimeString($in)"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:getTime"
                 as="xs:time?">
      <!-- Returns the xs:time from a xs:dateTime formatted string. Could include timezone. -->
      <xsl:param name="xs-datetime"
                 as="xs:string?"/>
      <xsl:if test="substring-after($xs-datetime, 'T') castable as xs:time">
         <xsl:value-of select="xs:time(substring-after($xs-datetime, 'T'))"/>
      </xsl:if>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="functx:day-of-week"
                 as="xs:integer?">
      <!-- Returns day of week of a certain date as integer. Sunday = 0, Saturday = 6. -->
      <xsl:param name="date"
                 as="xs:date?">
         <!-- xs:date for which the day of week needs to be returned -->
      </xsl:param>
      <xsl:if test="not(empty($date))">
         <!--<xsl:variable name="ancientSunday" select="xs:date('1901-01-06')"/>-->
         <xsl:variable name="ancientSunday"
                       select="xs:date('0001-01-07')"/>
         <xsl:choose>
            <xsl:when test="xs:date($date) ge $ancientSunday">
               <xsl:value-of select="xs:integer((xs:date($date) - $ancientSunday) div xs:dayTimeDuration('P1D')) mod 7"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:value-of select="xs:integer(($ancientSunday - xs:date($date)) div xs:dayTimeDuration('P1D')) mod 7"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:if>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:determine_date_precision_from_ada_datetime"
                 as="xs:string?">
      <!-- Returns YEAR, MONTH, DAY, HOUR, MINUTE, SECOND or MILLISECOND depending on input string. Empty input -> no output. -->
      <xsl:param name="in"
                 as="xs:string?">
         <!-- input ada (vague) (relative) date(time) -->
      </xsl:param>
      <xsl:for-each select="string-length($in) gt 0">
         <xsl:choose>
            <xsl:when test="(starts-with($in, 'T') or starts-with($in, 'DOB'))">
               <!-- a relative date -->
               <!-- let's look if there is a time present -->
               <xsl:variable name="timePart"
                             select="                             if (matches($in, '^(T|DOB)[^\{]*\{([^\}]+)\}')) then                                 replace($in, '^(T|DOB)[^\{]*\{([^\}]+)\}', '$2')                             else                                 ()"/>
               <xsl:choose>
                  <xsl:when test="string-length($timePart) = 2">
                     <!-- time given in hours -->
                     <xsl:value-of select="'HOUR'"/>
                  </xsl:when>
                  <xsl:when test="string-length($timePart) = 5">
                     <!-- time given in minutes, let's add 0 seconds -->
                     <xsl:value-of select="'MINUTE'"/>
                  </xsl:when>
                  <!-- no support for milliseconds in relative ada datetime -->
                  <xsl:otherwise>SECOND</xsl:otherwise>
               </xsl:choose>
            </xsl:when>
            <!-- date or dateTime, which may be vague -->
            <xsl:when test="string-length($in) = 4">YEAR</xsl:when>
            <xsl:when test="string-length($in) = 7">MONTH</xsl:when>
            <xsl:when test="string-length($in) = 10">DAY</xsl:when>
            <xsl:when test="string-length($in) = 13">HOUR</xsl:when>
            <xsl:when test="string-length($in) = 16">MINUTE</xsl:when>
            <xsl:when test="string-length($in) = 19">SECOND</xsl:when>
            <xsl:when test="string-length($in) gt 19">MILLISECOND</xsl:when>
         </xsl:choose>
      </xsl:for-each>
   </xsl:function>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/YATC-shared/xsl/util/uuid.xsl"?>
<?yatc-distribution-info name="VZVZ-MedMij" timestamp="2024-02-06T09:13:30.86+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/YATC-shared/xsl/util/uuid.xsl == -->
<!-- == Distribution: VZVZ-MedMij; 0.2; 2024-02-06T09:13:30.86+01:00 == -->
<xsl:stylesheet version="2.0"
                exclude-result-prefixes="#all"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:util="urn:hl7:utilities"
                xmlns:yatcs="https://nictiz.nl/ns/YATC-shared"
                xmlns:math="http://exslt.org/math"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:local="#local.2023111508475453126650100">
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
   <xsl:output method="xml"
               encoding="UTF-8"/>
   <!-- pass an appropriate macAddress to ensure uniqueness of the UUID -->
   <!-- 02-00-00-00-00-00 may not be used in a production situation -->
   <xsl:param name="macAddress">02-00-00-00-00-00</xsl:param>
   <!-- Functions in the uuid: namespace are used to calculate a UUID The method used is a derived timestamp method, which 
		is explained here: http://www.famkruithof.net/guid-uuid-timebased.html and here: http://www.ietf.org/rfc/rfc4122.txt -->
   <!-- Returns the UUID in lower-case (http://hl7.org/fhir/datatypes.html#uri)  -->
   <!-- may as well be defined as returning the same seq each time -->
   <xsl:variable name="_clock"
                 select="generate-id(uuid:_get-node())"/>
   <!-- ================================================================== -->
   <xsl:function name="uuid:get-uuid"
                 as="xs:string*">
      <!-- generates uuid -->
      <xsl:param name="node">
         <!-- xml node to generate uuid for -->
      </xsl:param>
      <xsl:variable name="ts"
                    select="uuid:ts-to-hex(uuid:generate-timestamp($node))"/>
      <xsl:value-of separator="-"
                    select="lower-case(substring($ts, 8, 8)), lower-case(substring($ts, 4, 4)), lower-case(string-join((uuid:get-uuid-version(), substring($ts, 1, 3)), '')), lower-case(uuid:generate-clock-id()), lower-case(uuid:get-network-node())"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="uuid:_get-node">
      <!--  internal aux. fu with saxon, this creates a more-unique result with generate-id then when just using a variable containing 
            a node  -->
      <xsl:comment/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="uuid:next-nr"
                 as="xs:integer">
      <!--  should return the next nr in sequence, but this can't be done in xslt. Instead, it returns a guaranteed unique number  -->
      <xsl:param name="node"/>
      <xsl:sequence select="xs:integer(replace(generate-id($node), '\D', ''))"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="uuid:_hex-only"
                 as="xs:string">
      <!--  internal fu for returning hex digits only  -->
      <xsl:param name="string"/>
      <xsl:param name="count"/>
      <xsl:sequence select="substring(replace($string, '[^0-9a-fA-F]', ''), 1, $count)"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="uuid:generate-clock-id"
                 as="xs:string">
      <xsl:sequence select="uuid:_hex-only($_clock, 4)"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="uuid:get-network-node"
                 as="xs:string">
      <!--  returns the network node, this one is 'random', but must be the same within calls. The least-significant bit must be 
            '1' when it is not a real MAC address (in this case it is set to '1')  -->
      <xsl:sequence select="uuid:_hex-only($macAddress, 12)"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="uuid:get-uuid-version"
                 as="xs:string">
      <!--  returns version, for timestamp uuids, this is "1"  -->
      <xsl:sequence select="'1'"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="uuid:generate-timestamp">
      <!--  Generates a timestamp of the amount of 100 nanosecond intervals from 15 October 1582, in UTC time.  -->
      <xsl:param name="node"/>
      <!-- date calculation automatically goes correct when you add the timezone information, in this case that is UTC. -->
      <xsl:variable name="duration-from-1582"
                    as="xs:dayTimeDuration">
         <xsl:sequence select="current-dateTime() - xs:dateTime('1582-10-15T00:00:00.000Z')"/>
      </xsl:variable>
      <xsl:variable name="random-offset"
                    as="xs:integer">
         <xsl:sequence select="uuid:next-nr($node) mod 10000"/>
      </xsl:variable>
      <!-- do the math to get the 100 nano second intervals -->
      <xsl:sequence select="(days-from-duration($duration-from-1582) * 24 * 60 * 60 + hours-from-duration($duration-from-1582) * 60 * 60 + minutes-from-duration($duration-from-1582) * 60 + seconds-from-duration($duration-from-1582)) * 1000 * 10000 + $random-offset"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="uuid:ts-to-hex">
      <!--  simple non-generalized function to convert from timestamp to hex  -->
      <xsl:param name="dec-val"/>
      <xsl:value-of separator=""
                    select="     for $i in 1 to 15     return      (0 to 9, tokenize('A B C D E F', ' '))[$dec-val idiv xs:integer(math:power(16, 15 - $i)) mod 16 + 1]"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="math:power">
      <xsl:param name="base"/>
      <xsl:param name="power"/>
      <xsl:choose>
         <xsl:when test="$power lt 0 or contains(string($power), '.')">
            <xsl:call-template name="util:logMessage">
               <xsl:with-param name="level"
                               select="$logFATAL"/>
               <xsl:with-param name="msg">The XSLT template math:power doesn't support negative or fractional arguments.</xsl:with-param>
               <xsl:with-param name="terminate"
                               select="true()"/>
            </xsl:call-template>
            <xsl:text>NaN</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <xsl:call-template name="math:_power">
               <xsl:with-param name="base"
                               select="$base"/>
               <xsl:with-param name="power"
                               select="$power"/>
               <xsl:with-param name="result"
                               select="1"/>
            </xsl:call-template>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="math:_power">
      <xsl:param name="base"/>
      <xsl:param name="power"/>
      <xsl:param name="result"/>
      <xsl:choose>
         <xsl:when test="$power = 0">
            <xsl:value-of select="$result"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:call-template name="math:_power">
               <xsl:with-param name="base"
                               select="$base"/>
               <xsl:with-param name="power"
                               select="$power - 1"/>
               <xsl:with-param name="result"
                               select="$result * $base"/>
            </xsl:call-template>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
</xsl:stylesheet>
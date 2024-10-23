<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: YATC-internal/ada-2-hl7/env/zib1bbr/2_hl7_zib1bbr_include.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 1.0.0; 2024-04-17T17:00:31.15+02:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="urn:hl7-org:v3"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:util="urn:hl7:utilities"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:yatcs="https://nictiz.nl/ns/YATC-shared"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:local="#local.2024011509165872802350100"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
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
   <xsl:import href="2_hl7_hl7_include.xsl"/>
   <!-- ================================================================== -->
   <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1.101_20170602000000">
      <!-- address NL - generic  (van repository: zib2015bbr-) -->
      <xsl:param name="adres"
                 select="."/>
      <xsl:for-each select="$adres">
         <addr>
            <xsl:for-each select="adres_soort[@code][1]">
               <xsl:attribute name="use"
                              select="@code"/>
            </xsl:for-each>
            <xsl:for-each select="straat[@value]">
               <streetName>
                  <xsl:value-of select="@value"/>
               </streetName>
            </xsl:for-each>
            <xsl:for-each select="huisnummer[@value]">
               <houseNumber>
                  <xsl:value-of select="@value"/>
               </houseNumber>
            </xsl:for-each>
            <xsl:if test="(huisnummerletter | huisnummertoevoeging)[@value]">
               <buildingNumberSuffix>
                  <xsl:value-of select="huisnummerletter/@value"/>
                  <!-- voeg scheidende spatie toe als beide aanwezig -->
                  <xsl:if test="huisnummerletter and huisnummertoevoeging">
                     <xsl:text>
                     </xsl:text>
                  </xsl:if>
                  <xsl:value-of select="huisnummertoevoeging/@value"/>
               </buildingNumberSuffix>
            </xsl:if>
            <xsl:for-each select="aanduiding_bij_nummer[@code]">
               <additionalLocator>
                  <xsl:value-of select="@code"/>
               </additionalLocator>
            </xsl:for-each>
            <xsl:for-each select="postcode[@value]">
               <postalCode>
                  <xsl:value-of select="nf:convertAdaNlPostcode(@value)"/>
               </postalCode>
            </xsl:for-each>
            <xsl:for-each select="gemeente[@value]">
               <county>
                  <xsl:value-of select="@value"/>
               </county>
            </xsl:for-each>
            <xsl:for-each select="woonplaats[@value]">
               <city>
                  <xsl:value-of select="@value"/>
               </city>
            </xsl:for-each>
            <xsl:for-each select="land[(@value | @code | @codeSystem | @displayName)]">
               <country>
                  <xsl:choose>
                     <xsl:when test="@code | @codeSystem">
                        <xsl:call-template name="makeCodeAttribs"/>
                     </xsl:when>
                  </xsl:choose>
                  <!-- fill text node, which is mandatory even with a coded concept -->
                  <xsl:choose>
                     <!-- coded value -->
                     <xsl:when test="@displayName">
                        <xsl:value-of select="@displayName"/>
                     </xsl:when>
                     <!-- free text value -->
                     <xsl:when test="@value">
                        <xsl:value-of select="@value"/>
                     </xsl:when>
                     <!-- fallback on whatever we have ... should not happen really -->
                     <xsl:when test="@*">
                        <xsl:call-template name="util:logMessage">
                           <xsl:with-param name="level"
                                           select="$logWARN"/>
                           <xsl:with-param name="msg">Did not get a proper string for country from input. Please investigate. Outputting whatever we received from coded attributes into the text node.</xsl:with-param>
                        </xsl:call-template>
                        <xsl:value-of select="string-join(@*, ' - ')"/>
                     </xsl:when>
                  </xsl:choose>
               </country>
            </xsl:for-each>
            <!-- Additionele informatie wordt geschrapt uit de definitie
                <xsl:for-each select="./additioneleinformatie">
                <unitID><xsl:value-of select="./@value"/></unitID>
            </xsl:for-each>-->
            <!-- UseablePeriod nog niet geimplementeerd - kan niet in ADA forms opgegeven worden. -->
         </addr>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="YATC-internal/ada-2-fhir/env/zibs2017/payload/nl-core-contactpoint-1.0.xsl"?>
<?yatc-distribution-info name="ketenzorg-3.0.2" timestamp="2024-06-28T14:38:20.79+02:00" version="1.4.28"?>
<!-- == Provenance: YATC-internal/ada-2-fhir/env/zibs2017/payload/nl-core-contactpoint-1.0.xsl == -->
<!-- == Distribution: ketenzorg-3.0.2; 1.4.28; 2024-06-28T14:38:20.79+02:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://hl7.org/fhir"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:yatcs="https://nictiz.nl/ns/YATC-shared"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:local="urn:fhir:stu3:functions"
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
   <!-- ================================================================== -->
   <xsl:template name="nl-core-contactpoint-1.0"
                 match="contactgegevens | contact_information"
                 mode="doContactInformation"
                 as="element(f:telecom)*">
      <xsl:param name="in"
                 select="."
                 as="element()*">
         <!-- Nodes to consider. Defaults to context node -->
      </xsl:param>
      <xsl:param name="filterprivate"
                 select="false()"
                 as="xs:boolean">
         <!-- Should private information be filtered. Default false. -->
      </xsl:param>
      <xsl:variable name="filterValues"
                    select="('HP', 'EC')"
                    as="xs:string*"/>
      <xsl:for-each select="$in[.//@value | .//@code]">
         <xsl:for-each select="telefoonnummers[telefoonnummer/@value] | telephone_numbers[telephone_number/@value]">
            <xsl:variable name="telecomType"
                          select="telecom_type/@code"/>
            <xsl:variable name="telecomTypeValue"
                          as="xs:string?">
               <xsl:choose>
                  <xsl:when test="empty($telecomType)">phone</xsl:when>
                  <xsl:when test="$telecomType = 'LL'">phone</xsl:when>
                  <xsl:when test="$telecomType = 'FAX'">fax</xsl:when>
                  <xsl:when test="$telecomType = 'MC'">phone</xsl:when>
                  <xsl:when test="$telecomType = 'PG'">pager</xsl:when>
                  <!-- MM-2563 ContactPoint.system SHALL have a value and since we are in the telephone_numbers section ... -->
                  <xsl:otherwise>phone</xsl:otherwise>
               </xsl:choose>
            </xsl:variable>
            <xsl:variable name="numberType"
                          select="(nummer_soort | number_type)/@code"/>
            <xsl:variable name="numberTypeValue"
                          as="xs:string?">
               <xsl:choose>
                  <xsl:when test="$numberType = 'WP'">work</xsl:when>
                  <xsl:when test="$numberType = 'HP'">home</xsl:when>
                  <xsl:when test="$numberType = 'TMP'">temp</xsl:when>
                  <xsl:when test="$telecomType = 'MC'">mobile</xsl:when>
               </xsl:choose>
            </xsl:variable>
            <xsl:variable name="doContactDetails"
                          select="if ($filterprivate) then not($numberType[. = $filterValues]) else true()"
                          as="xs:boolean"/>
            <xsl:if test="$doContactDetails">
               <telecom>
                  <!-- MM-2563 ContactPoint.system SHALL have a value -->
                  <system value="{$telecomTypeValue}">
                     <xsl:if test="$telecomType[not(../@codeSystem = $oidHL7NullFlavor)]">
                        <xsl:call-template name="ext-code-specification-1.0">
                           <xsl:with-param name="in"
                                           select="$telecomType/parent::*"/>
                        </xsl:call-template>
                     </xsl:if>
                  </system>
                  <xsl:for-each select="(telefoonnummer | telephone_number)/@value">
                     <value value="{normalize-space(.)}"/>
                  </xsl:for-each>
                  <xsl:if test="$numberTypeValue">
                     <use value="{$numberTypeValue}">
                        <xsl:choose>
                           <xsl:when test="$numberType[not(../@codeSystem = $oidHL7NullFlavor)]">
                              <xsl:call-template name="ext-code-specification-1.0">
                                 <xsl:with-param name="in"
                                                 select="$numberType/parent::*"/>
                              </xsl:call-template>
                           </xsl:when>
                        </xsl:choose>
                     </use>
                  </xsl:if>
               </telecom>
            </xsl:if>
         </xsl:for-each>
         <xsl:for-each select="email_adressen[email_adres/@value] | email_addresses[email_address/@value]">
            <xsl:variable name="emailType"
                          select="(email_soort | email_address_type)/@code"/>
            <xsl:variable name="emailTypeValue"
                          as="xs:string?">
               <xsl:choose>
                  <xsl:when test="$emailType = 'WP'">work</xsl:when>
                  <xsl:when test="$emailType = 'HP'">home</xsl:when>
               </xsl:choose>
            </xsl:variable>
            <xsl:variable name="doContactDetails"
                          select="if ($filterprivate) then not($emailType[. = $filterValues]) else true()"
                          as="xs:boolean"/>
            <xsl:if test="$doContactDetails">
               <telecom>
                  <system value="email"/>
                  <xsl:for-each select="(email_adres | email_address)/@value">
                     <value value="{normalize-space(.)}"/>
                  </xsl:for-each>
                  <xsl:if test="$emailTypeValue">
                     <use value="{$emailTypeValue}">
                        <xsl:choose>
                           <xsl:when test="$emailType[not(../@codeSystem = $oidHL7NullFlavor)]">
                              <xsl:call-template name="ext-code-specification-1.0">
                                 <xsl:with-param name="in"
                                                 select="$emailType/parent::*"/>
                              </xsl:call-template>
                           </xsl:when>
                        </xsl:choose>
                     </use>
                  </xsl:if>
               </telecom>
            </xsl:if>
         </xsl:for-each>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_hl7/zib2017bbr/payload/_ada2hl7_zib2017.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_hl7/zib2017bbr/payload/_ada2hl7_zib2017.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="urn:hl7-org:v3"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:local="urn:fhir:stu3:functions"
                xmlns:nff="http://www.nictiz.nl/fhir-functions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <xsl:import href="2_hl7_zib2017bbr_include.xsl"/>
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <!-- Do not import this xsl directly, it should be imported via ada2hl7_all-zibs.xsl -->
   <xsl:param name="referById"
              as="xs:boolean"
              select="false()"/>
   <!-- pass an appropriate macAddress to ensure uniqueness of the UUID -->
   <!-- 02-00-00-00-00-00 may not be used in a production situation -->
   <xsl:param name="macAddress">02-00-00-00-00-00</xsl:param>
   <xsl:param name="language"
              as="xs:string?">nl-NL</xsl:param>
   <!-- Optional. Used to find conceptId attributes values for elements. Should contain the whole ADA schema -->
   <xsl:param name="schema"
              as="node()*"/>
   <xd:doc>
      <xd:desc>Helper template to fill telecom details based on ada contactgegevens</xd:desc>
   </xd:doc>
   <xsl:template name="_CdaTelecom">
      <xsl:for-each select=".//(telefoonnummers | telephone_numbers)">
         <xsl:variable name="hl7Use"
                       as="xs:string*">
            <xsl:if test="(nummer_soort | number_type)[@code] or telecom_type/@code = 'MC'">
               <xsl:if test="(nummer_soort | number_type)[@code]">
                  <xsl:value-of select="(nummer_soort | number_type)/@code"/>
               </xsl:if>
               <xsl:if test="telecom_type/@code = 'MC'">
                  <xsl:value-of select="telecom_type/@code"/>
               </xsl:if>
            </xsl:if>
         </xsl:variable>
         <xsl:call-template name="makeTELValue">
            <xsl:with-param name="in"
                            select="(telefoonnummer | telephone_number)"/>
            <xsl:with-param name="elemName">telecom</xsl:with-param>
            <xsl:with-param name="urlSchemeCode">
               <xsl:if test="telecom_type/@code = 'FAX'">fax</xsl:if>
            </xsl:with-param>
            <xsl:with-param name="use"
                            select="string-join($hl7Use, ' ')"/>
            <xsl:with-param name="xsiType"/>
         </xsl:call-template>
      </xsl:for-each>
      <xsl:for-each select=".//(email_adressen | email_addresses)">
         <xsl:call-template name="makeTELValue">
            <xsl:with-param name="in"
                            select="(email_adres | email_address)"/>
            <xsl:with-param name="elemName">telecom</xsl:with-param>
            <xsl:with-param name="use"
                            select="(email_soort | email_address_type)/@code"/>
            <xsl:with-param name="xsiType"/>
         </xsl:call-template>
      </xsl:for-each>
   </xsl:template>
   <xd:doc>
      <xd:desc>Helper template to fill person details based on ada patient</xd:desc>
   </xd:doc>
   <xsl:template name="_CdaPerson">
      <xsl:for-each select=".//naamgegevens[not(naamgegevens)][.//(@value | @code | @nullFlavor)]">
         <name>
            <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1.100_20170602000000">
               <xsl:with-param name="naamgegevens"
                               select="."/>
            </xsl:call-template>
         </name>
      </xsl:for-each>
      <xsl:for-each select="geslacht[.//(@value | @code | @nullFlavor)]">
         <administrativeGenderCode>
            <xsl:call-template name="makeCodeAttribs"/>
         </administrativeGenderCode>
      </xsl:for-each>
      <!-- geboortedatum -->
      <xsl:for-each select="geboortedatum[.//(@value | @code | @nullFlavor)]">
         <birthTime>
            <xsl:call-template name="makeTSValueAttr"/>
         </birthTime>
      </xsl:for-each>
      <!-- overlijdens_indicator -->
      <xsl:for-each select="overlijdens_indicator[.//(@value | @code | @nullFlavor)]">
         <xsl:call-template name="makeBLValue">
            <xsl:with-param name="elemName">deceasedInd</xsl:with-param>
            <xsl:with-param name="elemNamespace">urn:hl7-org:sdtc</xsl:with-param>
            <xsl:with-param name="xsiType"/>
         </xsl:call-template>
      </xsl:for-each>
      <xsl:for-each select="datum_overlijden[.//(@value | @code | @nullFlavor)]">
         <xsl:call-template name="makeTSValue">
            <xsl:with-param name="elemName">deceasedTime</xsl:with-param>
            <xsl:with-param name="elemNamespace">urn:hl7-org:sdtc</xsl:with-param>
            <xsl:with-param name="xsiType"/>
         </xsl:call-template>
      </xsl:for-each>
      <!-- meerlingindicator -->
      <xsl:for-each select="meerling_indicator[@value | @nullFlavor]">
         <xsl:call-template name="makeBLValue">
            <xsl:with-param name="elemName">sdtc:multipleBirthInd</xsl:with-param>
            <xsl:with-param name="elemNamespace">urn:hl7-org:sdtc</xsl:with-param>
            <xsl:with-param name="xsiType"/>
         </xsl:call-template>
      </xsl:for-each>
      <!-- rangnummer_kind added for peri-->
      <xsl:for-each select="rangnummer_kind[@value | @nullFlavor]">
         <xsl:call-template name="makeINTValue">
            <xsl:with-param name="elemName">multipleBirthOrderNumber</xsl:with-param>
            <xsl:with-param name="elemNamespace">urn:hl7-org:sdtc</xsl:with-param>
            <xsl:with-param name="xsiType"/>
         </xsl:call-template>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>
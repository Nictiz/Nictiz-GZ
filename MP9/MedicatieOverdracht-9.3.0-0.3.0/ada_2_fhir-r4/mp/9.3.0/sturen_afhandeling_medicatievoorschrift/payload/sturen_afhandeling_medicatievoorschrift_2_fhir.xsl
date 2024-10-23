<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/mp/9.3.0/sturen_afhandeling_medicatievoorschrift/payload/sturen_afhandeling_medicatievoorschrift_2_fhir.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.3.0; 2024-04-09T18:20:47.77+02:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://hl7.org/fhir"
                xmlns:util="urn:hl7:utilities"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:nm="http://www.nictiz.nl/mappings"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <xsl:import href="../../2_fhir_mp93_include.xsl"/>
   <xsl:import href="../../../../../common/includes/2_fhir_BundleEntryRequest.xsl"/>
   <xd:doc scope="stylesheet">
      <xd:desc>
         <xd:p>
            <xd:b>Author:</xd:b> Nictiz</xd:p>
         <xd:p>
            <xd:b>Purpose:</xd:b> This XSL was created to facilitate mapping from ADA MP9-transaction, to HL7 FHIR profiles.</xd:p>
         <xd:p>
            <xd:b>History:</xd:b>
            <xd:ul>
               <xd:li>2022-05-16 version 0.1 
<xd:ul>
                     <xd:li>Initial version</xd:li>
                  </xd:ul>
               </xd:li>
            </xd:ul>
         </xd:p>
      </xd:desc>
   </xd:doc>
   <xsl:output method="xml"
               indent="yes"
               omit-xml-declaration="yes"/>
   <xsl:strip-space elements="*"/>
   <!-- If the desired output is to be a Bundle, then a self link string of type url is required. 
         See: https://www.hl7.org/fhir/search.html#conformance -->
   <xsl:param name="bundleSelfLink"
              as="xs:string?"/>
   <!-- only give dateT a value if you want conversion of relative T dates to actual dates, otherwise a Touchstone relative T-date string will be generated -->
   <!--    <xsl:param name="dateT" as="xs:date?" select="current-date()"/>-->
   <!--        <xsl:param name="dateT" as="xs:date?" select="xs:date('2020-03-24')"/>-->
   <xsl:param name="dateT"
              as="xs:date?"/>
   <!-- pass an appropriate macAddress to ensure uniqueness of the UUID -->
   <!-- 02-00-00-00-00-00 may not be used in a production situation -->
   <xsl:param name="macAddress">02-00-00-00-00-00</xsl:param>
   <!-- parameter for debug level -->
   <xsl:param name="logLevel"
              select="$logWARN"
              as="xs:string"/>
   <!-- select="$oidBurgerservicenummer" zorgt voor maskeren BSN -->
   <xsl:param name="mask-ids"
              as="xs:string?"
              select="$oidBurgerservicenummer"/>
   <!-- parameter to determine whether to refer by resource/id -->
   <!-- should be false when there is no FHIR server available to retrieve the resources -->
   <xsl:param name="referById"
              as="xs:boolean"
              select="false()"/>
   <!-- whether to generate a user instruction description text from the structured information, typically only needed for test instances  -->
   <xsl:param name="generateInstructionText"
              as="xs:boolean?"
              select="true()"/>
   <!--    <xsl:param name="generateInstructionText" as="xs:boolean?" select="false()"/>-->
   <!-- empty searchModeParam, since this is a push message -->
   <xsl:param name="searchModeParam"
              as="xs:string?"/>
   <!-- The meta tag to be added. Optional. Typical use case is 'actionable' for prescriptions or proposals. Empty for informational purposes. -->
   <xsl:param name="metaTag"
              as="xs:string?">actionable</xsl:param>
   <!-- whether or nog to output schema / schematron links -->
   <xsl:param name="schematronXsdLinkInOutput"
              as="xs:boolean?"
              select="false()"/>
   <xd:doc>
      <xd:desc>Start conversion. Handle interaction specific stuff for "beschikbaarstellen medicatiegegevens".</xd:desc>
   </xd:doc>
   <xsl:template match="/">
      <xsl:call-template name="medicatievoorschriftAfhandeling920">
         <xsl:with-param name="mbh"
                         select=".//sturen_afhandeling_medicatievoorschrift/medicamenteuze_behandeling"/>
      </xsl:call-template>
   </xsl:template>
   <xd:doc>
      <xd:desc>Build a FHIR Bundle</xd:desc>
      <xd:param name="mbh">ada medicamenteuze behandeling</xd:param>
   </xd:doc>
   <xsl:template name="medicatievoorschriftAfhandeling920">
      <xsl:param name="mbh"/>
      <xsl:if test="$schematronXsdLinkInOutput">
         <xsl:processing-instruction name="xml-model">href="http://hl7.org/fhir/R4/bundle.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"</xsl:processing-instruction>
      </xsl:if>
      <Bundle xsl:exclude-result-prefixes="#all">
         <xsl:if test="$schematronXsdLinkInOutput">
            <xsl:attribute name="xsi:schemaLocation">http://hl7.org/fhir https://hl7.org/fhir/R4/bundle.xsd</xsl:attribute>
         </xsl:if>
         <id value="{nf:get-uuid(*[1])}"/>
         <meta>
            <profile value="{nf:get-full-profilename-from-adaelement($mbh/..)}"/>
         </meta>
         <type value="transaction"/>
         <xsl:choose>
            <xsl:when test="$bundleSelfLink[not(. = '')]">
               <link>
                  <relation value="self"/>
                  <url value="{$bundleSelfLink}"/>
               </link>
            </xsl:when>
            <xsl:otherwise>
               <xsl:call-template name="util:logMessage">
                  <xsl:with-param name="level"
                                  select="$logWARN"/>
                  <xsl:with-param name="msg">Parameter bundleSelfLink is empty, but server SHALL return the parameters that were actually used to process the search.</xsl:with-param>
                  <xsl:with-param name="terminate"
                                  select="false()"/>
               </xsl:call-template>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:apply-templates select="$bouwstenen-930"
                              mode="addBundleEntrySearchOrRequest"/>
         <!-- common entries (patient, practitioners, organizations, practitionerroles, products, locations -->
         <xsl:apply-templates select="$commonEntries"
                              mode="addBundleEntrySearchOrRequest"/>
      </Bundle>
   </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/mp/9.3.0/touchstone/fhir_fixtures4Touchstone/payload/sturen_medicatiegegevens_2_fhir.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 1.0.0; 2024-04-17T17:00:31.15+02:00 == -->
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
   <xsl:import href="../../../sturen_medicatiegegevens/payload/sturen_medicatiegegevens_2_fhir.xsl"/>
   <xsl:import href="../../../../../../common/includes/2_fhir_fixtures.xsl"/>
   <xd:doc scope="stylesheet">
      <xd:desc>
         <xd:p>
            <xd:b>Author:</xd:b> Nictiz</xd:p>
         <xd:p>
            <xd:b>Purpose:</xd:b> This XSL was created to facilitate mapping from ADA MP9-transaction, to HL7 FHIR profiles.</xd:p>
         <xd:p>
            <xd:b>History:</xd:b>
            <xd:ul>
               <xd:li>2021-12-12 version 0.1 
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
   <!-- output dir for our result doc(s) -->
   <xsl:param name="outputDir">.</xsl:param>
   <!-- whether or nog to output schema / schematron links -->
   <xsl:param name="schematronXsdLinkInOutput"
              as="xs:boolean?"
              select="false()"/>
   <xsl:param name="usecase">mp9</xsl:param>
   <xd:doc>
      <xd:desc>Start conversion. Handle interaction specific stuff for "sturen medicatiegegevens".</xd:desc>
   </xd:doc>
   <xsl:template match="/">
      <xsl:call-template name="Medicatiegegevens_90">
         <xsl:with-param name="mbh"
                         select=".//sturen_medicatiegegevens/medicamenteuze_behandeling"/>
      </xsl:call-template>
   </xsl:template>
   <xd:doc>
      <xd:desc>Build a FHIR Bundle of type searchset.</xd:desc>
      <xd:param name="mbh">ada medicamenteuze behandeling</xd:param>
   </xd:doc>
   <xsl:template name="Medicatiegegevens_90">
      <xsl:param name="mbh"/>
      <xsl:variable name="resultBundle">
         <xsl:if test="$schematronXsdLinkInOutput">
            <xsl:processing-instruction name="xml-model">href="http://hl7.org/fhir/R4/bundle.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"</xsl:processing-instruction>
         </xsl:if>
         <Bundle xsl:exclude-result-prefixes="#all">
            <xsl:if test="$schematronXsdLinkInOutput">
               <xsl:attribute name="xsi:schemaLocation">http://hl7.org/fhir https://hl7.org/fhir/R4/bundle.xsd</xsl:attribute>
            </xsl:if>
            <id value="{nf:removeSpecialCharsAndDotForTouchstone(.//sturen_medicatiegegevens[1]/@id)}"/>
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
      </xsl:variable>
      <xsl:result-document href="{$outputDir}/{$resultBundle/f:Bundle/f:id/@value}.xml">
         <xsl:copy-of select="$resultBundle"/>
      </xsl:result-document>
   </xsl:template>
</xsl:stylesheet>
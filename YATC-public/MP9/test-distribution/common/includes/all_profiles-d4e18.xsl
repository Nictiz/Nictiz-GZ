<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://hl7.org/fhir"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:local="urn:fhir:stu3:functions"
                xmlns:nm="http://www.nictiz.nl/mappings"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <xsl:import href="all_zibs-d4e19.xsl"/>
   <!--    <xsl:import href="../../../../../util/mp-functions.xsl"/>-->
   <xsl:import href="mp-AdministrationAgreement-d4e58.xsl"/>
   <xsl:import href="mp-MedicationAdministration.xsl"/>
   <xsl:import href="mp-MedicationAgreement-d4e60.xsl"/>
   <xsl:import href="mp-MedicationUse2-d4e61.xsl"/>
   <xsl:import href="mp-voorstel.xsl"/>
   <xsl:import href="mp-antwoord.xsl"/>
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xd:doc scope="stylesheet">
      <xd:desc>This document imports common and mp specific functions and templates to convert mp ada instances to FHIR.</xd:desc>
   </xd:doc>
</xsl:stylesheet>
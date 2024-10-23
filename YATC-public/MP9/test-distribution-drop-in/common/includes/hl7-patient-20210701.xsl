<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_hl7/zib2020bbr/payload/hl7-patient-20210701.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_hl7/zib2020bbr/payload/hl7-patient-20210701.xsl == -->
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
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xsl:param name="language"
              as="xs:string?">nl-NL</xsl:param>
   <xd:doc>
      <xd:desc>Mapping of zib nl.zorg.Patient 3.2 concept in ADA to HL7 CDA template 2.16.840.1.113883.2.4.3.11.60.3.10.1</xd:desc>
      <xd:param name="in">ADA Node to consider in the creation of the hl7 element</xd:param>
   </xd:doc>
   <xsl:template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20210701000000"
                 match="patient"
                 mode="HandleCDARecordTargetSDTCNL-20210701">
      <xsl:param name="in"
                 select="."/>
      <xsl:for-each select="$in">
         <recordTarget>
            <patientRole>
               <!-- hl7 id required in xsd -->
               <xsl:choose>
                  <xsl:when test="(patient_identificatienummer | identificatienummer)[@value|@root]">
                     <xsl:for-each select="(patient_identificatienummer | identificatienummer)[@value|@root]">
                        <xsl:call-template name="makeIIValue">
                           <xsl:with-param name="root"
                                           select="./@root"/>
                           <xsl:with-param name="elemName">id</xsl:with-param>
                           <xsl:with-param name="nullFlavor"/>
                        </xsl:call-template>
                     </xsl:for-each>
                  </xsl:when>
                  <xsl:otherwise>
                     <id nullFlavor="NI"/>
                  </xsl:otherwise>
               </xsl:choose>
               <!-- Adres -->
               <xsl:for-each select=".//adresgegevens[not(adresgegevens)][.//(@value | @code | @nullFlavor)]">
                  <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1.101_20170602000000">
                     <xsl:with-param name="adres"
                                     select="."/>
                  </xsl:call-template>
               </xsl:for-each>
               <!--Telecom gegevens-->
               <xsl:call-template name="_CdaTelecom"/>
               <patient>
                  <xsl:call-template name="_CdaPerson"/>
               </patient>
            </patientRole>
         </recordTarget>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>
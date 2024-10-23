<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_hl7/mp/9.3.0/sturen_medicatievoorschrift/payload/sturen_medicatievoorschrift_org.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_hl7/mp/9.3.0/sturen_medicatievoorschrift/payload/sturen_medicatievoorschrift_org.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="nf xd xs xsl"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="urn:hl7-org:v3"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:sdtc="urn:hl7-org:sdtc"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:hl7nl="urn:hl7-nl:v3"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:pharm="urn:ihe:pharm:medication"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <xsl:import href="2_hl7_mp_include_930.xsl"/>
   <xsl:output method="xml"
               indent="yes"/>
   <!-- Generates a HL7 message based on ADA input -->
   <!-- give dateT a value when you need conversion of relative T dates, typically only needed for test instances -->
   <!--    <xsl:param name="dateT" as="xs:date?" select="current-date()"/>-->
   <xsl:param name="dateT"
              as="xs:date?"
              select="xs:date('2021-03-24')"/>
   <!--    <xsl:param name="dateT" as="xs:date?"/>-->
   <!-- whether to generate a user instruction description text from the structured information, typically only needed for test instances  -->
   <xsl:param name="generateInstructionText"
              as="xs:boolean?"
              select="false()"/>
   <!-- param to influence whether to output schematron references, typically only needed for test instances -->
   <xsl:param name="schematronRef"
              as="xs:boolean"
              select="false()"/>
   <xsl:template name="mp-mp93_vos"
                 match="/">
      <xsl:call-template name="Voorschrift_9x">
         <xsl:with-param name="in"
                         select="adaxml/data/sturen_medicatievoorschrift"/>
      </xsl:call-template>
   </xsl:template>
   <xsl:template name="Voorschrift_9x">
      <xsl:param name="in"
                 select="adaxml/data/sturen_medicatievoorschrift"/>
      <xsl:for-each select="$in">
         <xsl:variable name="patient"
                       select="patient"/>
         <xsl:variable name="mbh"
                       select="medicamenteuze_behandeling"/>
         <xsl:if test="$schematronRef">
            <xsl:processing-instruction name="xml-model">phase="#ALL" href="../../schematron_closed_warnings/mp-mp93_vos.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
         </xsl:if>
         <xsl:comment>Generated from ada instance with title: "
<xsl:value-of select="$mbh/../@title"/>" and id: "
<xsl:value-of select="$mbh/../@id"/>".</xsl:comment>
         <organizer xsi:schemaLocation="urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd"
                    classCode="CLUSTER"
                    moodCode="EVN"
                    xmlns:cda="urn:hl7-org:v3">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9433"/>
            <code code="95"
                  displayName="Voorschrift"
                  codeSystem="2.16.840.1.113883.2.4.3.11.60.20.77.4"
                  codeSystemName="ART DECOR transacties"/>
            <statusCode nullFlavor="NI"/>
            <!-- Patient -->
            <xsl:for-each select="$patient">
               <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180611000000"/>
            </xsl:for-each>
            <!-- Medicamenteuze behandeling -->
            <xsl:for-each select="$mbh">
               <!-- Medicatieafspraak -->
               <xsl:for-each select="medicatieafspraak[not(kopie_indicator/@value = 'true')]">
                  <component typeCode="COMP">
                     <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9430_20221122132432"/>
                  </component>
               </xsl:for-each>
               <!-- Medicatieafspraak -->
               <xsl:for-each select="medicatieafspraak[kopie_indicator/@value = 'true']">
                  <component typeCode="COMP">
                     <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9431_20221122133531"/>
                  </component>
               </xsl:for-each>
               <!-- Verstrekkingsverzoek -->
               <xsl:for-each select="verstrekkingsverzoek">
                  <component typeCode="COMP">
                     <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9449_20230106093041"/>
                  </component>
               </xsl:for-each>
            </xsl:for-each>
            <!-- Lichaamslengte -->
            <xsl:for-each select="bouwstenen/lichaamslengte[.//(@value | @code)]">
               <component typeCode="COMP">
                  <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.7.10.30_20210701000000"/>
               </component>
            </xsl:for-each>
            <!-- Lichaamsgewicht -->
            <xsl:for-each select="bouwstenen/lichaamsgewicht[.//(@value | @code)]">
               <component typeCode="COMP">
                  <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.121.10.19_20210701000000"/>
               </component>
            </xsl:for-each>
         </organizer>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>
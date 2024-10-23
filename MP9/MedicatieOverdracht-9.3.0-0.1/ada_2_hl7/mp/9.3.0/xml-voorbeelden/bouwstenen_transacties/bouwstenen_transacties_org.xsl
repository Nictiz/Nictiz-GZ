<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_hl7/mp/9.3.0/xml-voorbeelden/bouwstenen_transacties/bouwstenen_transacties_org.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.1; 2024-03-12T15:03:10.81+01:00 == -->
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
   <xsl:import href="../../2_hl7_mp_include_930.xsl"/>
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
              select="true()"/>
   <!-- the input ada instances which contain the bouwstenen -->
   <xsl:param name="inputAdaFiles"
              select="collection('../ada_instance/?select=*.xml')"/>
   <xsl:param name="outputDir"
              as="xs:string?">../hl7_instance</xsl:param>
   <xsl:template match="/">
      <!-- MA's -->
      <xsl:result-document href="{$outputDir}/bsma-example-930-1.xml">
         <xsl:variable name="mbh"
                       select="$inputAdaFiles/adaxml/data/*[not(self::sturen_voorstel_medicatieafspraak)]/medicamenteuze_behandeling[medicatieafspraak]"/>
         <xsl:variable name="patient"
                       select="($mbh/../patient)[1]"/>
         <xsl:if test="$schematronRef">
            <xsl:processing-instruction name="nictiz">status="example"</xsl:processing-instruction>
            <xsl:processing-instruction name="xml-model">phase="#ALL" href="file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/Publicaties/20210921/mp-xml-20210921T194523/schematron_closed_warnings/mp-mp92_mg_ma.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
         </xsl:if>
         <organizer xsi:schemaLocation="urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd"
                    classCode="CLUSTER"
                    moodCode="EVN"
                    xmlns:cda="urn:hl7-org:v3">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9432"/>
            <code code="419891008"
                  displayName="Gegevensobject"
                  codeSystem="2.16.840.1.113883.6.96"
                  codeSystemName="SNOMED CT"/>
            <statusCode code="completed"/>
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
            </xsl:for-each>
         </organizer>
      </xsl:result-document>
      <!-- WDS'en -->
      <xsl:result-document href="{$outputDir}/bswds-example-930-1.xml">
         <xsl:variable name="mbh"
                       select="$inputAdaFiles/adaxml/data/*/medicamenteuze_behandeling[wisselend_doseerschema]"/>
         <xsl:variable name="patient"
                       select="($mbh/../patient)[1]"/>
         <xsl:if test="$schematronRef">
            <xsl:processing-instruction name="nictiz">status="example"</xsl:processing-instruction>
            <xsl:processing-instruction name="xml-model">phase="#ALL" href="../../../../../../../../../SVN/AORTA/branches/Onderhoud_Mp_v90/Publicaties/20210921/mp-xml-20210921T194523/schematron_closed_warnings/mp-mp92-mg-wds.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
         </xsl:if>
         <organizer xsi:schemaLocation="urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd"
                    classCode="CLUSTER"
                    moodCode="EVN"
                    xmlns:cda="urn:hl7-org:v3">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9413"/>
            <code code="419891008"
                  displayName="Gegevensobject"
                  codeSystem="2.16.840.1.113883.6.96"
                  codeSystemName="SNOMED CT"/>
            <statusCode code="completed"/>
            <!-- Patient -->
            <xsl:for-each select="$patient">
               <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180611000000"/>
            </xsl:for-each>
            <!-- Medicamenteuze behandeling -->
            <xsl:for-each select="$mbh">
               <!-- wisselend_doseerschema -->
               <xsl:for-each select="wisselend_doseerschema">
                  <component typeCode="COMP">
                     <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9412_20221118130922"/>
                  </component>
               </xsl:for-each>
            </xsl:for-each>
         </organizer>
      </xsl:result-document>
      <!-- VV's -->
      <xsl:result-document href="{$outputDir}/bsvv-example-930-1.xml">
         <xsl:variable name="mbh"
                       select="$inputAdaFiles/adaxml/data/*[not(self::sturen_voorstel_verstrekkingsverzoek)]/medicamenteuze_behandeling[verstrekkingsverzoek]"/>
         <xsl:variable name="patient"
                       select="($mbh/../patient)[1]"/>
         <xsl:if test="$schematronRef">
            <xsl:processing-instruction name="nictiz">status="example"</xsl:processing-instruction>
            <xsl:processing-instruction name="xml-model">phase="#ALL" href="../../../../../../../../../SVN/AORTA/branches/Onderhoud_Mp_v90/Publicaties/20210921/mp-xml-20210921T194523/schematron_closed_warnings/mp-mp92_mg_vv.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
         </xsl:if>
         <organizer xsi:schemaLocation="urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd"
                    classCode="CLUSTER"
                    moodCode="EVN"
                    xmlns:cda="urn:hl7-org:v3">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9450"/>
            <code code="419891008"
                  displayName="Gegevensobject"
                  codeSystem="2.16.840.1.113883.6.96"
                  codeSystemName="SNOMED CT"/>
            <statusCode code="completed"/>
            <!-- Patient -->
            <xsl:for-each select="$patient">
               <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180611000000"/>
            </xsl:for-each>
            <!-- Medicamenteuze behandeling -->
            <xsl:for-each select="$mbh">
               <!-- Medicatieafspraak -->
               <xsl:for-each select="verstrekkingsverzoek">
                  <component typeCode="COMP">
                     <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9449_20230106093041"/>
                  </component>
               </xsl:for-each>
            </xsl:for-each>
         </organizer>
      </xsl:result-document>
      <!-- TA's -->
      <xsl:result-document href="{$outputDir}/bsta-example-930-1.xml">
         <xsl:variable name="mbh"
                       select="$inputAdaFiles/adaxml/data/*/medicamenteuze_behandeling[toedieningsafspraak]"/>
         <xsl:variable name="patient"
                       select="($mbh/../patient)[1]"/>
         <xsl:if test="$schematronRef">
            <xsl:processing-instruction name="nictiz">status="example"</xsl:processing-instruction>
            <xsl:processing-instruction name="xml-model">phase="#ALL" href="../../../../../../../../../SVN/AORTA/branches/Onderhoud_Mp_v90/Publicaties/20210921/mp-xml-20210921T194523/schematron_closed_warnings/mp-mp92_mg_ta.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
         </xsl:if>
         <organizer xsi:schemaLocation="urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd"
                    classCode="CLUSTER"
                    moodCode="EVN"
                    xmlns:cda="urn:hl7-org:v3">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9418"/>
            <code code="419891008"
                  displayName="Gegevensobject"
                  codeSystem="2.16.840.1.113883.6.96"
                  codeSystemName="SNOMED CT"/>
            <statusCode code="completed"/>
            <!-- Patient -->
            <xsl:for-each select="$patient">
               <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180611000000"/>
            </xsl:for-each>
            <!-- Medicamenteuze behandeling -->
            <xsl:for-each select="$mbh">
               <xsl:for-each select="toedieningsafspraak[not(kopie_indicator/@value = 'true')]">
                  <component typeCode="COMP">
                     <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9416_20221121074758"/>
                  </component>
               </xsl:for-each>
               <xsl:for-each select="toedieningsafspraak[kopie_indicator/@value = 'true']">
                  <component typeCode="COMP">
                     <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9417_20221121085549"/>
                  </component>
               </xsl:for-each>
            </xsl:for-each>
         </organizer>
      </xsl:result-document>
      <!-- MVE's -->
      <xsl:result-document href="{$outputDir}/bsmve-example-930-1.xml">
         <xsl:variable name="mbh"
                       select="$inputAdaFiles/adaxml/data/*/medicamenteuze_behandeling[medicatieverstrekking]"/>
         <xsl:variable name="patient"
                       select="($mbh/../patient)[1]"/>
         <xsl:if test="$schematronRef">
            <xsl:processing-instruction name="nictiz">status="example"</xsl:processing-instruction>
            <xsl:processing-instruction name="xml-model">phase="#ALL" href="../../../../../../../../../SVN/AORTA/trunk/Zorgtoepassing/Medicatieproces/DECOR/mp-runtime-develop/mp-mp92_mg_mve.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
         </xsl:if>
         <organizer xsi:schemaLocation="urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd"
                    classCode="CLUSTER"
                    moodCode="EVN"
                    xmlns:cda="urn:hl7-org:v3">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9365"/>
            <code code="419891008"
                  displayName="Gegevensobject"
                  codeSystem="2.16.840.1.113883.6.96"
                  codeSystemName="SNOMED CT"/>
            <statusCode code="completed"/>
            <!-- Patient -->
            <xsl:for-each select="$patient">
               <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180611000000"/>
            </xsl:for-each>
            <!-- Medicamenteuze behandeling -->
            <xsl:for-each select="$mbh">
               <xsl:for-each select="medicatieverstrekking">
                  <component typeCode="COMP">
                     <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9364_20210602161935"/>
                  </component>
               </xsl:for-each>
            </xsl:for-each>
         </organizer>
      </xsl:result-document>
      <!-- MGB's -->
      <xsl:result-document href="{$outputDir}/bsmgb-example-930-1.xml">
         <xsl:variable name="mbh"
                       select="$inputAdaFiles/adaxml/data/*/medicamenteuze_behandeling[medicatiegebruik]"/>
         <xsl:variable name="patient"
                       select="($mbh/../patient)[1]"/>
         <xsl:if test="$schematronRef">
            <xsl:processing-instruction name="nictiz">status="example"</xsl:processing-instruction>
            <xsl:processing-instruction name="xml-model">phase="#ALL" href="../../../../../../../../../SVN/AORTA/branches/Onderhoud_Mp_v90/Publicaties/20210921/mp-xml-20210921T194523/schematron_closed_warnings/mp-mp92_mg_mgb.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
         </xsl:if>
         <organizer xsi:schemaLocation="urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd"
                    classCode="CLUSTER"
                    moodCode="EVN"
                    xmlns:cda="urn:hl7-org:v3">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9445"/>
            <code code="419891008"
                  displayName="Gegevensobject"
                  codeSystem="2.16.840.1.113883.6.96"
                  codeSystemName="SNOMED CT"/>
            <statusCode code="completed"/>
            <!-- Patient -->
            <xsl:for-each select="$patient">
               <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180611000000"/>
            </xsl:for-each>
            <!-- Medicamenteuze behandeling -->
            <xsl:for-each select="$mbh">
               <xsl:for-each select="medicatiegebruik[not(kopie_indicator/@value = 'true')]">
                  <component typeCode="COMP">
                     <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9444_20221124154710"/>
                  </component>
               </xsl:for-each>
               <xsl:for-each select="medicatiegebruik[kopie_indicator/@value = 'true']">
                  <component typeCode="COMP">
                     <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9443_20221124135001"/>
                  </component>
               </xsl:for-each>
            </xsl:for-each>
         </organizer>
      </xsl:result-document>
      <!-- MTD's -->
      <xsl:result-document href="{$outputDir}/bsmtd-example-930-1.xml">
         <xsl:variable name="mbh"
                       select="$inputAdaFiles/adaxml/data/*/medicamenteuze_behandeling[medicatietoediening]"/>
         <xsl:variable name="patient"
                       select="($mbh/../patient)[1]"/>
         <xsl:if test="$schematronRef">
            <xsl:processing-instruction name="nictiz">status="example"</xsl:processing-instruction>
            <xsl:processing-instruction name="xml-model">phase="#ALL" href="../../../../../../../../../SVN/AORTA/branches/Onderhoud_Mp_v90/Publicaties/20210921/mp-xml-20210921T194523/schematron_closed_warnings/mp-mp92-mg-mtd.sch" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron" phase="#ALL"</xsl:processing-instruction>
         </xsl:if>
         <organizer xsi:schemaLocation="urn:hl7-org:v3 file:/C:/SVN/AORTA/branches/Onderhoud_Mp_v90/XML/schemas/organizer.xsd"
                    classCode="CLUSTER"
                    moodCode="EVN"
                    xmlns:cda="urn:hl7-org:v3">
            <templateId root="2.16.840.1.113883.2.4.3.11.60.20.77.10.9408"/>
            <code code="419891008"
                  displayName="Gegevensobject"
                  codeSystem="2.16.840.1.113883.6.96"
                  codeSystemName="SNOMED CT"/>
            <statusCode code="completed"/>
            <!-- Patient -->
            <xsl:for-each select="$patient">
               <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180611000000"/>
            </xsl:for-each>
            <!-- Medicamenteuze behandeling -->
            <xsl:for-each select="$mbh">
               <xsl:for-each select="medicatietoediening">
                  <component typeCode="COMP">
                     <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9406_20221101091730"/>
                  </component>
               </xsl:for-each>
            </xsl:for-each>
         </organizer>
      </xsl:result-document>
   </xsl:template>
</xsl:stylesheet>
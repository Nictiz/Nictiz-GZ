<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.7-beta1/nl-core-NutritionAdvice.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.2.0; 2024-03-14T08:34:46.14+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://hl7.org/fhir"
                xmlns:util="urn:hl7:utilities"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org">
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xd:doc scope="stylesheet">
      <xd:desc>Converts ada voedingsadvies to FHIR NutritionOrder conforming to profile nl-core-NutritionAdvice</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>Create an nl-core-NutritionAdvice instance as a NutritionOrder FHIR instance from ada voedingsadvies element.</xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
      <xd:param name="patient">Optional ADA instance or ADA reference element for the patient.</xd:param>
   </xd:doc>
   <xsl:template match="voedingsadvies"
                 name="nl-core-NutritionAdvice"
                 mode="nl-core-NutritionAdvice"
                 as="element(f:NutritionOrder)?">
      <xsl:param name="in"
                 select="."
                 as="element()?"/>
      <xsl:param name="patient"
                 select="patient/*"
                 as="element()?"/>
      <xsl:for-each select="$in">
         <NutritionOrder>
            <xsl:call-template name="insertLogicalId"/>
            <meta>
               <profile value="http://nictiz.nl/fhir/StructureDefinition/nl-core-NutritionAdvice"/>
            </meta>
            <xsl:for-each select="indicatie">
               <extension url="http://hl7.org/fhir/StructureDefinition/workflow-reasonReference">
                  <valueReference>
                     <xsl:call-template name="makeReference">
                        <xsl:with-param name="in"
                                        select="probleem"/>
                        <xsl:with-param name="profile"
                                        select="'nl-core-Problem'"/>
                     </xsl:call-template>
                  </valueReference>
               </extension>
            </xsl:for-each>
            <status value="active"/>
            <intent value="order"/>
            <xsl:call-template name="makeReference">
               <xsl:with-param name="in"
                               select="$patient"/>
               <xsl:with-param name="wrapIn"
                               select="'patient'"/>
            </xsl:call-template>
            <!--No suitable field to map to dateTime is present in the ada instance, hence current-dateTime is used instead. See https://github.com/Nictiz/Nictiz-R4-zib2020/issues/179.-->
            <dateTime>
               <xsl:attribute name="value">
                  <xsl:value-of select="current-dateTime()"/>
               </xsl:attribute>
            </dateTime>
            <oralDiet>
               <xsl:for-each select="dieet_type">
                  <type>
                     <text>
                        <xsl:call-template name="string-to-string">
                           <xsl:with-param name="in"
                                           select="."/>
                        </xsl:call-template>
                     </text>
                  </type>
               </xsl:for-each>
               <xsl:call-template name="util:logMessage">
                  <xsl:with-param name="msg">The zib doesn't provide enough information to determine the right mapping of consistency, as it depends on the type of food (BITS ticket ZIB-1617). Therefore the mapping for solid food is used which may not be right for the information that is transformed.</xsl:with-param>
                  <xsl:with-param name="level">WARN</xsl:with-param>
                  <xsl:with-param name="terminate">false</xsl:with-param>
               </xsl:call-template>
               <xsl:for-each select="consistentie">
                  <texture>
                     <modifier>
                        <text>
                           <xsl:call-template name="string-to-string">
                              <xsl:with-param name="in"
                                              select="."/>
                           </xsl:call-template>
                        </text>
                     </modifier>
                  </texture>
                  <!--<fluidConsistencyType>
                            <text>
                                <xsl:call-template name="string-to-string">
                                    <xsl:with-param name="in" select="."/>
                                </xsl:call-template>
                            </text>
                        </fluidConsistencyType>-->
               </xsl:for-each>
            </oralDiet>
            <xsl:for-each select="toelichting">
               <note>
                  <text>
                     <xsl:call-template name="string-to-string">
                        <xsl:with-param name="in"
                                        select="."/>
                     </xsl:call-template>
                  </text>
               </note>
            </xsl:for-each>
         </NutritionOrder>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>
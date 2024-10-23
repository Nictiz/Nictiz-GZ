<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.5-beta1/nl-core-Vaccination.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.5-beta1/nl-core-Vaccination.xsl == -->
<!-- == Distribution: VZVZ-test-distribution-drop-in; 0.2; 2024-01-25T12:13:11.57+01:00 == -->
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
      <xd:desc>Converts ada vaccination to FHIR Immunization or ImmunizationRequest conforming to profile nl-core-Vaccination-event or nl-core-Vaccination-request respectively</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>Create an nl-core-Vaccination-event instance as an Immunization FHIR instance from ada vaccinatie element.</xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
      <xd:param name="patient">Optional ADA instance or ADA reference element for the patient.</xd:param>
   </xd:doc>
   <xsl:template match="vaccinatie"
                 name="nl-core-Vaccination-event"
                 mode="nl-core-Vaccination-event"
                 as="element(f:Immunization)?">
      <xsl:param name="in"
                 select="."
                 as="element()?"/>
      <xsl:param name="patient"
                 select="patient/*"
                 as="element()?"/>
      <xsl:for-each select="$in">
         <Immunization>
            <xsl:call-template name="insertLogicalId">
               <xsl:with-param name="profile"
                               select="'nl-core-Vaccination-event'"/>
            </xsl:call-template>
            <meta>
               <profile value="http://nictiz.nl/fhir/StructureDefinition/nl-core-Vaccination-event"/>
            </meta>
            <status value="completed"/>
            <xsl:for-each select="product_code">
               <vaccineCode>
                  <xsl:call-template name="code-to-CodeableConcept">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </vaccineCode>
            </xsl:for-each>
            <xsl:call-template name="makeReference">
               <xsl:with-param name="in"
                               select="$patient"/>
               <xsl:with-param name="wrapIn"
                               select="'patient'"/>
            </xsl:call-template>
            <xsl:for-each select="vaccinatie_datum">
               <occurrenceDateTime>
                  <xsl:call-template name="date-to-datetime">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </occurrenceDateTime>
            </xsl:for-each>
            <xsl:for-each select="dosis">
               <doseQuantity>
                  <xsl:call-template name="hoeveelheid-to-Quantity">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </doseQuantity>
            </xsl:for-each>
            <xsl:for-each select="toediener">
               <performer>
                  <function>
                     <coding>
                        <system value="http://terminology.hl7.org/CodeSystem/v2-0443"/>
                        <code value="AP"/>
                     </coding>
                  </function>
                  <actor>
                     <xsl:call-template name="makeReference">
                        <xsl:with-param name="in"
                                        select="zorgverlener"/>
                        <xsl:with-param name="profile"
                                        select="'nl-core-HealthProfessional-PractitionerRole'"/>
                     </xsl:call-template>
                  </actor>
               </performer>
            </xsl:for-each>
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
         </Immunization>
      </xsl:for-each>
   </xsl:template>
   <xd:doc>
      <xd:desc>Create an nl-core-Vaccination-request instance as an ImmunizationRecommendation FHIR instance from ada vaccinatie element.</xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
      <xd:param name="patient">Optional ADA instance or ADA reference element for the patient.</xd:param>
   </xd:doc>
   <xsl:template match="vaccinatie"
                 name="nl-core-Vaccination-request"
                 mode="nl-core-Vaccination-request"
                 as="element(f:ImmunizationRecommendation)?">
      <xsl:param name="in"
                 select="."
                 as="element()?"/>
      <xsl:param name="patient"
                 select="patient/*"
                 as="element()?"/>
      <xsl:for-each select="$in">
         <ImmunizationRecommendation>
            <xsl:call-template name="insertLogicalId">
               <xsl:with-param name="profile"
                               select="'nl-core-Vaccination-request'"/>
            </xsl:call-template>
            <meta>
               <profile value="http://nictiz.nl/fhir/StructureDefinition/nl-core-Vaccination-request"/>
            </meta>
            <xsl:call-template name="makeReference">
               <xsl:with-param name="in"
                               select="$patient"/>
               <xsl:with-param name="wrapIn"
                               select="'patient'"/>
            </xsl:call-template>
            <date>
               <xsl:attribute name="value">
                  <xsl:value-of select="current-dateTime()"/>
               </xsl:attribute>
            </date>
            <xsl:if test="product_code or vaccinatie_datum or toelichting">
               <recommendation>
                  <xsl:for-each select="product_code">
                     <vaccineCode>
                        <xsl:call-template name="code-to-CodeableConcept">
                           <xsl:with-param name="in"
                                           select="."/>
                        </xsl:call-template>
                     </vaccineCode>
                  </xsl:for-each>
                  <!--Based on the zib it's not possible to deduce the value of forecastStatus with full certainty. The value _due_ seems to be the most suited default.-->
                  <forecastStatus>
                     <coding>
                        <system value="http://terminology.hl7.org/CodeSystem/immunization-recommendation-status"/>
                        <code value="due"/>
                        <display value="Due"/>
                     </coding>
                  </forecastStatus>
                  <xsl:for-each select="vaccinatie_datum">
                     <dateCriterion>
                        <code>
                           <coding>
                              <!--Based on the zib it's not possible to deduce the value of dateCriterion.code with full certainty. The LOINC code 30980-7 (Date vaccin due) seems to be the most suited default.-->
                              <system value="http://loinc.org"/>
                              <code value="30980-7"/>
                           </coding>
                        </code>
                        <value>
                           <xsl:call-template name="date-to-datetime">
                              <xsl:with-param name="in"
                                              select="."/>
                           </xsl:call-template>
                        </value>
                     </dateCriterion>
                  </xsl:for-each>
                  <xsl:for-each select="toelichting">
                     <description>
                        <xsl:call-template name="string-to-string">
                           <xsl:with-param name="in"
                                           select="."/>
                        </xsl:call-template>
                     </description>
                  </xsl:for-each>
               </recommendation>
            </xsl:if>
         </ImmunizationRecommendation>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>
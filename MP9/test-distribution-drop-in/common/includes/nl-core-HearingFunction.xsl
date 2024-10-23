<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.5-beta1/nl-core-HearingFunction.xsl"?>
<?yatc-distribution-info name="VZVZ-test-distribution-drop-in" timestamp="2024-01-25T12:13:11.57+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.5-beta1/nl-core-HearingFunction.xsl == -->
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
      <xd:desc>Converts ada functie_horen to FHIR Observation conforming to profile nl-core-HearingFunction, FHIR DeviceUseStatement conforming to profile nl-core-HearingFunction.HearingAid and FHIR Device conforming to profile nl-core-HearingFunction.HearingAid.Product</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>Create an nl-core-HearingFunction instance as an Observation FHIR instance from ada functie_horen element.</xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
      <xd:param name="subject">Optional ADA instance or ADA reference element for the patient.</xd:param>
   </xd:doc>
   <xsl:template match="functie_horen"
                 name="nl-core-HearingFunction"
                 mode="nl-core-HearingFunction"
                 as="element(f:Observation)?">
      <xsl:param name="in"
                 select="."
                 as="element()?"/>
      <xsl:param name="subject"
                 select="patient/*"
                 as="element()?"/>
      <xsl:for-each select="$in">
         <Observation>
            <xsl:call-template name="insertLogicalId">
               <xsl:with-param name="profile"
                               select="'nl-core-HearingFunction'"/>
            </xsl:call-template>
            <meta>
               <profile value="http://nictiz.nl/fhir/StructureDefinition/nl-core-HearingFunction"/>
            </meta>
            <status value="final"/>
            <code>
               <coding>
                  <system value="http://snomed.info/sct"/>
                  <code value="47078008"/>
                  <display value="gehoorfunctie"/>
               </coding>
            </code>
            <xsl:call-template name="makeReference">
               <xsl:with-param name="in"
                               select="$subject"/>
               <xsl:with-param name="wrapIn"
                               select="'subject'"/>
            </xsl:call-template>
            <xsl:for-each select="hoor_functie">
               <valueCodeableConcept>
                  <xsl:call-template name="code-to-CodeableConcept">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </valueCodeableConcept>
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
         </Observation>
      </xsl:for-each>
   </xsl:template>
   <xd:doc>
      <xd:desc>Create an nl-core-HearingFunction.HearingAid instance as a DeviceUseStatement FHIR instance from ada horen_hulpmiddel/medisch_hulpmiddel element.</xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
      <xd:param name="subject">Optional ADA instance or ADA reference element for the patient.</xd:param>
      <xd:param name="reasonReference">ADA instance used to populate the reasonReference element in the MedicalDevice.</xd:param>
   </xd:doc>
   <xsl:template match="horen_hulpmiddel/medisch_hulpmiddel"
                 name="nl-core-HearingFunction.HearingAid"
                 mode="nl-core-HearingFunction.HearingAid"
                 as="element(f:DeviceUseStatement)?">
      <xsl:param name="in"
                 select="."
                 as="element()?"/>
      <xsl:param name="subject"
                 select="patient/*"
                 as="element()?"/>
      <xsl:param name="reasonReference"
                 select="ancestor::functie_horen"/>
      <xsl:call-template name="nl-core-MedicalDevice">
         <xsl:with-param name="subject"
                         select="$subject"/>
         <xsl:with-param name="profile"
                         select="'nl-core-HearingFunction.HearingAid'"/>
         <xsl:with-param name="reasonReference"
                         select="$reasonReference"/>
      </xsl:call-template>
   </xsl:template>
   <xd:doc>
      <xd:desc>Create an nl-core-HearingFunction.HearingAid.Product instance as a Device FHIR instance from ada product element.</xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
      <xd:param name="subject">Optional ADA instance or ADA reference element for the patient.</xd:param>
   </xd:doc>
   <xsl:template match="product"
                 name="nl-core-HearingFunction.HearingAid.Product"
                 mode="nl-core-HearingFunction.HearingAid.Product"
                 as="element(f:Device)?">
      <xsl:param name="in"
                 select="."
                 as="element()?"/>
      <xsl:param name="subject"
                 select="patient/*"
                 as="element()?"/>
      <xsl:call-template name="nl-core-MedicalDevice.Product">
         <xsl:with-param name="subject"
                         select="$subject"/>
         <xsl:with-param name="profile"
                         select="'nl-core-HearingFunction.HearingAid.Product'"/>
      </xsl:call-template>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to generate a display that can be shown when referencing this instance.</xd:desc>
   </xd:doc>
   <xsl:template match="functie_horen"
                 mode="_generateDisplay">
      <xsl:variable name="parts"
                    as="item()*">
         <xsl:text>Hearing function observation</xsl:text>
         <xsl:if test="hoor_functie[@displayName]">
            <xsl:value-of select="hoor_functie/@displayName"/>
         </xsl:if>
      </xsl:variable>
      <xsl:value-of select="string-join($parts[. != ''], ', ')"/>
   </xsl:template>
</xsl:stylesheet>
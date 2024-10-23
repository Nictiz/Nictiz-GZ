<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/nl-core-ContactPerson.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.3.0; 2024-04-09T18:20:47.77+02:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:local="urn:fhir:stu3:functions">
   <xsl:variable name="nlcoreContactPerson">http://nictiz.nl/fhir/StructureDefinition/nl-core-ContactPerson</xsl:variable>
   <xd:doc>
      <xd:desc>Template to convert f:RelatedPerson to ADA contactpersoon, currently only support for elements that are part of MP9 2.0 transactions</xd:desc>
   </xd:doc>
   <xsl:template match="f:RelatedPerson"
                 mode="nl-core-ContactPerson">
      <contactpersoon>
         <xsl:if test="../../f:fullUrl[@value]">
            <xsl:attribute name="id">
               <xsl:value-of select="nf:convert2NCName(../../f:fullUrl/@value)"/>
            </xsl:attribute>
         </xsl:if>
         <!-- naamgegevens -->
         <xsl:apply-templates select="f:name"
                              mode="nl-core-NameInformation"/>
         <!-- contactgegevens -->
         <xsl:if test="f:telephoneNumbers | f:emailAddresses">
            <contactgegevens>
               <xsl:apply-templates select="f:telephoneNumbers"
                                    mode="nl-core-ContactInformation-TelephoneNumbers"/>
               <xsl:apply-templates select="f:emailAddresses"
                                    mode="nl-core-ContactInformation-EmailAddresses"/>
            </contactgegevens>
         </xsl:if>
         <!-- adresgegevens -->
         <xsl:apply-templates select="f:address"
                              mode="nl-core-AddressInformation"/>
         <!-- rol, TODO make specific based on codeSystem -->
         <xsl:apply-templates select="f:relationship[f:coding/f:system/@value = ('urn:oid:2.16.840.1.113883.2.4.3.11.22.472', 'urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.23.1')]"
                              mode="#current"/>
         <!-- relatie -->
         <xsl:apply-templates select="f:relationship[not(f:coding/f:system/@value = ('urn:oid:2.16.840.1.113883.2.4.3.11.22.472', 'urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.23.1'))]"
                              mode="#current"/>
      </contactpersoon>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:relationship[not(f:system/@value = ('urn:oid:2.16.840.1.113883.2.4.3.11.22.472', 'urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.23.1'))] to ADA contactpersoon/relatie</xd:desc>
   </xd:doc>
   <xsl:template match="f:relationship[not(f:coding/f:system/@value = ('urn:oid:2.16.840.1.113883.2.4.3.11.22.472', 'urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.23.1'))]"
                 mode="nl-core-ContactPerson">
      <xsl:call-template name="CodeableConcept-to-code">
         <xsl:with-param name="adaElementName">relatie</xsl:with-param>
      </xsl:call-template>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:relationship[f:system/@value = ('urn:oid:2.16.840.1.113883.2.4.3.11.22.472', 'urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.23.1')] to ADA contactpersoon/rol</xd:desc>
   </xd:doc>
   <xsl:template match="f:relationship[f:coding/f:system/@value = ('urn:oid:2.16.840.1.113883.2.4.3.11.22.472', 'urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.23.1')]"
                 mode="nl-core-ContactPerson">
      <xsl:call-template name="CodeableConcept-to-code">
         <xsl:with-param name="adaElementName">rol</xsl:with-param>
      </xsl:call-template>
   </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/fhir_2_ada-r4/mp/9.3.0/payload/2.0.0-beta.1/mp-voorstel.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.2.0; 2024-03-14T08:34:46.14+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:local="urn:fhir:stu3:functions">
   <xsl:output indent="yes"
               omit-xml-declaration="yes"/>
   <xd:doc>
      <xd:desc>Base template for the main interaction.</xd:desc>
   </xd:doc>
   <xsl:template match="f:MedicationRequest[f:intent/@value = 'plan']"
                 mode="mp-voorstel">
      <voorstel>
         <xsl:for-each select="f:identifier">
            <xsl:call-template name="Identifier-to-identificatie"/>
         </xsl:for-each>
         <xsl:for-each select="f:authoredOn">
            <xsl:call-template name="datetime-to-datetime">
               <xsl:with-param name="adaElementName">voorstel_datum</xsl:with-param>
               <xsl:with-param name="adaDatatype">datetime</xsl:with-param>
            </xsl:call-template>
         </xsl:for-each>
         <xsl:for-each select="f:requester">
            <xsl:variable name="resolvedRequester"
                          select="nf:resolveRefInBundle(.)"/>
            <auteur>
               <xsl:choose>
                  <xsl:when test="$resolvedRequester/(f:PractitionerRole | f:Practitioner) or f:type/@value = ('PractitionerRole', 'Practitioner')">
                     <auteur_is_zorgverlener>
                        <zorgverlener value="{nf:convert2NCName(f:reference/@value)}"
                                      datatype="reference"/>
                     </auteur_is_zorgverlener>
                  </xsl:when>
                  <xsl:when test="$resolvedRequester/(f:Organization | f:Location) or f:type/@value = ('Organization', 'Location')">
                     <auteur_is_zorgaanbieder>
                        <zorgaanbieder value="{nf:convert2NCName(f:reference/@value)}"
                                       datatype="reference"/>
                     </auteur_is_zorgaanbieder>
                  </xsl:when>
                  <xsl:when test="$resolvedRequester/f:Patient or f:type/@value = 'Patient'">
                     <auteur_is_patient value="true"/>
                  </xsl:when>
               </xsl:choose>
            </auteur>
         </xsl:for-each>
         <!-- medicamenteuze_behandeling -->
         <xsl:choose>
            <xsl:when test="f:extension[@url=$urlExtPharmaceuticalTreatmentIdentifier]">
               <xsl:for-each select="f:extension[@url=$urlExtPharmaceuticalTreatmentIdentifier]">
                  <medicamenteuze_behandeling value="{f:valueIdentifier/f:value/@value}"
                                              datatype="reference"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <medicamenteuze_behandeling value="NIEUW"
                                           datatype="reference"/>
            </xsl:otherwise>
         </xsl:choose>
         <!-- toelichting -->
         <xsl:for-each select="f:extension[@url=$urlExtComment]">
            <toelichting value="{f:valueString/@value}"/>
         </xsl:for-each>
      </voorstel>
   </xsl:template>
</xsl:stylesheet>
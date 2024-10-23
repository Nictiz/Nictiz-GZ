<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/nl-core-AdministrationAgreement.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 1.0.1; 2024-04-18T12:43:34.01+02:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:util="urn:hl7:utilities"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:local="urn:fhir:stu3:functions">
   <xsl:variable name="nlcoreAdministrationAgreement"
                 select="'http://nictiz.nl/fhir/StructureDefinition/nl-core-AdministrationAgreement'"/>
   <xsl:variable name="extAdministrationAgreementDateTime">http://nictiz.nl/fhir/StructureDefinition/ext-AdministrationAgreement.AdministrationAgreementDateTime</xsl:variable>
   <xsl:variable name="extAdministrationAgreementAgreementReason">http://nictiz.nl/fhir/StructureDefinition/ext-AdministrationAgreement.AgreementReason</xsl:variable>
   <xsl:variable name="extAdministrationAgreementModificationDiscontinuationReason">http://nictiz.nl/fhir/StructureDefinition/ext-AdministrationAgreement.ReasonModificationOrDiscontinuation</xsl:variable>
   <xsl:variable name="extStoptype">http://nictiz.nl/fhir/StructureDefinition/ext-StopType</xsl:variable>
   <xd:doc>
      <xd:desc>Template to convert f:MedicationRequest to ADA toedieningsafspraak</xd:desc>
   </xd:doc>
   <xsl:template match="f:MedicationDispense"
                 mode="nl-core-AdministrationAgreement">
      <toedieningsafspraak>
         <!-- identificatie -->
         <xsl:apply-templates select="f:identifier"
                              mode="#current"/>
         <!-- toedieningsafspraak_datum_tijd -->
         <xsl:apply-templates select="f:extension[@url = $extAdministrationAgreementDateTime]"
                              mode="#current"/>
         <!-- gebruiksperiode -->
         <xsl:if test="f:extension[@url = ($urlExtTimeInterval-Period, $urlExtTimeIntervalPeriod)] or f:extension[@url = ($urlExtTimeInterval-Duration, $urlExtTimeIntervalDuration)]">
            <gebruiksperiode>
               <xsl:apply-templates select="f:extension[@url = ($urlExtTimeInterval-Period, $urlExtTimeIntervalPeriod)]"
                                    mode="urlExtTimeInterval-Period"/>
               <!-- MP9 2.0.0-bèta version -->
               <xsl:apply-templates select="f:extension[@url = ($urlExtTimeInterval-Duration, $urlExtTimeIntervalDuration)]"
                                    mode="urlExtTimeInterval-Duration"/>
               <!-- MP9 2.0.0 version -->
               <xsl:apply-templates select="f:extension[@url = ($urlExtTimeInterval-Period, $urlExtTimeIntervalPeriod)]/f:valuePeriod/f:extension[@url = ($urlExtTimeInterval-Duration, $urlExtTimeIntervalDuration)]"
                                    mode="urlExtTimeInterval-Duration"/>
            </gebruiksperiode>
         </xsl:if>
         <!-- geannuleerd_indicator  -->
         <xsl:apply-templates select="f:status"
                              mode="#current"/>
         <!-- toedieningsafspraak_stop_type -->
         <xsl:apply-templates select="f:modifierExtension[@url = $extStoptype]"
                              mode="#current"/>
         <!-- verstrekker -->
         <xsl:apply-templates select="f:performer"
                              mode="#current"/>
         <!-- reden_afspraak -->
         <!-- Issue MP-370 dataset concept type change from string to codelist -->
         <xsl:apply-templates select="f:extension[@url = ($extAdministrationAgreementAgreementReason, $extAdministrationAgreementModificationDiscontinuationReason)]"
                              mode="#current"/>
         <!-- geneesmiddel_bij_toedieningsafspraak -->
         <xsl:apply-templates select="f:medicationReference"
                              mode="#current"/>
         <!-- gebruiksinstructie -->
         <xsl:call-template name="nl-core-InstructionsForUse"/>
         <!-- distributievorm, added as part of MP-257, borrowed from MedicationDispense -->
         <xsl:apply-templates select="f:extension[@url = $urlExtMedicationMedicationDispenseDistributionForm]"
                              mode="nl-core-MedicationDispense"/>
         <!-- aanvullende_informatie -->
         <xsl:apply-templates select="f:extension[@url = $urlExtAdministrationAgreementAdditionalInformation]"
                              mode="#current"/>
         <!-- toelichting -->
         <xsl:apply-templates select="f:note"
                              mode="nl-core-Note"/>
         <!-- kopie indicator -->
         <xsl:apply-templates select="f:extension[@url = $urlExtCopyIndicator]"
                              mode="ext-CopyIndicator"/>
         <!-- relatie medicatieafspraak -->
         <xsl:apply-templates select="f:authorizingPrescription"
                              mode="#current"/>
      </toedieningsafspraak>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:identifier to identificatie</xd:desc>
   </xd:doc>
   <xsl:template match="f:identifier"
                 mode="nl-core-AdministrationAgreement">
      <xsl:call-template name="Identifier-to-identificatie"/>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:medicationReference to afgesproken_geneesmiddel</xd:desc>
   </xd:doc>
   <xsl:template match="f:medicationReference"
                 mode="nl-core-AdministrationAgreement">
      <xsl:variable name="referenceValue"
                    select="f:reference/@value"/>
      <geneesmiddel_bij_toedieningsafspraak>
         <farmaceutisch_product datatype="reference"
                                value="{nf:process-reference-2NCName(f:reference/@value, ancestor::f:entry/f:fullUrl/@value)}"/>
      </geneesmiddel_bij_toedieningsafspraak>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:extension[@url = $extAdministrationAgreementDateTime] to toedieningsafspraak_datum_tijd</xd:desc>
   </xd:doc>
   <xsl:template match="f:extension[@url = $extAdministrationAgreementDateTime]"
                 mode="nl-core-AdministrationAgreement">
      <xsl:for-each select="f:valueDateTime">
         <xsl:call-template name="datetime-to-datetime">
            <xsl:with-param name="adaDatatype">datetime</xsl:with-param>
            <xsl:with-param name="adaElementName">toedieningsafspraak_datum_tijd</xsl:with-param>
         </xsl:call-template>
      </xsl:for-each>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:extension[@url = $urlExtAdministrationAgreementAdditionalInformation] to toedieningsafspraak_aanvullende_informatie</xd:desc>
   </xd:doc>
   <xsl:template match="f:extension[@url = $urlExtAdministrationAgreementAdditionalInformation]"
                 mode="nl-core-AdministrationAgreement">
      <!-- Issue MP-536 dataset concept type change from codelist to string -->
      <xsl:for-each select="f:valueString">
         <toedieningsafspraak_aanvullende_informatie value="{@value}"/>
      </xsl:for-each>
      <!-- support for legacy instances -->
      <xsl:for-each select="f:valueCoding">
         <toedieningsafspraak_aanvullende_informatie>
            <xsl:call-template name="Coding-to-code"/>
         </toedieningsafspraak_aanvullende_informatie>
      </xsl:for-each>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:extension[@url = $extStoptype] to stop</xd:desc>
   </xd:doc>
   <xsl:template match="f:modifierExtension[@url = $extStoptype]"
                 mode="nl-core-AdministrationAgreement">
      <xsl:for-each select="f:valueCodeableConcept">
         <xsl:call-template name="CodeableConcept-to-code">
            <xsl:with-param name="adaElementName">toedieningsafspraak_stop_type</xsl:with-param>
         </xsl:call-template>
      </xsl:for-each>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:status to geannuleerd_indicator. Only the FHIR status value 'entered-in-error' is used in this mapping.</xd:desc>
   </xd:doc>
   <xsl:template match="f:status"
                 mode="nl-core-AdministrationAgreement">
      <xsl:if test="@value = 'entered-in-error'">
         <geannuleerd_indicator value="true"/>
      </xsl:if>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:performer to verstrekker</xd:desc>
   </xd:doc>
   <xsl:template match="f:performer"
                 mode="nl-core-AdministrationAgreement">
      <verstrekker>
         <zorgaanbieder datatype="reference"
                        value="{nf:process-reference-2NCName(f:actor[f:type/@value='Organization']/f:reference/@value, ancestor::f:entry/f:fullUrl/@value)}"/>
      </verstrekker>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:extension[@url=$extAdministrationAgreementAgreementReason] to reden_afspraak</xd:desc>
   </xd:doc>
   <xsl:template match="f:extension[@url = $extAdministrationAgreementAgreementReason]"
                 mode="nl-core-AdministrationAgreement">
      <reden_afspraak value="{f:valueString/@value}"/>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:extension[@url=$extAdministrationAgreementModificationDiscontinuationReason] to toedieningsafspraak_reden_wijzigen_of_staken</xd:desc>
   </xd:doc>
   <xsl:template match="f:extension[@url = $extAdministrationAgreementModificationDiscontinuationReason]"
                 mode="nl-core-AdministrationAgreement">
      <xsl:for-each select="f:valueCodeableConcept">
         <xsl:call-template name="CodeableConcept-to-code">
            <xsl:with-param name="adaElementName">toedieningsafspraak_reden_wijzigen_of_staken</xsl:with-param>
         </xsl:call-template>
      </xsl:for-each>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:authorizingPrescription to relatie_medicatieafspraak</xd:desc>
   </xd:doc>
   <xsl:template match="f:authorizingPrescription"
                 mode="nl-core-AdministrationAgreement">
      <relatie_medicatieafspraak>
         <xsl:call-template name="Reference-to-identificatie"/>
      </relatie_medicatieafspraak>
   </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/fhir_2_ada-r4/mp/9.3.0/payload/2.0.0-beta.1/mp-MedicationAdministration.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.3.0; 2024-04-09T18:20:47.77+02:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:util="urn:hl7:utilities"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:local="urn:fhir:stu3:functions">
   <xsl:variable name="urlMpMedicationAdministration">
      <xsl:value-of select="$urlBaseNictizProfile"/>mp-MedicationAdministration</xsl:variable>
   <xd:doc>
      <xd:desc>Template to convert f:MedicationAdministration to ADA medicatietoediening</xd:desc>
   </xd:doc>
   <xsl:template match="f:MedicationAdministration"
                 mode="mp-MedicationAdministration">
      <medicatietoediening>
         <!-- identificatie -->
         <xsl:apply-templates select="f:identifier"
                              mode="#current"/>
         <!-- toedienings_product -->
         <xsl:apply-templates select="f:medicationReference"
                              mode="#current"/>
         <!-- toedienings_datum_tijd -->
         <xsl:apply-templates select="f:effectiveDateTime"
                              mode="#current"/>
         <!-- afgesproken_datum_tijd -->
         <xsl:apply-templates select="f:extension[@url = $urlExtMedicationAdministration2AgreedDateTime]"
                              mode="#current"/>
         <!-- geannuleerd_indicator -->
         <xsl:if test="f:status/@value = 'entered-in-error'">
            <geannuleerd_indicator value="true"/>
         </xsl:if>
         <!-- toegediende_hoeveelheid -->
         <xsl:apply-templates select="f:dosage/f:dose"
                              mode="#current"/>
         <!-- afgesproken_hoeveelheid -->
         <xsl:apply-templates select="f:dosage/f:extension[@url = $urlExtMedicationAdministration2AgreedAmount]/f:valueQuantity"
                              mode="#current"/>
         <!-- volgens_afspraak_indicator -->
         <!-- TODO: should be updated in FHIR profile -->
         <xsl:apply-templates select="f:extension[@url = $urlExtAsAgreedIndicator]"
                              mode="#current"/>
         <!-- toedieningsweg -->
         <xsl:apply-templates select="f:dosage/f:route"
                              mode="mp-InstructionsForUse"/>
         <!-- toedieningssnelheid -->
         <xsl:apply-templates select="f:dosage/f:rateQuantity"
                              mode="#current"/>
         <!-- prik_plak_locatie -->
         <xsl:apply-templates select="f:dosage/f:site/f:text"
                              mode="#current"/>
         <!-- relatie medicatieafspraak -->
         <xsl:apply-templates select="f:request"
                              mode="#current">
            <xsl:with-param name="outputMaOrWds">ma</xsl:with-param>
         </xsl:apply-templates>
         <!-- relatie_toedieningsafspraak -->
         <xsl:apply-templates select="f:supportingInformation"
                              mode="#current"/>
         <!-- relatie_wisselend_doseerschema -->
         <xsl:apply-templates select="f:request"
                              mode="#current">
            <xsl:with-param name="outputMaOrWds">wds</xsl:with-param>
         </xsl:apply-templates>
         <!-- relatie_contact of relatie_zorgepisode -->
         <xsl:apply-templates select="f:context[f:reference | f:identifier]"
                              mode="contextContactEpisodeOfCare"/>
         <!-- toediener -->
         <xsl:apply-templates select="f:performer"
                              mode="#current"/>
         <!-- medicatie_toediening_reden_van_afwijken -->
         <xsl:apply-templates select="f:extension[@url = $urlExtMedicationAdministration2ReasonForDeviation]"
                              mode="#current"/>
         <!-- medicatie_toediening_status  -->
         <xsl:apply-templates select="f:status[@value ne 'entered-in-error']"
                              mode="#current"/>
         <!-- toelichting -->
         <xsl:apply-templates select="f:note"
                              mode="nl-core-Note"/>
      </medicatietoediening>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:extension $urlExtAsAgreedIndicator to volgens_afspraak_indicator element.</xd:desc>
   </xd:doc>
   <xsl:template match="f:extension[@url = $urlExtAsAgreedIndicator]"
                 mode="mp-MedicationAdministration">
      <volgens_afspraak_indicator>
         <xsl:call-template name="boolean-to-boolean">
            <xsl:with-param name="in"
                            select="f:valueBoolean"/>
         </xsl:call-template>
      </volgens_afspraak_indicator>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:extension reason for deviation to medicatie_toediening_reden_van_afwijken element.</xd:desc>
   </xd:doc>
   <xsl:template match="f:extension[@url = $urlExtMedicationAdministration2ReasonForDeviation]"
                 mode="mp-MedicationAdministration">
      <xsl:call-template name="CodeableConcept-to-code">
         <xsl:with-param name="in"
                         select="f:valueCodeableConcept"/>
         <xsl:with-param name="adaElementName">medicatie_toediening_reden_van_afwijken</xsl:with-param>
      </xsl:call-template>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:identifier to identificatie</xd:desc>
   </xd:doc>
   <xsl:template match="f:identifier"
                 mode="mp-MedicationAdministration">
      <xsl:call-template name="Identifier-to-identificatie"/>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:medicationReference to afgesproken_geneesmiddel</xd:desc>
   </xd:doc>
   <xsl:template match="f:medicationReference"
                 mode="mp-MedicationAdministration">
      <xsl:variable name="referenceValue"
                    select="f:reference/@value"/>
      <toedienings_product>
         <farmaceutisch_product value="{nf:process-reference-2NCName(f:reference/@value, ancestor::f:entry/f:fullUrl/@value)}"
                                datatype="reference"/>
      </toedienings_product>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:dosage/f:extension[@url= 
<xd:ref name="extMedicationAdministrationAgreedAmount"
                 type="variable"/>] to afgesproken_hoeveelheid</xd:desc>
   </xd:doc>
   <xsl:template match="f:dosage/f:extension[@url = $urlExtMedicationAdministration2AgreedAmount]/f:valueQuantity"
                 mode="mp-MedicationAdministration">
      <afgesproken_hoeveelheid>
         <xsl:call-template name="GstdQuantity2ada"/>
      </afgesproken_hoeveelheid>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:dosage/f:dose to toegediende_hoeveelheid aantal  and eenheid element.</xd:desc>
   </xd:doc>
   <xsl:template match="f:dosage/f:dose"
                 mode="mp-MedicationAdministration">
      <toegediende_hoeveelheid>
         <xsl:call-template name="GstdQuantity2ada"/>
      </toegediende_hoeveelheid>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:dosage/f:site/f:text to prik_plak_locatie</xd:desc>
   </xd:doc>
   <xsl:template match="f:dosage/f:site/f:text"
                 mode="mp-MedicationAdministration">
      <prik_plak_locatie value="{@value}"/>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:effectiveDateTime to toedienings_datum_tijd</xd:desc>
   </xd:doc>
   <xsl:template match="f:effectiveDateTime"
                 mode="mp-MedicationAdministration">
      <xsl:call-template name="datetime-to-datetime">
         <xsl:with-param name="adaElementName">toedienings_datum_tijd</xsl:with-param>
         <xsl:with-param name="adaDatatype">datetime</xsl:with-param>
      </xsl:call-template>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:status to geannuleerd_indicator. Only the FHIR status value 'entered-in-error' is used in this mapping.</xd:desc>
   </xd:doc>
   <xsl:template match="f:status"
                 mode="mp-MedicationAdministration">
      <xsl:choose>
         <xsl:when test="@value = 'entered-in-error'">
            <geannuleerd_indicator value="true"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:variable name="mapMtdStatus"
                          as="element()*">
               <map inValue="in-progress"
                    code="active"
                    codeSystem="{$oidHL7ActStatus}"
                    codeSystemName="{$oidMap[@oid=$oidHL7ActStatus]/@displayName}"
                    displayName="{$hl7ActStatusMap[@hl7Code='active']/@displayName}"/>
               <map inValue="on-hold"
                    code="suspended"
                    codeSystem="{$oidHL7ActStatus}"
                    codeSystemName="{$oidMap[@oid=$oidHL7ActStatus]/@displayName}"
                    displayName="{$hl7ActStatusMap[@hl7Code='suspended']/@displayName}"/>
               <map inValue="stopped"
                    code="aborted"
                    codeSystem="{$oidHL7ActStatus}"
                    codeSystemName="{$oidMap[@oid=$oidHL7ActStatus]/@displayName}"
                    displayName="{$hl7ActStatusMap[@hl7Code='aborted']/@displayName}"/>
               <map inValue="completed"
                    code="completed"
                    codeSystem="{$oidHL7ActStatus}"
                    codeSystemName="{$oidMap[@oid=$oidHL7ActStatus]/@displayName}"
                    displayName="{$hl7ActStatusMap[@hl7Code='completed']/@displayName}"/>
               <map inValue="not-done"
                    code="cancelled"
                    codeSystem="{$oidHL7ActStatus}"
                    codeSystemName="{$oidMap[@oid=$oidHL7ActStatus]/@displayName}"
                    displayName="{$hl7ActStatusMap[@hl7Code='cancelled']/@displayName}"/>
            </xsl:variable>
            <xsl:if test="@value = $mapMtdStatus/@inValue">
               <medicatie_toediening_status>
                  <xsl:call-template name="code-to-code">
                     <xsl:with-param name="value"
                                     select="@value"/>
                     <xsl:with-param name="codeMap"
                                     as="element()*"
                                     select="$mapMtdStatus"/>
                  </xsl:call-template>
               </medicatie_toediening_status>
            </xsl:if>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:performer to toediener</xd:desc>
   </xd:doc>
   <xsl:template match="f:performer"
                 mode="mp-MedicationAdministration">
      <toediener>
         <xsl:for-each select="f:actor">
            <xsl:variable name="resource"
                          select="nf:resolveRefInBundle(.)"/>
            <xsl:choose>
               <xsl:when test="f:type/@value = 'Patient' or $resource[f:Patient]">
                  <patient>
                     <toediener_is_patient value="true"/>
                  </patient>
               </xsl:when>
               <xsl:when test="$resource[f:PractitionerRole[not(f:practitioner | f:specialty)]]">
                  <!-- should be either organization or location, we'll select the first one found regardless -->
                  <!--						<xsl:variable name="resourceProvider" select="nf:resolveRefInBundle(($resource/f:PractitionerRole/(f:organization|f:location)[f:reference])[1])"/>-->
                  <zorgaanbieder>
                     <!-- LR: TODO convert2NCName functie aanpassen naar process-reference-2NCName maar moet nog controleren wat hier precies gebeurt -->
                     <zorgaanbieder value="{nf:convert2NCName(($resource/f:PractitionerRole/(f:organization|f:location)[f:reference])[1]/f:reference/@value)}"
                                    datatype="reference"/>
                  </zorgaanbieder>
               </xsl:when>
               <xsl:when test="f:type/@value = ('RelatedPerson') or $resource[f:RelatedPerson]">
                  <mantelzorger>
                     <contactpersoon value="{nf:process-reference-2NCName(f:reference/@value, ancestor::f:entry/f:fullUrl/@value)}"
                                     datatype="reference"/>
                  </mantelzorger>
               </xsl:when>
               <!-- pre MP9 3.0 it was possible to convey zorgverleener -->
               <xsl:when test="f:type/@value = ('Practitioner') or $resource[f:Practitioner | f:PractitionerRole[f:practitioner | f:specialty]]">
                  <zorgverlener>
                     <!-- LR: TODO de regex is obv R4, kunnen we hier de regex ook toepassen voor relatieve urls? Aangezien dit pre MP9 3.0 is?-->
                     <zorgverlener value="{nf:convert2NCName(f:reference/@value)}"
                                   datatype="reference"/>
                  </zorgverlener>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
      </toediener>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:rateQuantity to toedieningssnelheid</xd:desc>
   </xd:doc>
   <xsl:template match="f:rateQuantity"
                 mode="mp-MedicationAdministration">
      <toedieningssnelheid>
         <xsl:apply-templates select="."
                              mode="mp-InstructionsForUse"/>
      </toedieningssnelheid>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:request to relatie_medicatieafspraak or relatie_wisselend_doseerschema. Due to sequence in dataset we output one based on param</xd:desc>
      <xd:param name="outputMaOrWds">Whether to output relatie_medicatieafspraak ('ma') or relatie_wisselend_doseerschema ('wds'). Defaults to 'ma'</xd:param>
   </xd:doc>
   <xsl:template match="f:request"
                 mode="mp-MedicationAdministration">
      <xsl:param name="outputMaOrWds"
                 as="xs:string">ma</xsl:param>
      <xsl:variable name="resourceCategory"
                    select="f:extension[@url = $urlExtResourceCategory]/f:valueCodeableConcept/f:coding[f:system/@value = $oidMap[@oid = $oidSNOMEDCT]/@uri]/f:code/@value"/>
      <xsl:choose>
         <xsl:when test="$outputMaOrWds = 'ma' and $resourceCategory = $maCode">
            <relatie_medicatieafspraak>
               <xsl:call-template name="Reference-to-identificatie"/>
            </relatie_medicatieafspraak>
         </xsl:when>
         <xsl:when test="$outputMaOrWds = 'wds' and $resourceCategory = $wdsCode">
            <relatie_wisselend_doseerschema>
               <xsl:call-template name="Reference-to-identificatie"/>
            </relatie_wisselend_doseerschema>
         </xsl:when>
         <xsl:when test="$outputMaOrWds = 'ma' and empty($resourceCategory)">
            <!-- default to MA -->
            <relatie_medicatieafspraak>
               <xsl:call-template name="Reference-to-identificatie"/>
            </relatie_medicatieafspraak>
         </xsl:when>
         <xsl:when test="$outputMaOrWds = 'ma' and $resourceCategory = $wdsCode"/>
         <xsl:when test="$outputMaOrWds = 'wds' and $resourceCategory = $maCode"/>
         <xsl:otherwise>
            <xsl:call-template name="util:logMessage">
               <xsl:with-param name="level"
                               select="$logWARN"/>
               <xsl:with-param name="msg">Encountered a medicationAdministration.request that could not be mapped to an ada element. Please investigate.</xsl:with-param>
               <xsl:with-param name="terminate"
                               select="false()"/>
            </xsl:call-template>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:supportingInformation to relatie_toedieningsafspraak</xd:desc>
   </xd:doc>
   <xsl:template match="f:supportingInformation"
                 mode="mp-MedicationAdministration">
      <relatie_toedieningsafspraak>
         <xsl:call-template name="Reference-to-identificatie"/>
      </relatie_toedieningsafspraak>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to convert f:extension with extension url "$extMedicationAdministration2AgreedDateTime" to afgesproken_datum_tijd</xd:desc>
   </xd:doc>
   <xsl:template match="f:extension[@url = $urlExtMedicationAdministration2AgreedDateTime]"
                 mode="mp-MedicationAdministration">
      <xsl:for-each select="f:valueDateTime">
         <xsl:call-template name="datetime-to-datetime">
            <xsl:with-param name="adaElementName">afgesproken_datum_tijd</xsl:with-param>
            <xsl:with-param name="adaDatatype">datetime</xsl:with-param>
         </xsl:call-template>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>
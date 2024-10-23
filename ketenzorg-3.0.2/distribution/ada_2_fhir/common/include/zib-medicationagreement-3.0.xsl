<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="YATC-internal/ada-2-fhir/env/zibs2017/payload/zib-medicationagreement-3.0.xsl"?>
<?yatc-distribution-info name="ketenzorg-3.0.2" timestamp="2024-06-28T14:38:20.79+02:00" version="1.4.28"?>
<!-- == Provenance: YATC-internal/ada-2-fhir/env/zibs2017/payload/zib-medicationagreement-3.0.xsl == -->
<!-- == Distribution: ketenzorg-3.0.2; 1.4.28; 2024-06-28T14:38:20.79+02:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://hl7.org/fhir"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:yatcs="https://nictiz.nl/ns/YATC-shared"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:local="urn:fhir:stu3:functions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <!-- ================================================================== -->
   <!--
        TBD
    -->
   <!-- ================================================================== -->
   <!--
        Copyright © Nictiz
        
        This program is free software; you can redistribute it and/or modify it under the terms of the
        GNU Lesser General Public License as published by the Free Software Foundation; either version
        2.1 of the License, or (at your option) any later version.
        
        This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
        without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
        See the GNU Lesser General Public License for more details.
        
        The full text of the license is available at http://www.gnu.org/copyleft/lesser.html
    -->
   <!-- ================================================================== -->
   <!--<xsl:import href="_zib2017.xsl"/>
    <xsl:import href="../../../util/mp-functions.xsl"/>
    <xsl:import href="ext-zib-medication-additional-information-2.0.xsl"/>
    <xsl:import href="ext-zib-medication-copy-indicator-2.0.xsl"/>
    <xsl:import href="ext-zib-medication-instructions-for-use-description-1.0.xsl"/>
    <xsl:import href="ext-zib-medication-medication-treatment-2.0.xsl"/>
    <xsl:import href="ext-zib-medication-period-of-use-2.0.xsl"/>
    <xsl:import href="ext-zib-medication-repeat-period-cyclical-schedule-2.0.xsl"/>
    <xsl:import href="ext-zib-medication-stop-type-2.0.xsl"/>
    <xsl:import href="ext-zib-medication-use-duration-2.0.xsl"/>
    <xsl:import href="nl-core-practitioner-2.0.xsl"/>
    <xsl:import href="nl-core-practitionerrole-2.0.xsl"/>
    <xsl:import href="zib-body-height-2.1.xsl"/>
    <xsl:import href="zib-body-weight-2.1.xsl"/>
    <xsl:import href="zib-instructions-for-use-3.0.xsl"/>
    <xsl:import href="zib-problem-2.1.xsl"/>-->
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xsl:param name="referById"
              as="xs:boolean"
              select="false()"/>
   <!-- ================================================================== -->
   <xsl:template name="MedicationAgreementEntry-3.0"
                 match="medicatieafspraak | medication_agreement"
                 as="element()"
                 mode="doMedicationAgreementEntry-3.0">
      <!-- Template based on FHIR Profile https://simplifier.net/NictizSTU3-Zib2017/ZIB-MedicationAgreement/ version 3.0  -->
      <xsl:param name="uuid"
                 select="false()"
                 as="xs:boolean">
         <!-- If true generate uuid from scratch. Defaults to false(). Generating a UUID from scratch limits reproduction of the same output as the UUIDs will be different every time. -->
      </xsl:param>
      <xsl:param name="adaPatient"
                 select="(ancestor::*/patient[*//@value] | ancestor::*/bundle/subject/patient[*//@value])[1]"
                 as="element()">
         <!-- Optional, but should be there. Patient this AllergyIntolerance is for. -->
      </xsl:param>
      <xsl:param name="dateT"
                 as="xs:date?">
         <!-- Optional. dateT may be given for relative dates, only applicable for test instances -->
      </xsl:param>
      <xsl:param name="entryFullUrl"
                 select="nf:get-fhir-uuid(.)">
         <!-- Optional. Value for the entry.fullUrl -->
      </xsl:param>
      <xsl:param name="fhirResourceId">
         <!-- Optional. Value for the entry.resource.xxx.id -->
         <xsl:if test="$referById">
            <xsl:choose>
               <xsl:when test="not($uuid) and string-length(nf:removeSpecialCharacters((identificatie | zibroot/identificatienummer | hcimroot/identification_number)/@value)) gt 0">
                  <xsl:value-of select="nf:removeSpecialCharacters(string-join((identificatie | zibroot/identificatienummer | hcimroot/identification_number)/@value, ''))"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="nf:removeSpecialCharacters(replace($entryFullUrl, 'urn:[^i]*id:', ''))"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:if>
      </xsl:param>
      <xsl:param name="searchMode"
                 select="'include'">
         <!-- Optional. Value for entry.search.mode. Default: include -->
      </xsl:param>
      <entry>
         <fullUrl value="{$entryFullUrl}"/>
         <resource>
            <xsl:call-template name="zib-MedicationAgreement-3.0">
               <xsl:with-param name="in"
                               select="."/>
               <xsl:with-param name="logicalId"
                               select="$fhirResourceId"/>
               <xsl:with-param name="adaPatient"
                               select="$adaPatient"
                               as="element()"/>
               <xsl:with-param name="dateT"
                               select="$dateT"/>
            </xsl:call-template>
         </resource>
         <xsl:if test="string-length($searchMode) gt 0">
            <search>
               <mode value="{$searchMode}"/>
            </search>
         </xsl:if>
      </entry>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="zib-MedicationAgreement-3.0"
                 match="medicatieafspraak[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)] | medication_agreement[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]"
                 mode="doZibMedicationAgreement-3.0"
                 as="element()">
      <!-- Template based on FHIR Profile https://simplifier.net/nictizstu3-zib2017/zib-medicationagreement  -->
      <xsl:param name="in"
                 select="."
                 as="element()?">
         <!-- Node to consider in the creation of a resource -->
      </xsl:param>
      <xsl:param name="logicalId"
                 as="xs:string?">
         <!-- Optional FHIR logical id for the record. -->
      </xsl:param>
      <xsl:param name="adaPatient"
                 select="(ancestor::*/patient[*//@value] | ancestor::*/bundle/subject/patient[*//@value])[1]"
                 as="element()">
         <!-- Required. ADA patient concept to build a reference to from this resource -->
      </xsl:param>
      <xsl:param name="dateT"
                 as="xs:date?">
         <!-- Optional. dateT may be given for relative dates, only applicable for test instances -->
      </xsl:param>
      <xsl:for-each select="$in">
         <xsl:variable name="resource">
            <xsl:variable name="profileValue">http://nictiz.nl/fhir/StructureDefinition/zib-MedicationAgreement</xsl:variable>
            <!-- MedicationRequest -->
            <MedicationRequest xsl:exclude-result-prefixes="#all">
               <xsl:if test="string-length($logicalId) gt 0">
                  <id value="{nf:make-fhir-logicalid(tokenize($profileValue, './')[last()], $logicalId)}"/>
               </xsl:if>
               <meta>
                  <profile value="{$profileValue}"/>
               </meta>
               <!-- gebruiksperiode_start /eind -->
               <xsl:for-each select=".[(gebruiksperiode_start | gebruiksperiode_eind)//(@value)]">
                  <xsl:call-template name="ext-zib-Medication-PeriodOfUse-2.0">
                     <xsl:with-param name="start"
                                     select="gebruiksperiode_start"/>
                     <xsl:with-param name="end"
                                     select="gebruiksperiode_eind"/>
                  </xsl:call-template>
               </xsl:for-each>
               <!-- gebruiksperiode - duur -->
               <xsl:for-each select="gebruiksperiode[@value]">
                  <xsl:call-template name="ext-zib-Medication-Use-Duration"/>
               </xsl:for-each>
               <!-- aanvullende_informatie -->
               <xsl:for-each select="aanvullende_informatie[@code]">
                  <xsl:call-template name="ext-zib-Medication-AdditionalInformation-2.0"/>
               </xsl:for-each>
               <!-- relatie naar medicamenteuze behandeling -->
               <xsl:for-each select="../identificatie[@value]">
                  <xsl:call-template name="ext-zib-medication-medication-treatment-2.0"/>
               </xsl:for-each>
               <!-- kopie indicator -->
               <!-- het ada concept zit niet in alle transacties, eigenlijk alleen in medicatieoverzicht -->
               <xsl:for-each select="kopie_indicator[@value]">
                  <xsl:call-template name="ext-zib-Medication-CopyIndicator-2.0"/>
               </xsl:for-each>
               <!-- relatie naar medicatieafspraak of gebruik -->
               <xsl:for-each select="relatie_naar_afspraak_of_gebruik/(identificatie | identificatie_23288 | identificatie_23289)[@value]">
                  <extension url="http://nictiz.nl/fhir/StructureDefinition/zib-MedicationAgreement-BasedOnAgreementOrUse">
                     <valueReference>
                        <identifier>
                           <xsl:call-template name="id-to-Identifier">
                              <xsl:with-param name="in"
                                              select="."/>
                           </xsl:call-template>
                        </identifier>
                        <display>
                           <xsl:attribute name="value">
                              <xsl:choose>
                                 <xsl:when test="./name() = 'identificatie'">relatie naar medicatieafspraak: </xsl:when>
                                 <xsl:when test="./name() = 'identificatie_23288'">relatie naar toedieningsafspraak: </xsl:when>
                                 <xsl:when test="./name() = 'identificatie_23289'">relatie naar medicatiegebruik: </xsl:when>
                              </xsl:choose>
                              <xsl:value-of select="./string-join((@value, @root), ' || ')"/>
                           </xsl:attribute>
                        </display>
                     </valueReference>
                  </extension>
               </xsl:for-each>
               <!-- instructionsForUseDescription -->
               <xsl:call-template name="ext-zib-Medication-InstructionsForUseDescription-1.0">
                  <xsl:with-param name="in"
                                  as="element()?">
                     <xsl:choose>
                        <xsl:when test="$generateInstructionText">
                           <omschrijving value="{nf:gebruiksintructie-string(gebruiksinstructie)}"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:sequence select="gebruiksinstructie/omschrijving[@value | @nullFlavor]"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </xsl:with-param>
               </xsl:call-template>
               <!-- stoptype -->
               <xsl:for-each select="stoptype[@code]">
                  <xsl:call-template name="ext-zib-Medication-StopType-2.0"/>
               </xsl:for-each>
               <xsl:for-each select="relaties_ketenzorg/identificatie_episode[@value]">
                  <extension url="http://nictiz.nl/fhir/StructureDefinition/extension-context-nl-core-episodeofcare">
                     <valueReference>
                        <identifier>
                           <xsl:call-template name="id-to-Identifier">
                              <xsl:with-param name="in"
                                              select="."/>
                           </xsl:call-template>
                        </identifier>
                        <display value="Episode ID: {string-join((@value, @root), ' ')}"/>
                     </valueReference>
                  </extension>
               </xsl:for-each>
               <!-- herhaalperiode cyclisch schema -->
               <xsl:for-each select="gebruiksinstructie/herhaalperiode_cyclisch_schema[.//(@value | @code)]">
                  <xsl:call-template name="ext-zib-Medication-RepeatPeriodCyclicalSchedule-2.0"/>
               </xsl:for-each>
               <!-- MA id -->
               <xsl:for-each select="identificatie[@value]">
                  <identifier>
                     <xsl:call-template name="id-to-Identifier">
                        <xsl:with-param name="in"
                                        select="."/>
                     </xsl:call-template>
                  </identifier>
               </xsl:for-each>
               <intent value="order"/>
               <!-- type bouwsteen, hier een medicatieafspraak -->
               <category>
                  <coding>
                     <system value="{local:getUri($oidSNOMEDCT)}"/>
                     <code value="16076005"/>
                     <display value="Prescription (procedure)"/>
                  </coding>
                  <text value="Medicatieafspraak"/>
               </category>
               <!-- geneesmiddel -->
               <xsl:apply-templates select="afgesproken_geneesmiddel/product[.//(@value | @code)]"
                                    mode="doMedicationReference"/>
               <!-- patiënt -->
               <subject>
                  <xsl:apply-templates select="$adaPatient"
                                       mode="doPatientReference-2.1"/>
               </subject>
               <!-- relaties_ketenzorg -->
               <!-- We would love to tell you more about the episode/encounter, but alas an id is all we have... based on R4 we opt to only support Encounter here and move EpisodeOfCare to an extension. -->
               <xsl:for-each select="(relaties_ketenzorg/identificatie_contactmoment[@value])[1]">
                  <context>
                     <identifier>
                        <xsl:call-template name="id-to-Identifier">
                           <xsl:with-param name="in"
                                           select="."/>
                        </xsl:call-template>
                     </identifier>
                     <display value="Contact ID: {string-join((@value, @root), ' ')}"/>
                  </context>
               </xsl:for-each>
               <!-- afspraakdatum afspraak_datum_tijd -->
               <xsl:for-each select="(afspraakdatum | afspraak_datum_tijd)[@value]">
                  <authoredOn>
                     <xsl:attribute name="value">
                        <xsl:call-template name="format2FHIRDate">
                           <xsl:with-param name="dateTime"
                                           select="xs:string(@value)"/>
                        </xsl:call-template>
                     </xsl:attribute>
                  </authoredOn>
               </xsl:for-each>
               <!-- voorschrijver -->
               <xsl:for-each select="voorschrijver/zorgverlener[.//(@value | @code)]">
                  <requester>
                     <agent>
                        <xsl:call-template name="practitionerRoleReference">
                           <xsl:with-param name="useExtension"
                                           select="true()"/>
                           <xsl:with-param name="addDisplay"
                                           select="false()"/>
                        </xsl:call-template>
                        <xsl:call-template name="practitionerReference"/>
                     </agent>
                  </requester>
               </xsl:for-each>
               <!-- reden afspraak -->
               <xsl:for-each select="(reden_afspraak | reden_wijzigen_of_staken)[@code]">
                  <reasonCode>
                     <xsl:call-template name="code-to-CodeableConcept">
                        <xsl:with-param name="in"
                                        select="."/>
                        <xsl:with-param name="treatNullFlavorAsCoding"
                                        select="@code = 'OTH' and @codeSystem = $oidHL7NullFlavor"/>
                     </xsl:call-template>
                  </reasonCode>
               </xsl:for-each>
               <!-- reden van voorschrijven -->
               <xsl:for-each select="reden_van_voorschrijven/probleem[.//@code]">
                  <reasonReference>
                     <xsl:call-template name="problemReference"/>
                  </reasonReference>
               </xsl:for-each>
               <!-- toelichting -->
               <xsl:for-each select="toelichting[@value]">
                  <note>
                     <text value="{./@value}"/>
                  </note>
               </xsl:for-each>
               <!-- gebruiksinstructie -->
               <xsl:call-template name="handle-gebruiksinstructie-3.0">
                  <xsl:with-param name="in"
                                  select="gebruiksinstructie"/>
                  <!-- don't output text from MP 9.1 onwards -->
                  <xsl:with-param name="outputText"
                                  select="false()"/>
               </xsl:call-template>
            </MedicationRequest>
         </xsl:variable>
         <!-- Add resource.text -->
         <xsl:apply-templates select="$resource"
                              mode="addNarrative"/>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="YATC-internal/ada-2-fhir/env/zibs2017/payload/zib-problem-2.1.xsl"?>
<?yatc-distribution-info name="ketenzorg-3.0.2" timestamp="2024-06-28T14:38:20.79+02:00" version="1.4.28"?>
<!-- == Provenance: YATC-internal/ada-2-fhir/env/zibs2017/payload/zib-problem-2.1.xsl == -->
<!-- == Distribution: ketenzorg-3.0.2; 1.4.28; 2024-06-28T14:38:20.79+02:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://hl7.org/fhir"
                xmlns:util="urn:hl7:utilities"
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
   <!-- uncomment imports only for development purposes -->
   <!--<xsl:import href="_zib2017.xsl"/>
    <xsl:import href="nl-core-patient-2.1.xsl"/>
    <xsl:import href="nl-core-practitionerrole-2.0.xsl"/>
    <xsl:import href="nl-core-practitioner-2.0.xsl"/>
    <xsl:import href="nl-core-organization-2.0.xsl"/>
    <xsl:import href="nl-core-relatedperson-2.0.xsl"/>
    <xsl:import href="zib-body-height-2.1.xsl"/>
    <xsl:import href="zib-body-weight-2.1.xsl"/>
    <xsl:import href="ext-code-specification-1.0.xsl"/>-->
   <!-- Please note: this problem has been created for MedMij 2019-publication. In 2020-publication there is a backwards incompatible change for zib problem profile.
         So you need to make a new XSLT for that profile version (major version 3). The change is described in MM-319. -->
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xsl:param name="referById"
              as="xs:boolean"
              select="false()"/>
   <xsl:variable name="problems"
                 as="element()*">
      <!-- probleem in problem -->
      <xsl:for-each-group select="//(probleem[not(probleem)] | problem[not(problem)])[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]"
                          group-by="nf:getGroupingKeyDefault(.)">
         <!-- uuid als fullUrl en ook een fhir id genereren vanaf de tweede groep -->
         <xsl:variable name="uuid"
                       as="xs:boolean"
                       select="position() &gt; 1"/>
         <unieke-problem xmlns="">
            <group-key>
               <xsl:value-of select="current-grouping-key()"/>
            </group-key>
            <reference-display>
               <xsl:value-of select="(probleem_naam | problem_name)/(@displayName | @originalText)"/>
            </reference-display>
            <xsl:apply-templates select="current-group()[1]"
                                 mode="doProblemEntry-2.1">
               <xsl:with-param name="uuid"
                               select="$uuid"/>
               <xsl:with-param name="searchMode">include</xsl:with-param>
            </xsl:apply-templates>
         </unieke-problem>
      </xsl:for-each-group>
   </xsl:variable>
   <!-- ================================================================== -->
   <!--<xsl:template name="problemReference" match="//(probleem[not(probleem)] | problem[not(problem)])[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" mode="doProblemReference-2.1" as="element()+">-->
   <!-- Match expression was not XSLT2 compliant. Changed to: -->
   <xsl:template name="problemReference"
                 match="//probleem[not(probleem)][not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)] | //problem[not(problem)][not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]"
                 mode="doProblemReference-2.1"
                 as="element()+">
      <xsl:variable name="theIdentifier"
                    select="identificatie_nummer[@value] | identification_number[@value]"/>
      <xsl:variable name="theGroupKey"
                    select="nf:getGroupingKeyDefault(.)"/>
      <xsl:variable name="theGroupElement"
                    select="$problems[group-key = $theGroupKey]"
                    as="element()?"/>
      <xsl:choose>
         <xsl:when test="$theGroupElement">
            <xsl:variable name="fullUrl"
                          select="nf:getFullUrlOrId(($theGroupElement/f:entry)[1])"/>
            <reference value="{$fullUrl}"/>
         </xsl:when>
         <xsl:when test="$theIdentifier">
            <identifier>
               <xsl:call-template name="id-to-Identifier">
                  <xsl:with-param name="in"
                                  select="($theIdentifier[not(@root = $mask-ids-var)], $theIdentifier)[1]"/>
               </xsl:call-template>
            </identifier>
         </xsl:when>
      </xsl:choose>
      <xsl:if test="string-length($theGroupElement/reference-display) gt 0">
         <display value="{$theGroupElement/reference-display}"/>
      </xsl:if>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <!--<xsl:template name="problemEntry" match="//(probleem[not(probleem)] | problem[not(problem)])[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" mode="doProblemEntry-2.1" as="element(f:entry)">-->
   <!-- Match expression was not XSLT2 compliant. Changed to: -->
   <xsl:template name="problemEntry"
                 match="//probleem[not(probleem)][not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)] | //problem[not(problem)][not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]"
                 mode="doProblemEntry-2.1"
                 as="element(f:entry)">
      <!-- Produces a FHIR entry element with a Condition resource -->
      <xsl:param name="uuid"
                 select="false()"
                 as="xs:boolean">
         <!-- If true generate uuid from scratch. Defaults to false(). Generating a UUID from scratch limits reproduction of the same output as the UUIDs will be different every time. -->
      </xsl:param>
      <xsl:param name="adaPatient"
                 select="(ancestor::*/patient[*//@value] | ancestor::*/bundle/subject/patient[*//@value])[1]"
                 as="element()">
         <!-- Optional, but should be there. Patient for which this Condition is for. -->
      </xsl:param>
      <xsl:param name="dateT"
                 as="xs:date?">
         <!-- Optional. dateT may be given for relative dates, only applicable for test instances -->
      </xsl:param>
      <xsl:param name="entryFullUrl">
         <!-- Optional. Value for the entry.fullUrl -->
         <xsl:choose>
            <xsl:when test="$uuid or empty((zibroot/identificatienummer | hcimroot/identification_number)/@value)">
               <xsl:value-of select="nf:get-fhir-uuid(.)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:value-of select="nf:getUriFromAdaId(zibroot/identificatienummer | hcimroot/identification_number, 'Condition', false())"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:param>
      <!--<xsl:param name="entryFullUrl" select="nf:get-fhir-uuid(.)"/>-->
      <xsl:param name="fhirResourceId">
         <!-- Optional. Value for the entry.resource.Condition.id -->
         <xsl:choose>
            <xsl:when test="$referById">
               <xsl:choose>
                  <xsl:when test="not($uuid) and string-length(nf:removeSpecialCharacters((zibroot/identificatienummer | hcimroot/identification_number)/@value)) gt 0">
                     <xsl:value-of select="nf:removeSpecialCharacters(string-join((zibroot/identificatienummer | hcimroot/identification_number)/@value, ''))"/>
                  </xsl:when>
                  <!-- specific handling for MP prescribe reasons for more stable id -->
                  <xsl:when test="./ancestor::reden_van_voorschrijven[probleem/probleem_naam[@code][not(@codeSystem = $oidHL7NullFlavor)]]">
                     <xsl:variable name="patientRef"
                                   select="$patients[group-key = nf:getGroupingKeyPatient($adaPatient)]/f:entry/f:resource/f:Patient/f:id/@value"
                                   as="xs:string?"/>
                     <xsl:value-of select="concat('redenvoorschrijven', $patientRef, (upper-case(nf:removeSpecialCharacters(string-join(.//(@value | @code), '')))))"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:value-of select="nf:removeSpecialCharacters(replace($entryFullUrl, 'urn:[^i]*id:', ''))"/>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:when>
            <xsl:when test="matches($entryFullUrl, '^https?:')">
               <xsl:value-of select="tokenize($entryFullUrl, '/')[last()]"/>
            </xsl:when>
         </xsl:choose>
      </xsl:param>
      <xsl:param name="searchMode"
                 select="'include'">
         <!-- Optional. Value for entry.search.mode. Default: include -->
      </xsl:param>
      <entry>
         <fullUrl value="{$entryFullUrl}"/>
         <resource>
            <xsl:call-template name="zib-Problem-2.1">
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
   <!--<xsl:template name="zib-Problem-2.1" match="//(probleem[not(probleem)] | problem[not(problem)])[not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]" as="element(f:Condition)" mode="doZibProblem-2.1">-->
   <!-- Match expression was not XSLT2 compliant. Changed to: -->
   <xsl:template name="zib-Problem-2.1"
                 match="//probleem[not(probleem)][not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)] | //problem[not(problem)][not(@datatype = 'reference')][.//(@value | @code | @nullFlavor)]"
                 as="element(f:Condition)"
                 mode="doZibProblem-2.1">
      <!-- Mapping of HCIM Problem concept in ADA to FHIR resource zib-Problem. -->
      <xsl:param name="in"
                 select="."
                 as="element()?">
         <!-- Node to consider in the creation of the Condition resource for Problem. -->
      </xsl:param>
      <xsl:param name="logicalId"
                 as="xs:string?">
         <!-- Optional FHIR logical id for the record. -->
      </xsl:param>
      <xsl:param name="adaPatient"
                 select="(ancestor::*/patient[*//@value] | ancestor::*/bundle/subject/patient[*//@value] | ancestor::bundle//subject//patient[not(patient)][*//@value])[1]"
                 as="element()">
         <!-- Required. ADA patient concept to build a reference to from this resource -->
      </xsl:param>
      <xsl:param name="dateT"
                 as="xs:date?">
         <!-- Optional. dateT may be given for relative dates, only applicable for test instances -->
      </xsl:param>
      <xsl:variable name="patientRef"
                    as="element()*">
         <xsl:for-each select="$adaPatient">
            <xsl:call-template name="patientReference"/>
         </xsl:for-each>
      </xsl:variable>
      <xsl:for-each select="$in">
         <xsl:variable name="currentAdaTransaction"
                       select="./ancestor::*[ancestor::data]"/>
         <xsl:variable name="profileValue">http://nictiz.nl/fhir/StructureDefinition/zib-Problem</xsl:variable>
         <xsl:variable name="resource">
            <Condition>
               <xsl:if test="string-length($logicalId) gt 0">
                  <xsl:choose>
                     <xsl:when test="$referById">
                        <id value="{nf:make-fhir-logicalid(tokenize($profileValue, './')[last()], $logicalId)}"/>
                     </xsl:when>
                     <xsl:otherwise>
                        <id value="{$logicalId}"/>
                     </xsl:otherwise>
                  </xsl:choose>
               </xsl:if>
               <meta>
                  <profile value="{$profileValue}"/>
               </meta>
               <xsl:for-each select="zibroot/identificatienummer[@value] | hcimroot/identification_number[@value]">
                  <identifier>
                     <xsl:call-template name="id-to-Identifier">
                        <xsl:with-param name="in"
                                        select="."/>
                     </xsl:call-template>
                  </identifier>
               </xsl:for-each>
               <!-- clinicalStatus is required in the FHIR profile. mapping https://simplifier.net/NictizSTU3-Zib2017/ProbleemStatusCodelijst-to-Condition-Clinical-Status-Code -->
               <!-- probleem status -->
               <clinicalStatus>
                  <xsl:attribute name="value">
                     <xsl:choose>
                        <xsl:when test="(probleem_status | problem_status)/@code = '73425007'">inactive</xsl:when>
                        <xsl:when test="(probleem_status | problem_status)/@code = '55561003'">active</xsl:when>
                        <xsl:otherwise>active</xsl:otherwise>
                     </xsl:choose>
                  </xsl:attribute>
                  <!-- MM-1036 add code.specification extension -->
                  <xsl:call-template name="ext-code-specification-1.0">
                     <xsl:with-param name="in"
                                     select="probleem_status | problem_status"/>
                  </xsl:call-template>
               </clinicalStatus>
               <!-- Verification Status-->
               <xsl:for-each select="(verificatie_status | verification_status)[@code]">
                  <verificationStatus>
                     <xsl:attribute name="value">
                        <xsl:choose>
                           <xsl:when test="@code = '415684004'">provisional</xsl:when>
                           <xsl:when test="@code = '410590009'">differential</xsl:when>
                           <xsl:when test="@code = '410605003'">confirmed</xsl:when>
                           <xsl:when test="@code = '410516002'">refuted</xsl:when>
                           <xsl:when test="@code = 'UNK'">unknown</xsl:when>
                        </xsl:choose>
                     </xsl:attribute>
                     <!-- MM-1036 add code.specification extension -->
                     <xsl:call-template name="ext-code-specification-1.0">
                        <xsl:with-param name="in"
                                        select="."/>
                     </xsl:call-template>
                  </verificationStatus>
               </xsl:for-each>
               <!-- Problem Type (.category) -->
               <xsl:for-each select="(probleem_type | problem_type)[@code]">
                  <category>
                     <xsl:call-template name="code-to-CodeableConcept">
                        <xsl:with-param name="in"
                                        select="."/>
                     </xsl:call-template>
                  </category>
               </xsl:for-each>
               <!-- Problem Name (.code) -->
               <!-- code is required in the FHIR profile, so always output code, data-absent-reason if no actual value -->
               <code>
                  <xsl:choose>
                     <xsl:when test="(probleem_naam | problem_name)[@code]">
                        <xsl:call-template name="code-to-CodeableConcept">
                           <xsl:with-param name="in"
                                           select="probleem_naam | problem_name"/>
                        </xsl:call-template>
                     </xsl:when>
                     <xsl:otherwise>
                        <extension url="{$urlExtHL7DataAbsentReason}">
                           <valueCode value="unknown"/>
                        </extension>
                     </xsl:otherwise>
                  </xsl:choose>
               </code>
               <!-- BodySite SHALL be present when laterality or anatomical location is present in the adaxml -->
               <xsl:variable name="problemAnatomic"
                             select="(problem_anatomical_location | probleem_anatomische_locatie)[@code]"/>
               <xsl:variable name="problemLateral"
                             select="(problem_laterality | probleem_lateraliteit)[@code]"/>
               <xsl:if test="$problemAnatomic | $problemLateral">
                  <bodySite>
                     <!-- extensie toevoegen als lateraliteit aanwezig is -->
                     <xsl:for-each select="$problemLateral">
                        <extension url="http://nictiz.nl/fhir/StructureDefinition/BodySite-Qualifier">
                           <valueCodeableConcept>
                              <xsl:call-template name="code-to-CodeableConcept">
                                 <xsl:with-param name="in"
                                                 select="."/>
                              </xsl:call-template>
                           </valueCodeableConcept>
                        </extension>
                     </xsl:for-each>
                     <!-- Codeableconcept toevoegen aan bodySite -->
                     <xsl:for-each select="$problemAnatomic">
                        <xsl:call-template name="code-to-CodeableConcept">
                           <xsl:with-param name="in"
                                           select="."/>
                        </xsl:call-template>
                     </xsl:for-each>
                  </bodySite>
               </xsl:if>
               <!-- Patient reference -->
               <subject>
                  <xsl:copy-of select="$patientRef[self::f:extension]"/>
                  <xsl:copy-of select="$patientRef[self::f:reference]"/>
                  <xsl:copy-of select="$patientRef[self::f:identifier]"/>
                  <xsl:copy-of select="$patientRef[self::f:display]"/>
               </subject>
               <xsl:for-each select="(probleem_begin_datum | problem_start_date)[@value]">
                  <onsetDateTime>
                     <xsl:attribute name="value">
                        <xsl:call-template name="format2FHIRDate">
                           <xsl:with-param name="dateTime"
                                           select="xs:string(@value)"/>
                           <xsl:with-param name="dateT"
                                           select="$dateT"/>
                        </xsl:call-template>
                     </xsl:attribute>
                  </onsetDateTime>
               </xsl:for-each>
               <xsl:for-each select="(probleem_eind_datum | problem_end_date)[@value]">
                  <abatementDateTime>
                     <xsl:attribute name="value">
                        <xsl:call-template name="format2FHIRDate">
                           <xsl:with-param name="dateTime"
                                           select="xs:string(@value)"/>
                           <xsl:with-param name="dateT"
                                           select="$dateT"/>
                        </xsl:call-template>
                     </xsl:attribute>
                  </abatementDateTime>
               </xsl:for-each>
               <!-- TS    NL-CM:0.0.14    DatumTijd    0..1-->
               <!-- assertedDate -->
               <xsl:for-each select="(zibroot/datum_tijd | hcimroot/date_time)[@value]">
                  <xsl:call-template name="util:logMessage">
                     <xsl:with-param name="level"
                                     select="$logWARN"/>
                     <xsl:with-param name="msg">In the zib-Problem profile the DateTime concept from the BasicElements (NL-CM:0.0.14) is mapped to .onsetDateTime instead of .assertedDate. Since this stylesheet is actively used (for instance in MP 6.12) this discrepancy will not be corrected.</xsl:with-param>
                     <xsl:with-param name="terminate">false</xsl:with-param>
                  </xsl:call-template>
                  <assertedDate>
                     <xsl:attribute name="value">
                        <xsl:call-template name="format2FHIRDate">
                           <xsl:with-param name="dateTime"
                                           select="xs:string(@value)"/>
                           <xsl:with-param name="dateT"
                                           select="$dateT"/>
                        </xsl:call-template>
                     </xsl:attribute>
                  </assertedDate>
               </xsl:for-each>
               <!-- Condition.asserter is Person who asserts this condition. For a complaint, this is the informant. 
                        For a diagnosis this is normally the author. If we have an informant, let it prevail. If we have an author, use that as fallback -->
               <!-- >     NL-CM:0.0.2        Informatiebron via nl.zorg.part.basiselementen -->
               <xsl:variable name="zibrootInformant"
                             select="(zibroot/informatiebron | hcimroot/information_source)/((patient_als_bron | patient_as_information_source)/patient | zorgverlener/zorgverlener | health_professional/health_professional | betrokkene_als_bron/contactpersoon | related_person_as_information_source/contact_person)"/>
               <xsl:variable name="adaInformant"
                             as="element()*">
                  <xsl:choose>
                     <xsl:when test="$zibrootInformant/*">
                        <xsl:sequence select="$zibrootInformant"/>
                     </xsl:when>
                     <xsl:when test="$zibrootInformant[not(@datatype) or @datatype = 'reference'][@value]">
                        <xsl:sequence select="ancestor::data//(zorgverlener | health_professional | patient | contactpersoon | contact_person)[@id = $zibrootInformant/@value]"/>
                     </xsl:when>
                  </xsl:choose>
               </xsl:variable>
               <xsl:variable name="informantRef"
                             as="element()*">
                  <xsl:for-each select="$adaInformant[self::zorgverlener | self::health_professional]">
                     <xsl:call-template name="practitionerRoleReference">
                        <xsl:with-param name="useExtension"
                                        select="true()"/>
                        <xsl:with-param name="addDisplay"
                                        select="true()"/>
                     </xsl:call-template>
                  </xsl:for-each>
                  <xsl:for-each select="$adaInformant[self::patient]">
                     <xsl:sequence select="$patientRef"/>
                  </xsl:for-each>
                  <xsl:for-each select="$adaInformant[self::contactpersoon | self::contact_person]">
                     <xsl:call-template name="relatedPersonReference"/>
                  </xsl:for-each>
               </xsl:variable>
               <!-- >     NL-CM:0.0.7        Auteur via nl.zorg.part.basiselementen -->
               <!-- asserter -->
               <xsl:variable name="zibrootAuteur"
                             select="zibroot/auteur/((patient_als_auteur | patient_as_author)/patient | zorgverlener_als_auteur/zorgverlener | health_professional_as_author/health_professional | betrokkene_als_auteur/contactpersoon | related_person_as_author/contact_person)"/>
               <xsl:variable name="adaAuteur"
                             as="element()*">
                  <xsl:choose>
                     <xsl:when test="$zibrootAuteur/*">
                        <xsl:sequence select="$zibrootAuteur"/>
                     </xsl:when>
                     <xsl:when test="$zibrootAuteur[not(@datatype) or @datatype = 'reference'][@value]">
                        <xsl:sequence select="ancestor::data//(zorgverlener | health_professional | patient | contactpersoon | contact_person)[@id = $zibrootAuteur/@value]"/>
                     </xsl:when>
                  </xsl:choose>
               </xsl:variable>
               <xsl:variable name="authorRef"
                             as="element()*">
                  <xsl:for-each select="$adaAuteur[self::zorgverlener | self::health_professional]">
                     <xsl:call-template name="practitionerRoleReference">
                        <xsl:with-param name="useExtension"
                                        select="true()"/>
                        <xsl:with-param name="addDisplay"
                                        select="true()"/>
                     </xsl:call-template>
                  </xsl:for-each>
                  <xsl:for-each select="$adaAuteur[self::patient]">
                     <xsl:sequence select="$patientRef"/>
                  </xsl:for-each>
                  <xsl:for-each select="$adaAuteur[self::contactpersoon | self::contact_person]">
                     <xsl:call-template name="relatedPersonReference"/>
                  </xsl:for-each>
               </xsl:variable>
               <xsl:choose>
                  <xsl:when test="$informantRef">
                     <asserter>
                        <xsl:copy-of select="$informantRef[self::f:extension]"/>
                        <xsl:copy-of select="$informantRef[self::f:reference]"/>
                        <xsl:copy-of select="$informantRef[self::f:identifier]"/>
                        <xsl:copy-of select="$informantRef[self::f:display]"/>
                     </asserter>
                  </xsl:when>
                  <xsl:when test="$authorRef">
                     <asserter>
                        <xsl:copy-of select="$authorRef[self::f:extension]"/>
                        <xsl:copy-of select="$authorRef[self::f:reference]"/>
                        <xsl:copy-of select="$authorRef[self::f:identifier]"/>
                        <xsl:copy-of select="$authorRef[self::f:display]"/>
                     </asserter>
                  </xsl:when>
               </xsl:choose>
               <!-- Comment (.note) -->
               <xsl:for-each select="(toelichting | comment)[@value]">
                  <note>
                     <text>
                        <xsl:call-template name="string-to-string">
                           <xsl:with-param name="in"
                                           select="."/>
                        </xsl:call-template>
                     </text>
                  </note>
               </xsl:for-each>
            </Condition>
         </xsl:variable>
         <!-- Add resource.text -->
         <xsl:apply-templates select="$resource"
                              mode="addNarrative"/>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>
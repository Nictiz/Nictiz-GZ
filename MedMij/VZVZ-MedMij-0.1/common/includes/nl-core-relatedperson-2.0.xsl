<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/YATC-internal/ada-2-fhir/env/zibs2017/payload/nl-core-relatedperson-2.0.xsl"?>
<?yatc-distribution-info name="VZVZ-MedMij" timestamp="2024-01-29T11:45:25.52+01:00" version="0.1"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/YATC-internal/ada-2-fhir/env/zibs2017/payload/nl-core-relatedperson-2.0.xsl == -->
<!-- == Distribution: VZVZ-MedMij; 0.1; 2024-01-29T11:45:25.52+01:00 == -->
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
   <!-- import because we want to be able to override the param for macAddress for UUID generation -->
   <!--<xsl:import href="2_fhir_fhir_include.xsl"/>-->
   <xsl:output method="xml"
               indent="yes"/>
   <xsl:strip-space elements="*"/>
   <xsl:param name="referById"
              as="xs:boolean"
              select="false()"/>
   <!-- ================================================================== -->
   <xsl:template name="relatedPersonReference"
                 match="//(informant//persoon[not(persoon)] | contactpersoon[not(contactpersoon)] | contact_person[not(contact_person)] | contact[not(contact)])"
                 mode="doRelatedPersonReference-2.0">
      <xsl:variable name="theIdentifier"
                    select="identificatie_nummer[@value] | identification_number[@value]"/>
      <xsl:variable name="theGroupKey"
                    select="nf:getGroupingKeyDefault(.)"/>
      <xsl:variable name="theGroupElement"
                    select="$relatedPersons[group-key = $theGroupKey]"
                    as="element()?"/>
      <xsl:choose>
         <xsl:when test="$theGroupElement">
            <reference value="{nf:getFullUrlOrId($theGroupElement/f:entry)}"/>
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
   <xsl:template name="relatedPersonEntry"
                 match="//(informant//persoon[not(persoon)] | contactpersoon[not(contactpersoon)] | contact_person[not(contact_person)] | contact[not(contact)])"
                 mode="doRelatedPersonEntry-2.0">
      <!-- Produces a FHIR entry element with a RelatedPerson resource for ContactPerson -->
      <xsl:param name="uuid"
                 select="false()"
                 as="xs:boolean">
         <!-- If true generate uuid from scratch. Generating a uuid from scratch limits reproduction of the same output as the uuids will be different every time. -->
      </xsl:param>
      <xsl:param name="adaPatient"
                 select="(ancestor::*/patient[*//@value] | ancestor::*/bundle/subject/patient[*//@value] | ancestor::bundle//subject//patient[not(patient)][*//@value])[1]"
                 as="element()">
         <!-- Optional, but should be there. Patient this resource is for. -->
      </xsl:param>
      <xsl:param name="entryFullUrl"
                 select="nf:get-fhir-uuid(.)">
         <!-- Optional. Value for the entry.fullUrl -->
      </xsl:param>
      <xsl:param name="fhirResourceId">
         <!-- Optional. Value for the entry.resource.RelatedPerson.id -->
         <xsl:if test="$referById">
            <xsl:choose>
               <xsl:when test="not($uuid) and (naamgegevens[1]//*[not(name()='naamgebruik')]/@value | name_information[1]//*[not(name()='name_usage')]/@value)">
                  <xsl:value-of select="upper-case(nf:removeSpecialCharacters(string-join( (naamgegevens[1]//*[not(name()='naamgebruik')] | name_information[1]//*[not(name()='name_usage')])//(@value), '')))"/>
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
            <xsl:call-template name="nl-core-relatedperson-2.0">
               <xsl:with-param name="in"
                               select="."/>
               <xsl:with-param name="logicalId"
                               select="$fhirResourceId"/>
               <xsl:with-param name="adaPatient"
                               select="$adaPatient"
                               as="element()"/>
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
   <xsl:template name="nl-core-relatedperson-2.0"
                 match="//(informant//persoon[not(persoon)] | contactpersoon[not(contactpersoon)] | contact_person[not(contact_person)] | contact[not(contact)])"
                 mode="doRelatedPersonResource-2.0">
      <!-- Mapping of HCIM ContactPerson concept in ADA to FHIR resource nl-core-relatedperson. -->
      <xsl:param name="in"
                 select="."
                 as="element()?">
         <!-- Node to consider in the creation of the RelatedPerson resource for ContactPerson. -->
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
      <xsl:for-each select="$in">
         <xsl:variable name="resource">
            <xsl:variable name="profileValue">http://fhir.nl/fhir/StructureDefinition/nl-core-relatedperson</xsl:variable>
            <RelatedPerson>
               <xsl:if test="string-length($logicalId) gt 0">
                  <id value="{nf:make-fhir-logicalid(tokenize($profileValue, './')[last()], $logicalId)}"/>
               </xsl:if>
               <meta>
                  <profile value="{$profileValue}"/>
               </meta>
               <xsl:for-each select="(rol_of_functie | rol | role)[@code]">
                  <extension url="http://fhir.nl/fhir/StructureDefinition/nl-core-relatedperson-role">
                     <valueCodeableConcept>
                        <xsl:call-template name="code-to-CodeableConcept">
                           <xsl:with-param name="in"
                                           select="."/>
                        </xsl:call-template>
                     </valueCodeableConcept>
                  </extension>
               </xsl:for-each>
               <xsl:for-each select="zibroot/identificatienummer | hcimroot/identification_number">
                  <identifier>
                     <xsl:call-template name="id-to-Identifier">
                        <xsl:with-param name="in"
                                        select="."/>
                     </xsl:call-template>
                  </identifier>
               </xsl:for-each>
               <!-- Patient reference -->
               <patient>
                  <xsl:apply-templates select="$adaPatient"
                                       mode="doPatientReference-2.1"/>
               </patient>
               <xsl:for-each select="(relatie | relationship)[@code]">
                  <relationship>
                     <xsl:call-template name="code-to-CodeableConcept">
                        <xsl:with-param name="in"
                                        select="."/>
                     </xsl:call-template>
                  </relationship>
               </xsl:for-each>
               <!-- in some data sets the name_information is unfortunately unnecessarily nested in an extra group, hence the extra predicate -->
               <xsl:for-each select=".//(naamgegevens[not(naamgegevens)] | name_information[not(name_information)])[not(ancestor::patient)]">
                  <xsl:call-template name="nl-core-humanname-2.0">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </xsl:for-each>
               <!-- in some data sets the contact_information is unfortunately unnecessarily nested in an extra group, hence the extra predicate -->
               <xsl:for-each select=".//(contactgegevens[not(contactgegevens)] | contact_information[not(contact_information)])[not(ancestor::patient)]">
                  <xsl:call-template name="nl-core-contactpoint-1.0">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </xsl:for-each>
               <!-- in some data sets the address_information is unfortunately unnecessarily nested in an extra group, hence the extra predicate -->
               <xsl:for-each select=".//(adresgegevens[not(adresgegevens)] | address_information[not(address_information)])[not(ancestor::patient)]">
                  <xsl:call-template name="nl-core-address-2.0">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </xsl:for-each>
            </RelatedPerson>
         </xsl:variable>
         <!-- Add resource.text -->
         <xsl:apply-templates select="$resource"
                              mode="addNarrative"/>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/zibs2020/payload/0.8.0-beta.1/nl-core-DOSScore.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 1.0.1; 2024-04-18T12:43:34.01+02:00 == -->
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
      <xd:desc>Converts ADA dosscore to FHIR resource conforming to profile nl-core-DOSScore</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc>Create an nl-core-DOSScore instance as an Observation FHIR instance from ADA dosscore.</xd:desc>
      <xd:param name="in">ADA element as input. Defaults to self.</xd:param>
   </xd:doc>
   <xsl:template match="dosscore"
                 name="nl-core-DOSScore"
                 mode="nl-core-DOSScore"
                 as="element(f:Observation)">
      <xsl:param name="in"
                 as="element()?"
                 select="."/>
      <xsl:param name="subject"
                 select="patient/*"
                 as="element()?"/>
      <xsl:for-each select="$in">
         <Observation>
            <xsl:call-template name="insertLogicalId"/>
            <meta>
               <profile value="http://nictiz.nl/fhir/StructureDefinition/nl-core-DOSScore"/>
            </meta>
            <status value="final"/>
            <code>
               <coding>
                  <system value="http://snomed.info/sct"/>
                  <code value="160591000146109"/>
                  <display value="'Delirium observation screening'-beoordelingsschaal"/>
               </coding>
            </code>
            <xsl:for-each select="$subject">
               <xsl:call-template name="makeReference">
                  <xsl:with-param name="in"
                                  select="$subject"/>
                  <xsl:with-param name="wrapIn"
                                  select="'subject'"/>
               </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="dosscore_datum_tijd">
               <effectiveDateTime>
                  <xsl:call-template name="date-to-datetime">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </effectiveDateTime>
            </xsl:for-each>
            <xsl:for-each select="dosscore_totaal">
               <valueInteger>
                  <xsl:attribute name="value">
                     <xsl:value-of select="@value"/>
                  </xsl:attribute>
               </valueInteger>
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
            <xsl:for-each select="zakt_weg">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="18007006"/>
                        <display value="DOSScore ZaktWeg"/>
                     </coding>
                  </code>
                  <valueInteger>
                     <xsl:attribute name="value">
                        <xsl:value-of select="@value"/>
                     </xsl:attribute>
                  </valueInteger>
               </component>
            </xsl:for-each>
            <xsl:for-each select="snel_afgeleid">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="18007007"/>
                        <display value="DOSScore SnelAfgeleid"/>
                     </coding>
                  </code>
                  <valueInteger>
                     <xsl:attribute name="value">
                        <xsl:value-of select="@value"/>
                     </xsl:attribute>
                  </valueInteger>
               </component>
            </xsl:for-each>
            <xsl:for-each select="heeft_aandacht">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="18007008"/>
                        <display value="DOSScore HeeftAandacht"/>
                     </coding>
                  </code>
                  <valueInteger>
                     <xsl:attribute name="value">
                        <xsl:value-of select="@value"/>
                     </xsl:attribute>
                  </valueInteger>
               </component>
            </xsl:for-each>
            <xsl:for-each select="vraag_antwoord_niet_af">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="18007009"/>
                        <display value="DOSScore VraagAntwoordNietAf"/>
                     </coding>
                  </code>
                  <valueInteger>
                     <xsl:attribute name="value">
                        <xsl:value-of select="@value"/>
                     </xsl:attribute>
                  </valueInteger>
               </component>
            </xsl:for-each>
            <xsl:for-each select="antwoorden_niet_passend">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="18007010"/>
                        <display value="DOSScore AntwoordenNietPassend"/>
                     </coding>
                  </code>
                  <valueInteger>
                     <xsl:attribute name="value">
                        <xsl:value-of select="@value"/>
                     </xsl:attribute>
                  </valueInteger>
               </component>
            </xsl:for-each>
            <xsl:for-each select="reageert_traag">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="18007011"/>
                        <display value="DOSScore ReageertTraag"/>
                     </coding>
                  </code>
                  <valueInteger>
                     <xsl:attribute name="value">
                        <xsl:value-of select="@value"/>
                     </xsl:attribute>
                  </valueInteger>
               </component>
            </xsl:for-each>
            <xsl:for-each select="denkt_ergens_anders">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="18007012"/>
                        <display value="DOSScore DenktErgensAnders"/>
                     </coding>
                  </code>
                  <valueInteger>
                     <xsl:attribute name="value">
                        <xsl:value-of select="@value"/>
                     </xsl:attribute>
                  </valueInteger>
               </component>
            </xsl:for-each>
            <xsl:for-each select="beseft_dagdeel">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="18007013"/>
                        <display value="DOSScore BeseftDagdeel"/>
                     </coding>
                  </code>
                  <valueInteger>
                     <xsl:attribute name="value">
                        <xsl:value-of select="@value"/>
                     </xsl:attribute>
                  </valueInteger>
               </component>
            </xsl:for-each>
            <xsl:for-each select="herinnert_recent">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="18007014"/>
                        <display value="DOSScore HerinnertRecent"/>
                     </coding>
                  </code>
                  <valueInteger>
                     <xsl:attribute name="value">
                        <xsl:value-of select="@value"/>
                     </xsl:attribute>
                  </valueInteger>
               </component>
            </xsl:for-each>
            <xsl:for-each select="rusteloos">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="18007015"/>
                        <display value="DOSScore Rusteloos"/>
                     </coding>
                  </code>
                  <valueInteger>
                     <xsl:attribute name="value">
                        <xsl:value-of select="@value"/>
                     </xsl:attribute>
                  </valueInteger>
               </component>
            </xsl:for-each>
            <xsl:for-each select="trekt_draden">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="18007016"/>
                        <display value="DOSScore TrektDraden"/>
                     </coding>
                  </code>
                  <valueInteger>
                     <xsl:attribute name="value">
                        <xsl:value-of select="@value"/>
                     </xsl:attribute>
                  </valueInteger>
               </component>
            </xsl:for-each>
            <xsl:for-each select="snel_geemotioneerd">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="18007017"/>
                        <display value="DOSScore SnelGeemotioneerd"/>
                     </coding>
                  </code>
                  <valueInteger>
                     <xsl:attribute name="value">
                        <xsl:value-of select="@value"/>
                     </xsl:attribute>
                  </valueInteger>
               </component>
            </xsl:for-each>
            <xsl:for-each select="hallucinaties">
               <component>
                  <code>
                     <coding>
                        <system value="urn:oid:2.16.840.1.113883.2.4.3.11.60.40.4.0.1"/>
                        <code value="18007018"/>
                        <display value="DOSScore Hallucinaties"/>
                     </coding>
                  </code>
                  <valueInteger>
                     <xsl:attribute name="value">
                        <xsl:value-of select="@value"/>
                     </xsl:attribute>
                  </valueInteger>
               </component>
            </xsl:for-each>
         </Observation>
      </xsl:for-each>
   </xsl:template>
   <xd:doc>
      <xd:desc>Template to generate a display that can be shown when referencing this instance.</xd:desc>
   </xd:doc>
   <xsl:template match="dosscore"
                 mode="_generateDisplay">
      <xsl:variable name="parts"
                    as="item()*">
         <xsl:text>DOS score observation</xsl:text>
         <xsl:if test="dosscore_datum_tijd[@value]">
            <xsl:value-of select="concat('measurement date ', dosscore_datum_tijd/@value)"/>
         </xsl:if>
         <xsl:if test="dosscore_totaal[@value]">
            <xsl:value-of select="concat('score ', dosscore_totaal/@value)"/>
         </xsl:if>
      </xsl:variable>
      <xsl:value-of select="string-join($parts[. != ''], ', ')"/>
   </xsl:template>
</xsl:stylesheet>
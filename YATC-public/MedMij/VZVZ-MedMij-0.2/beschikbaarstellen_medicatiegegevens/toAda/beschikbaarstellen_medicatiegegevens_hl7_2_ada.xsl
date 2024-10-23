<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/hl7_2_ada/mp/9.0.7/beschikbaarstellen_medicatiegegevens/payload/beschikbaarstellen_medicatiegegevens_hl7_2_ada.xsl"?>
<?yatc-distribution-info name="VZVZ-MedMij" timestamp="2024-02-06T09:13:30.86+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/hl7_2_ada/mp/9.0.7/beschikbaarstellen_medicatiegegevens/payload/beschikbaarstellen_medicatiegegevens_hl7_2_ada.xsl == -->
<!-- == Distribution: VZVZ-MedMij; 0.2; 2024-02-06T09:13:30.86+01:00 == -->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:sdtc="urn:hl7-org:sdtc"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:hl7nl="urn:hl7-nl:v3"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:pharm="urn:ihe:pharm:medication"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <xsl:import href="../../common/includes/hl7_2_ada_mp_include.xsl"/>
   <xsl:import href="../../common/includes/all-zibs.xsl"/>
   <xd:doc>
      <xd:desc>Dit is een conversie van MP 9.0.7 naar ADA 9.1 beschikbaarstellen medicatiegegevens</xd:desc>
   </xd:doc>
   <xsl:output method="xml"
               indent="yes"
               exclude-result-prefixes="#all"/>
   <!-- parameter to control whether or not the result should contain a reference to the ada xsd -->
   <xsl:param name="outputSchemaRef"
              as="xs:boolean"
              select="true()"/>
   <xsl:variable name="medicatiegegevens-lijst-90"
                 select="//hl7:organizer[hl7:code[@code = '102'][@codeSystem = '2.16.840.1.113883.2.4.3.11.60.20.77.4']] | //hl7:organizer[hl7:code[@code = '419891008'][@codeSystem = '2.16.840.1.113883.6.96']] | hl7:ClinicalDocument[hl7:code[@code = '52981000146104'][@codeSystem = '2.16.840.1.113883.6.96']]"/>
   <xsl:variable name="filename"
                 select="tokenize(document-uri(/), '/')[last()]"/>
   <xsl:variable name="extension"
                 select="tokenize($filename, '\.')[last()]"/>
   <xsl:variable name="idBasedOnFilename"
                 select="replace($filename, concat('.', $extension, '$'), '')"/>
   <xsl:param name="theId">
      <xsl:choose>
         <xsl:when test="string-length($idBasedOnFilename) gt 0">
            <xsl:value-of select="$idBasedOnFilename"/>
         </xsl:when>
         <xsl:when test="string-length($medicatiegegevens-lijst-90/../../../hl7:id/@extension) gt 0">
            <!-- let's use the extension of the message id -->
            <xsl:value-of select="$medicatiegegevens-lijst-90/../../../hl7:id/@extension"/>
         </xsl:when>
         <xsl:otherwise>generated</xsl:otherwise>
      </xsl:choose>
   </xsl:param>
   <xd:doc>
      <xd:desc> if this xslt is used stand alone the template below could be used. </xd:desc>
   </xd:doc>
   <xsl:template match="/">
      <xsl:call-template name="Medicatiegegevens-90-ADA">
         <xsl:with-param name="medicatiegegevens-lijst"
                         select="$medicatiegegevens-lijst-90"/>
      </xsl:call-template>
   </xsl:template>
   <xd:doc>
      <xd:desc>Handles HL7 9.0.7 medication information, transforms it to ada.</xd:desc>
      <xd:param name="medicatiegegevens-lijst">HL7 9.0.7 organizer with medication information.</xd:param>
   </xd:doc>
   <xsl:template name="Medicatiegegevens-90-ADA">
      <xsl:param name="medicatiegegevens-lijst"
                 select="$medicatiegegevens-lijst-90"/>
      <xsl:call-template name="doGeneratedComment">
         <xsl:with-param name="in"
                         select="$medicatiegegevens-lijst/ancestor::*[hl7:ControlActProcess]"/>
      </xsl:call-template>
      <adaxml>
         <xsl:if test="$outputSchemaRef">
            <xsl:attribute name="xsi:noNamespaceSchemaLocation">../ada_schemas/ada_beschikbaarstellen_medicatiegegevens.xsd</xsl:attribute>
         </xsl:if>
         <meta status="new"
               created-by="generated"
               last-update-by="generated">
            <xsl:attribute name="creation-date"
                           select="current-dateTime()"/>
            <xsl:attribute name="last-update-date"
                           select="current-dateTime()"/>
         </meta>
         <data>
            <xsl:for-each select="$medicatiegegevens-lijst">
               <xsl:call-template name="doGeneratedComment"/>
               <xsl:variable name="patient"
                             select="hl7:recordTarget/hl7:patientRole"/>
               <beschikbaarstellen_medicatiegegevens app="mp-mp907"
                                                     shortName="beschikbaarstellen_medicatiegegevens"
                                                     formName="uitwisselen_medicatiegegevens"
                                                     transactionRef="2.16.840.1.113883.2.4.3.11.60.20.77.4.102"
                                                     transactionEffectiveDate="2016-03-23T16:32:43"
                                                     prefix="mp-"
                                                     language="nl-NL"
                                                     title="Generated"
                                                     id="TODO">
                  <xsl:attribute name="title"
                                 select="$theId"/>
                  <xsl:attribute name="id"
                                 select="$theId"/>
                  <xsl:for-each select="$patient">
                     <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.3.10.1_20180601000000">
                        <xsl:with-param name="in"
                                        select="."/>
                        <xsl:with-param name="language"
                                        select="$language"/>
                     </xsl:call-template>
                  </xsl:for-each>
                  <xsl:variable name="component"
                                select=".//*[hl7:templateId/@root = ($templateId-medicatieafspraak, $templateId-verstrekkingsverzoek, $templateId-toedieningsafspraak, $templateId-verstrekking, $templateId-medicatiegebruik)]"/>
                  <xsl:for-each-group select="$component"
                                      group-by="hl7:entryRelationship/hl7:procedure[hl7:templateId/@root = $templateId-medicamenteuze-behandeling]/hl7:id/concat(@root, @extension)">
                     <!-- medicamenteuze_behandeling -->
                     <medicamenteuze_behandeling>
                        <xsl:for-each select="./hl7:entryRelationship/hl7:procedure[hl7:templateId/@root = $templateId-medicamenteuze-behandeling]/hl7:id">
                           <xsl:call-template name="handleII">
                              <xsl:with-param name="elemName">identificatie</xsl:with-param>
                              <xsl:with-param name="in"
                                              select="."/>
                           </xsl:call-template>
                        </xsl:for-each>
                        <!-- medicatieafspraak -->
                        <xsl:for-each select="current-group()[hl7:templateId/@root = $templateId-medicatieafspraak]">
                           <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9235_20181204143321">
                              <xsl:with-param name="ma_hl7_90"
                                              select="."/>
                           </xsl:call-template>
                        </xsl:for-each>
                        <!-- verstrekkingsverzoek -->
                        <xsl:for-each select="current-group()[hl7:templateId/@root = $templateId-verstrekkingsverzoek]">
                           <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9257_20181204143321">
                              <xsl:with-param name="in"
                                              select="."/>
                           </xsl:call-template>
                        </xsl:for-each>
                        <!-- toedieningsafspraak -->
                        <xsl:for-each select="current-group()[hl7:templateId/@root = $templateId-toedieningsafspraak]">
                           <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9259_20181206160523">
                              <xsl:with-param name="in"
                                              select="."/>
                           </xsl:call-template>
                        </xsl:for-each>
                        <!-- verstrekking -->
                        <xsl:for-each select="current-group()[hl7:templateId/@root = $templateId-verstrekking]">
                           <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9255_20181206145856">
                              <xsl:with-param name="in"
                                              select="."/>
                           </xsl:call-template>
                        </xsl:for-each>
                        <!-- medicatiegebruik -->
                        <xsl:for-each select="current-group()[hl7:templateId/@root = $templateId-medicatiegebruik]">
                           <xsl:call-template name="template_2.16.840.1.113883.2.4.3.11.60.20.77.10.9246_20181205101627">
                              <xsl:with-param name="in"
                                              select="."/>
                           </xsl:call-template>
                        </xsl:for-each>
                     </medicamenteuze_behandeling>
                  </xsl:for-each-group>
               </beschikbaarstellen_medicatiegegevens>
            </xsl:for-each>
         </data>
      </adaxml>
   </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/HL7-mappings/hl7_2_ada/ketenzorg/3.0.2/beschikbaarstellen/payload/beschikbaarstellen_diagnostische_bepalingen_2_ada.xsl"?>
<?yatc-distribution-info name="VZVZ-MedMij" timestamp="2024-01-29T11:45:25.52+01:00" version="0.1"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/HL7-mappings/hl7_2_ada/ketenzorg/3.0.2/beschikbaarstellen/payload/beschikbaarstellen_diagnostische_bepalingen_2_ada.xsl == -->
<!-- == Distribution: VZVZ-MedMij; 0.1; 2024-01-29T11:45:25.52+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:hl7="urn:hl7-org:v3"
                xmlns:sdtc="urn:hl7-org:sdtc"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:hl7nl="urn:hl7-nl:v3"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:uuid="http://www.uuid.org"
                xmlns:pharm="urn:ihe:pharm:medication"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <xd:doc>
      <xd:desc>Conversie van 
<xd:a href="https://decor.nictiz.nl/ketenzorg/kz-html-20190110T164948/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.77-2018-04-18T000000.html">Organizer LabBepalingen</xd:a> id: 2.16.840.1.113883.2.4.3.11.60.66.10.77 versie 2018-04-18T00:00:00 naar ADA formaat </xd:desc>
      <xd:desc>Documentatie voor deze mapping staat op de wikipagina 
<xd:a href="https://informatiestandaarden.nictiz.nl/wiki/Mappings/KZ302BeschikbaarstellenLabBepalingenCDA_2_ADA">https://informatiestandaarden.nictiz.nl/wiki/Mappings/KZ302BeschikbaarstellenLabBepalingenCDA_2_ADA</xd:a>
      </xd:desc>
      <xd:desc>Conversie van 
<xd:a href="https://decor.nictiz.nl/ketenzorg/kz-html-20190110T164948/tmp-2.16.840.1.113883.2.4.3.11.60.66.10.8-2018-04-18T000000.html">Organizer AlgemeneBepalingen</xd:a> id: 2.16.840.1.113883.2.4.3.11.60.66.10.8 versie 2018-04-18T00:00:00 naar ADA formaat </xd:desc>
      <xd:desc>Documentatie voor deze mapping staat op de wikipagina 
<xd:a href="https://informatiestandaarden.nictiz.nl/wiki/Mappings/KZ302BeschikbaarstellenAlgemeneBepalingenCDA_2_ADA">https://informatiestandaarden.nictiz.nl/wiki/Mappings/KZ302BeschikbaarstellenAlgemeneBepalingenCDA_2_ADA</xd:a>
      </xd:desc>
   </xd:doc>
   <xsl:output method="xml"
               indent="yes"
               omit-xml-declaration="yes"/>
   <xsl:include href="../../common/includes/hl7_2_ada_ketenzorg_include.xsl"/>
   <xd:doc>
      <xd:desc> if this xslt is used stand alone the template below could be used. </xd:desc>
   </xd:doc>
   <xsl:template match="/">
      <xsl:call-template name="doGeneratedComment"/>
      <adaxml xsi:noNamespaceSchemaLocation="../ada_schemas/ada_diagnostic_results_response.xsd">
         <meta status="new"
               created-by="generated"
               last-update-by="generated">
            <xsl:attribute name="creation-date"
                           select="current-dateTime()"/>
            <xsl:attribute name="last-update-date"
                           select="current-dateTime()"/>
         </meta>
         <data>
            <xsl:for-each select="//hl7:organizer[hl7:templateId/@root = $oidOrganizerLabBepalingen]">
               <xsl:call-template name="BeschikbaarstellenLabBepalingen-ADA">
                  <xsl:with-param name="in"
                                  select="."/>
                  <xsl:with-param name="author"
                                  select="(ancestor::hl7:ControlActProcess/hl7:authorOrPerformer//*[hl7:id])[1]"/>
               </xsl:call-template>
            </xsl:for-each>
            <xsl:for-each select="//hl7:organizer[hl7:templateId/@root = $oidOrganizerAlgemeneBepalingen]">
               <xsl:call-template name="BeschikbaarstellenAlgemeneBepalingen-ADA">
                  <xsl:with-param name="in"
                                  select="."/>
                  <xsl:with-param name="author"
                                  select="(ancestor::hl7:ControlActProcess/hl7:authorOrPerformer//*[hl7:id])[1]"/>
               </xsl:call-template>
            </xsl:for-each>
         </data>
      </adaxml>
   </xsl:template>
</xsl:stylesheet>
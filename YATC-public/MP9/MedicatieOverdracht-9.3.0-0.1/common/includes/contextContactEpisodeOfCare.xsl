<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/fhir_2_ada-r4/zibs2020/payload/0.8.0-beta.1/contextContactEpisodeOfCare.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.1; 2024-03-12T15:03:10.81+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="#all"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:util="urn:hl7:utilities"
                xmlns:f="http://hl7.org/fhir"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
                xmlns:local="urn:fhir:stu3:functions">
   <xd:doc>
      <xd:desc>Template to convert f:context to relatie_contact and/or relatie_zorgepisode based on identifier or reference.</xd:desc>
   </xd:doc>
   <xsl:template match="f:context | f:encounter | f:extension[@url = $urlExtContextEpisodeOfCare]/f:valueReference"
                 mode="contextContactEpisodeOfCare">
      <!-- relatie_contact -  resource: Encounter -->
      <!-- relatie_zorgepisode - resource: EpisodeOfCare -->
      <!-- first try to find the referenced resource with f:reference or f:identifier, can only be found in this Bundle -->
      <xsl:variable name="resource"
                    select="nf:resolveRefInBundle(.)"/>
      <xsl:choose>
         <xsl:when test="f:type/@value = 'Encounter' or $resource[f:Encounter/f:identifier]">
            <relatie_contact>
               <xsl:call-template name="Identifier-to-identificatie">
                  <xsl:with-param name="in"
                                  select="(f:identifier | $resource/f:Encounter/f:identifier)[1]"/>
                  <xsl:with-param name="adaElementName">identificatienummer</xsl:with-param>
               </xsl:call-template>
            </relatie_contact>
         </xsl:when>
         <xsl:when test="f:type/@value = 'EpisodeOfCare' or $resource[f:EpisodeOfCare/f:identifier]">
            <relatie_zorgepisode>
               <xsl:call-template name="Identifier-to-identificatie">
                  <xsl:with-param name="in"
                                  select="(f:identifier | $resource/f:EpisodeOfCare/f:identifier)[1]"/>
                  <xsl:with-param name="adaElementName">identificatienummer</xsl:with-param>
               </xsl:call-template>
            </relatie_zorgepisode>
         </xsl:when>
         <xsl:otherwise>
            <xsl:call-template name="util:logMessage">
               <xsl:with-param name="level"
                               select="$logERROR"/>
               <xsl:with-param name="msg">
                  <xsl:value-of select="parent::f:resource/f:*/local-name()"/>
                  <xsl:text> with fullUrl '</xsl:text>
                  <xsl:value-of select="parent::f:resource/f:*/parent::f:resource/preceding-sibling::f:fullUrl/@value"/>
                  <xsl:text>' .context or .encounter or episodeOfCare extension reference cannot be resolved within the Bundle nor can the type of reference be determined by the identifier. Therefore information (potentially the relation to contact and/or episode of care) will be lost.</xsl:text>
               </xsl:with-param>
            </xsl:call-template>
         </xsl:otherwise>
      </xsl:choose>
      <!-- call this template recursive for underlying extension -->
      <xsl:apply-templates select="f:extension/f:valueReference"
                           mode="#current"/>
   </xsl:template>
</xsl:stylesheet>
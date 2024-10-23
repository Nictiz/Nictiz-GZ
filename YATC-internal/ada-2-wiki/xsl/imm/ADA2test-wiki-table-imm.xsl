<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:html="http://www.w3.org/1999/xhtml" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:nwf="http://www.nictiz.nl/wiki-functions" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023030708211992843880100">
    <!-- ================================================================== -->
    <!--
        This XSL was created to facilitate mapping from ADA xml to wiki table(s) 
        http://nictiz.nl/fhir/StructureDefinition/zib-MedicationAdministrationAgreement. The HL7 V3 interaction contains both 
        logistical information and therapeutic information.
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

    <xsl:import href="../utils/adainstance_2_wikitable.xsl"/>
    <xsl:output method="text" encoding="UTF-16"/>
    
    <xsl:include href="../../xslmod/ada-2-wiki-build-standard-ada-release-file.mod.xsl"/>
    <xsl:include href="../../xslmod/ada-2-wiki-build-standard-parameters.mod.xsl"/>
    
    <!-- ======================================================================= -->
    
    <!-- make sure the conversion uses all applicable ada instances -->
    <xsl:variable name="this" as="element()*">
        <xsl:choose>
            <xsl:when test="$do-ada-files">
                <xsl:sequence select="$ada-files//adaxml/data/*"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:sequence select="//adaxml/data/*"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>
    
    <!-- == ADA Collection in original code: "ada_instance_repo/?select=*.xml" == -->
    <xsl:param name="transactionId">2.16.840.1.113883.2.4.3.11.60.131.4.3</xsl:param>
    
    <xsl:param name="do-ada-files" select="true()"/>
    
    <xsl:variable name="ada-files" select="yatcs:get-ada-files()"/>
    
    <xsl:param name="debug" as="xs:boolean?" select="true()"/>

      <!-- donkerblauw -->
    <xsl:variable name="tabelkop-achtergrond-kleur">#1F497D</xsl:variable>
    <xsl:variable name="tabelkop-font-kleur">white</xsl:variable>
    <!-- grijzig -->
    <xsl:variable name="element-achtergrond-kleur">#E3E3E3</xsl:variable>
    <xsl:variable name="elementwaarde-achtergrond-kleur">white</xsl:variable>

    <!-- bsn append string -->
    <xsl:variable name="bsnAppendString">[BSN]</xsl:variable>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <xsl:text>
__NUMBEREDHEADINGS__
{{IssueBox|Deze pagina is nog in bewerking}}
[[Bestand:Nictiz_logo_PO_rechts_rgb.png |link=https://www.nictiz.nl/|rechts|Naar nictiz.nl]]

=Addenda voor inhoudelijke gegevens=</xsl:text>
        <xsl:choose>
            <xsl:when test="$do-ada-files">
                <xsl:apply-templates select="$ada-files/adaxml/data/*" mode="wiki"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="adaxml/data/*" mode="wiki"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

 
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

 
   
  
 </xsl:stylesheet>

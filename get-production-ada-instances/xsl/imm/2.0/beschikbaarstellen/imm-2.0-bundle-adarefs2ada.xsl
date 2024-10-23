<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.fvb_v3m_hwb" exclude-result-prefixes="#all" expand-text="true">
  <!-- ================================================================== -->
  <!-- 
       This is the stylesheet with generic code for bglz/3.1/beschikbaarstellen_met_references adarefs2ada builds.
       
       Input is the ADA document to transform. 
       It then takes a working set of ADA documents (passed in as parameter $adaWorkingSet) and transforms these, using 
       information from the input document.
       
       The output is a sequence of secondary documents (using <xsl:result-document>). The actual stylesheet output can be discarded.
    -->
  <!-- ======================================================================= -->
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
  <!-- ======================================================================= -->
  <!-- SETUP: -->

  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

  <xsl:strip-space elements="*"/>

  <xsl:include href="../../../../../../YATC-shared/xslmod/general.mod.xsl"/>
  <xsl:include href="../../../../../../YATC-shared/xslmod/href.mod.xsl"/>

  <xsl:param name="ada-input" as="document-node()" required="false" select="/">
    <!-- The document to process, defined as a parameter, so we can (re-)define/override it in imported stylesheets. -->
  </xsl:param>

  <!-- ================================================================== -->
  <!-- PARAMETERS: -->

  <xsl:include href="../../../../xslmod/adarefs2ada-build-standard-parameters.mod.xsl"/>

  <!-- ======================================================================= -->
  <!-- GLOBAL DECLARATIONS: -->

  <xsl:variable name="inputFulladaFiles" as="document-node()*" select="yatcs:get-ada-files()">
    <!-- the input ada instances which contain the full patient/ma/vv which are referenced in $ada-input -->
  </xsl:variable>

  <!-- Creates a single instance of bundle containing all adaxml nodes -->
  <xsl:template match="/">
    
    <xsl:variable name="allInstances" select="$inputFulladaFiles/descendant-or-self::adaxml"/>
    <xsl:variable name="outputFilename" as="xs:string" select="concat('bundel-', tokenize($outputDirectory, '_')[last()], '.xml')"/>
    <xsl:result-document href="{yatcs:href-concat(($outputDirectory, $outputFilename))}">
      <bundle count="{count($allInstances)}">
        <xsl:sequence select="$allInstances"/>
      </bundle>
    </xsl:result-document>
    
  </xsl:template>
</xsl:stylesheet>

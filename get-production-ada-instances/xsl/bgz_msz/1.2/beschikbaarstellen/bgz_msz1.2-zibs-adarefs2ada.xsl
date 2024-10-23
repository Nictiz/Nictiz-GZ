<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.fvb_v3m_hwb" exclude-result-prefixes="#all" expand-text="true">
  <!-- ================================================================== -->
  <!-- 
       This is the stylesheet with generic code for bgz-msz/1.2/beschikbaarstellen_met_references adarefs2ada builds.
       
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

  <xsl:variable name="bsnPatA" as="xs:string">999999151</xsl:variable>
  <xsl:variable name="bsnPatB" as="xs:string+" select="('999900092', '999900560')"/>
  <xsl:variable name="gpPatA" as="xs:string">10000001</xsl:variable>
  <xsl:variable name="gpPatB" as="xs:string">00131313</xsl:variable>

  <xsl:template match="/">
    
    
    <xsl:if test="/adaxml/data/patient_registration/patient">
      <!-- Variable resolved-ada-input which contains gegevens type transaction (with full patient and other stuff) 
                 rather than the references type transaction (with only identifiers for those-->
      <xsl:variable name="selfRef" select="/adaxml/data/patient_registration/concat(@id, '#', patient/@id)"/>
      <xsl:variable name="otherInstances" select="$inputFulladaFiles//data/*/*[hcimroot/subject/patient/patient[@value = $selfRef]]"/>
      <xsl:variable name="resolved-ada-input" as="node()*">
        <xsl:for-each select="/adaxml/data/patient_registration/patient">
          <xsl:variable name="patientId" select="concat(../@id, '#', @id)"/>
          <xsl:variable name="patientName" select="local:get-patient-name(.)"/>
          <xsl:variable name="gpPractitioner" select="$inputFulladaFiles//health_professional" as="element()*"/>
          <xsl:variable name="contactPerson" select="$inputFulladaFiles//contact[hcimroot/subject/patient/patient/@value = $patientId]" as="element()*"/>
          
          <xsl:apply-templates select="." mode="copy-for-resolve-internal">
            <xsl:with-param name="skipPatient" select="true()" as="xs:boolean" tunnel="yes"/>
          </xsl:apply-templates>
          <xsl:choose>
            <xsl:when test="$patientName = 'patA' and not($otherInstances[health_professional_identification_number/@value = $gpPatA])">
              <xsl:apply-templates select="$gpPractitioner[health_professional_identification_number/@value = $gpPatA]" mode="copy-for-resolve-internal">
                <xsl:with-param name="skipPatient" select="false()"/>
              </xsl:apply-templates>
            </xsl:when>
            <xsl:when test="$patientName = 'patB' and not($otherInstances[health_professional_identification_number/@value = $gpPatB])">
              <xsl:apply-templates select="$gpPractitioner[health_professional_identification_number/@value = $gpPatB]" mode="copy-for-resolve-internal">
                <xsl:with-param name="skipPatient" select="false()"/>
              </xsl:apply-templates>
            </xsl:when>
          </xsl:choose>
          <xsl:apply-templates select="$contactPerson" mode="copy-for-resolve-internal">
            <xsl:with-param name="skipPatient" select="true()" as="xs:boolean" tunnel="yes"/>
          </xsl:apply-templates>
        </xsl:for-each>
        
        <xsl:for-each select="$otherInstances[not(local-name() = 'marital_status_rc')][not(self::contact)][not(health_professional_identification_number/@value = ($gpPatA, $gpPatB))]">
          <xsl:sort select="local-name() || @id"/>
          <xsl:apply-templates select="." mode="copy-for-resolve-internal">
            <xsl:with-param name="skipPatient" select="false()"/>
          </xsl:apply-templates>
        </xsl:for-each>
      </xsl:variable>
      <!-- Write the result: -->
      <xsl:variable name="outputFilename" as="xs:string" select="concat(/adaxml/data/patient_registration/@id, '-bundle.xml')"/>
      <xsl:result-document href="{yatcs:href-concat(($outputDirectory, $outputFilename))}">
        <bundle count="{count($resolved-ada-input)}">
          <xsl:sequence select="$resolved-ada-input"/>
        </bundle>
      </xsl:result-document>
    </xsl:if>
  </xsl:template>
  
  <xsl:function name="local:get-patient-name" as="xs:string">
    <xsl:param name="in" as="element()"/>
    
    <xsl:variable name="patientIdentifier" select="$in/patient_identification_number/@value"/>
    
    <xsl:choose>
      <xsl:when test="$patientIdentifier = $bsnPatA or contains($in/@id, 'patA')">patA</xsl:when>
      <xsl:when test="$patientIdentifier = $bsnPatB or contains($in/@id, 'patB')">patB</xsl:when>
      <xsl:otherwise>patX</xsl:otherwise>
    </xsl:choose>
  </xsl:function>
  
  <xsl:template match="*[@datatype = 'reference']" mode="copy-for-resolve">
    <xsl:variable name="theRef" select="local:resolve(.)"/>
    <xsl:choose>
      <xsl:when test="$theRef[@datatype = 'reference']">
        <!--<xsl:copy-of select="$theRef"/>-->
      </xsl:when>
      <xsl:otherwise>
        <xsl:copy-of select="$theRef"/>
        <xsl:apply-templates select="$theRef" mode="copy-for-resolve"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="node() | @*" mode="copy-for-resolve">
    <xsl:apply-templates select="node() | @*" mode="copy-for-resolve"/>
  </xsl:template>

  <xsl:template match="patient_registration/patient" mode="copy-for-resolve-internal">
    <xsl:param name="skipPatient" select="false()" tunnel="yes"/>
    
    <xsl:copy>
      <xsl:apply-templates select="@*" mode="copy-for-resolve-internal">
        <xsl:with-param name="skipPatient" select="$skipPatient"/>
      </xsl:apply-templates>
      <xsl:variable name="selfRef" select="concat(../@id, '#', @id)"/>
      <xsl:copy-of select="$inputFulladaFiles//marital_status[ancestor::marital_status_rc/hcimroot/subject/patient/patient/@value = $selfRef]"/>
      <xsl:apply-templates select="node()" mode="copy-for-resolve-internal">
        <xsl:with-param name="skipPatient" select="$skipPatient"/>
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="contact/hcimroot/subject" mode="copy-for-resolve-internal">
    <!--<xsl:param name="skipPatient" select="false()" tunnel="yes"/>
    <xsl:choose>
      <xsl:when test="$skipPatient"/>
      <xsl:otherwise>
        <xsl:copy>
          <xsl:apply-templates select="node() | @*" mode="copy-for-resolve-internal">
            <xsl:with-param name="skipPatient" select="$skipPatient"/>
          </xsl:apply-templates>
        </xsl:copy>
      </xsl:otherwise>
    </xsl:choose>-->
  </xsl:template>
  
  <!-- The main reason for skipping the patient reference is under a contact(person). after resolving the contact 
    into the patient bundle, this reference leads to issues in the 2_fhir logic. Skipping it solves that -->
  <xsl:template match="*[@datatype = 'reference']" mode="copy-for-resolve-internal">
    <xsl:param name="skipPatient" select="false()" tunnel="yes"/>
    <xsl:variable name="theRef" select="local:resolve(.)"/>
    <xsl:choose>
      <xsl:when test="$theRef[@datatype = 'reference']">
        <xsl:copy-of select="$theRef"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="$theRef" mode="copy-for-resolve-internal">
          <xsl:with-param name="skipPatient" select="$skipPatient"/>
        </xsl:apply-templates>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="node() | @*" mode="copy-for-resolve-internal">
    <xsl:param name="skipPatient" select="false()" tunnel="yes"/>
    <xsl:copy>
      <xsl:apply-templates select="node() | @*" mode="copy-for-resolve-internal">
        <xsl:with-param name="skipPatient" select="$skipPatient"/>
      </xsl:apply-templates>
    </xsl:copy>
  </xsl:template>

  <xsl:function name="local:resolve">
    <xsl:param name="in" as="element()?"/>
    <xsl:if test="$in">
      <xsl:choose>
        <!-- internal reference -->
        <xsl:when test="starts-with($in/@value, '#')">
          <xsl:try>
            <xsl:variable name="theTarget" select="$in/ancestor::document-node()//*[@id = $in/@value]" as="element()"/>
            <xsl:copy-of select="$theTarget"/>
            <xsl:catch>
              <xsl:message>ERROR: Could not resolve internal reference <xsl:value-of select="$in/@value"/></xsl:message>
              <xsl:copy-of select="$in"/>
            </xsl:catch>
          </xsl:try>
        </xsl:when>
        <!-- external file reference -->
        <xsl:when test="contains($in/@value, '#')">
          <xsl:try>
            <xsl:variable name="theTarget" select="$inputFulladaFiles//data/*[@id = normalize-space(substring-before($in/@value, '#'))]/*[@id = normalize-space(substring-after($in/@value, '#'))]" as="element()"/>
            <xsl:copy-of select="$theTarget"/>
            <xsl:catch>
              <xsl:message>ERROR: Could not resolve external reference <xsl:value-of select="$in/@value"/></xsl:message>
              <xsl:copy-of select="$in"/>
            </xsl:catch>
          </xsl:try>
        </xsl:when>
        <!-- not a reference? -->
        <xsl:otherwise>
          <xsl:copy-of select="$in"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:function>
</xsl:stylesheet>

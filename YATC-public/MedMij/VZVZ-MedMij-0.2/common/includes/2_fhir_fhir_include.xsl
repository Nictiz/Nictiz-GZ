<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/YATC-internal/ada-2-fhir/env/fhir/2_fhir_fhir_include.xsl"?>
<?yatc-distribution-info name="VZVZ-MedMij" timestamp="2024-02-06T09:13:30.86+01:00" version="0.2"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/YATC-internal/ada-2-fhir/env/fhir/2_fhir_fhir_include.xsl == -->
<!-- == Distribution: VZVZ-MedMij; 0.2; 2024-02-06T09:13:30.86+01:00 == -->
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
   <!-- import because we want to be able to override the param for macAddress -->
   <!-- pass an appropriate macAddress to ensure uniqueness of the UUID -->
   <!-- 02-00-00-00-00-00 may not be used in a production situation -->
   <xsl:import href="uuid-d4e37.xsl"/>
   <xsl:import href="datetime-d4e38.xsl"/>
   <xsl:import href="units-d4e39.xsl"/>
   <xsl:import href="constants-d4e40.xsl"/>
   <!--    <xsl:import href="../../util/utilities.xsl"/>-->
   <xsl:import href="NarrativeGenerator.xsl"/>
   <xsl:output method="xml"
               indent="yes"
               exclude-result-prefixes="#all"/>
   <xsl:strip-space elements="*"/>
   <xsl:param name="referById"
              as="xs:boolean"
              select="false()"/>
   <!-- This is a required parameter and matches the [base] of a FHIR server. Expects *not* to end in / so we can make fullUrls like ${baseUrl}/Observation/[id] -->
   <xsl:param name="baseUrl"
              as="xs:string?"/>
   <!-- pass an appropriate macAddress to ensure uniqueness of the UUID -->
   <!-- 02-00-00-00-00-00 may not be used in a production situation -->
   <xsl:param name="macAddress">02-00-00-00-00-00</xsl:param>
   <xsl:param name="dateT"
              as="xs:date?"/>
   <!-- use case acronym to be added in resource.id -->
   <xsl:param name="usecase"
              as="xs:string?"/>
   <xsl:param name="patientTokensXml"
              select="document('../fhir/QualificationTokens.xml')"/>
   <xsl:param name="mask-ids"
              as="xs:string?"/>
   <xsl:variable name="mask-ids-var"
                 select="tokenize($mask-ids, ',')"
                 as="xs:string*"/>
   <!-- FHIR Utility Functions -->
   <!-- ================================================================== -->
   <xsl:template name="any-to-value">
      <!-- Returns an array of FHIR elements based on an array of ADA that a @datatype attribute to determine the type with. After the type is determined, the element is handed off for further processing. Failure to determine type is a fatal error.
            Supported values for @datatype are ADA/DECOR datatypes boolean, code, identifier, quantity, string, text, blob, date, datetime
            FIXME: ‘ordinal’, ‘ratio' support
         -->
      <xsl:param name="in"
                 select="."
                 as="element()*">
         <!-- Optional. Array of elements to process. If empty array, then no output is created. -->
      </xsl:param>
      <xsl:param name="elemName"
                 as="xs:string"
                 required="yes">
         <!-- Required. Base name of the FHIR element to produce. Gets postfixed with datatype, e.g. valueBoolean -->
      </xsl:param>
      <xsl:for-each select="$in">
         <xsl:variable name="theDatatype"
                       select="@datatype"/>
         <xsl:choose>
            <xsl:when test="$theDatatype = 'code' or @code">
               <xsl:element name="{concat($elemName, 'CodeableConcept')}"
                            namespace="http://hl7.org/fhir">
                  <xsl:call-template name="code-to-CodeableConcept">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$theDatatype = 'identifier' or @root">
               <xsl:element name="{concat($elemName, 'Identifier')}"
                            namespace="http://hl7.org/fhir">
                  <xsl:call-template name="id-to-Identifier">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </xsl:element>
            </xsl:when>
            <!-- Observation//value does not do valueDecimal, hence quantity without unit -->
            <xsl:when test="$theDatatype = ('quantity', 'duration', 'currency', 'decimal', 'integer') or @unit">
               <xsl:element name="{concat($elemName, 'Quantity')}"
                            namespace="http://hl7.org/fhir">
                  <xsl:call-template name="hoeveelheid-to-Quantity">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$theDatatype = 'boolean' or @value castable as xs:boolean">
               <xsl:element name="{concat($elemName, 'Boolean')}"
                            namespace="http://hl7.org/fhir">
                  <xsl:call-template name="boolean-to-boolean">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$theDatatype = ('date', 'datetime') or @value castable as xs:date or @value castable as xs:dateTime">
               <xsl:element name="{concat($elemName, 'DateTime')}"
                            namespace="http://hl7.org/fhir">
                  <xsl:call-template name="date-to-datetime">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$theDatatype = 'blob' and (not(@value) or @value castable as xs:base64Binary)">
               <xsl:element name="{concat($elemName, 'Attachment')}"
                            namespace="http://hl7.org/fhir">
                  <xsl:call-template name="blob-to-attachment">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </xsl:element>
            </xsl:when>
            <xsl:when test="$theDatatype = ('string', 'text') or not($theDatatype)">
               <xsl:element name="{concat($elemName, 'String')}"
                            namespace="http://hl7.org/fhir">
                  <xsl:call-template name="string-to-string">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </xsl:element>
            </xsl:when>
            <xsl:otherwise>
               <xsl:call-template name="util:logMessage">
                  <xsl:with-param name="level"
                                  select="$logFATAL"/>
                  <xsl:with-param name="msg">Cannot determine the datatype based on @datatype, or value not supported: 
<xsl:value-of select="$theDatatype"/>
                  </xsl:with-param>
                  <xsl:with-param name="terminate"
                                  select="true()"/>
               </xsl:call-template>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:for-each>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="boolean-to-boolean"
                 as="item()?">
      <!-- Transforms ada boolean element to FHIR @value -->
      <xsl:param name="in"
                 as="element()?"
                 select=".">
         <!-- the ada boolean element, may have any name but should have ada datatype boolean -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$in/@value">
            <!-- we do not terminate: garbage in / garbage out -->
            <xsl:if test="$in/@value[not(. = ('true', 'false'))]">
               <xsl:call-template name="util:logMessage">
                  <xsl:with-param name="msg">ERROR: Message contains illegal boolean value. Expected 'true' or 'false'. Found: "
<xsl:value-of select="$in/@value"/>" </xsl:with-param>
                  <xsl:with-param name="level"
                                  select="$logERROR"/>
               </xsl:call-template>
            </xsl:if>
            <xsl:attribute name="value"
                           select="$in/@value"/>
         </xsl:when>
         <xsl:when test="$in/@nullFlavor">
            <extension url="{$urlExtHL7NullFlavor}">
               <valueCode value="{$in/@nullFlavor}"/>
            </extension>
         </xsl:when>
      </xsl:choose>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="string-to-string"
                 as="item()?">
      <!-- Transforms ada string element to FHIR @value -->
      <xsl:param name="in"
                 as="element()?"
                 select=".">
         <!-- the ada string element, may have any name but should have ada datatype string -->
      </xsl:param>
      <xsl:param name="inAttributeName"
                 as="xs:string"
                 select="'value'">
         <!-- name of the attribute to use as input (as string), optional, defaults to 'value' -->
      </xsl:param>
      <xsl:variable name="inNoLeadTrailSpace"
                    select="replace($in/@*[local-name() = $inAttributeName], '(^\s+)|(\s+$)', '')"/>
      <xsl:choose>
         <xsl:when test="string-length($inNoLeadTrailSpace) gt 0">
            <xsl:attribute name="value"
                           select="$inNoLeadTrailSpace"/>
         </xsl:when>
         <xsl:when test="$in/@nullFlavor">
            <extension url="{$urlExtHL7NullFlavor}">
               <valueCode value="{$in/@nullFlavor}"/>
            </extension>
         </xsl:when>
         <xsl:otherwise>
            <!-- value attribute may not be empty in FHIR, but it really is empty, let's stick a nbsp in it ;-) -->
            <xsl:attribute name="value"
                           select="' '"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="date-to-datetime"
                 as="item()?">
      <!-- Transforms ada string element to FHIR @value -->
      <xsl:param name="in"
                 as="element()?"
                 select=".">
         <!-- the ada date(time) element, may have any name but should have ada datatype date(time) -->
      </xsl:param>
      <xsl:param name="inputDateT"
                 as="xs:date?">
         <!-- The T date (if applicable) that  is relative to -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$in/@value">
            <xsl:attribute name="value"
                           select="nf:calculate-t-date($in/@value, $inputDateT)"/>
         </xsl:when>
         <xsl:when test="$in/@nullFlavor">
            <extension url="{$oidHL7NullFlavor}">
               <valueCode value="{$in/@nullFlavor}"/>
            </extension>
         </xsl:when>
      </xsl:choose>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="blob-to-attachment"
                 as="item()?">
      <!-- Transforms ada blob element to FHIR data/@value -->
      <xsl:param name="in"
                 as="element()?"
                 select=".">
         <!-- the ada blob element, may have any name but should have ada datatype blob -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$in/@value">
            <data value="{$in/@value}"/>
         </xsl:when>
         <xsl:when test="$in/@nullFlavor">
            <extension url="{$urlExtHL7NullFlavor}">
               <valueCode value="{$in/@nullFlavor}"/>
            </extension>
         </xsl:when>
      </xsl:choose>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="code-to-code"
                 as="attribute(value)?">
      <!-- Transforms ada code element to FHIR @value -->
      <xsl:param name="in"
                 as="element()?"
                 select=".">
         <!-- the ada code element, may have any name but should have ada datatype code -->
      </xsl:param>
      <xsl:param name="codeMap"
                 as="element()*">
         <!-- Array of map elements to be used to map input HL7v3 codes to output ADA codes if those differ. See handleCV for more documentation. Example. if you only want to translate ActStatus completed into a FHIR ObservationStatus final, this would suffice:
            <map inCode="completed" inCodeSystem="$codeSystem" code="final"/>
                to produce
                <$elemName value="final"/>
         -->
      </xsl:param>
      <xsl:for-each select="$in">
         <xsl:variable name="theCode">
            <xsl:choose>
               <xsl:when test="@code">
                  <xsl:value-of select="@code"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="@nullFlavor"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:variable name="theCodeSystem">
            <xsl:choose>
               <xsl:when test="@code">
                  <xsl:value-of select="@codeSystem"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="$oidHL7NullFlavor"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:variable name="out"
                       as="element()">
            <xsl:choose>
               <xsl:when test="$codeMap[@inCode = $theCode][@inCodeSystem = $theCodeSystem]">
                  <xsl:copy-of select="$codeMap[@inCode = $theCode][@inCodeSystem = $theCodeSystem]"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:copy-of select="."/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="value">
            <xsl:value-of select="$out/@code"/>
            <!-- In the case where codeMap if only used to add a @value for ADA, this saves having to repeat the @inCode and @inCodeSystem as @code resp. @codeSystem -->
            <xsl:if test="not($out/@code) and not(empty($theCode))">
               <xsl:value-of select="$theCode"/>
            </xsl:if>
         </xsl:attribute>
      </xsl:for-each>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="code-to-CodeableConcept"
                 as="element()*">
      <!-- Transforms ada code element to FHIR CodeableConcept contents -->
      <xsl:param name="in"
                 as="element()?"
                 select=".">
         <!-- the ada code element, may have any name but should have ada datatype code -->
      </xsl:param>
      <xsl:param name="elementName"
                 as="xs:string?"
                 select="'coding'">
         <!-- Optionally provide the element name, default = coding. In extensions it is valueCoding. -->
      </xsl:param>
      <xsl:param name="userSelected"
                 as="xs:boolean?">
         <!-- Optionally provide a user selected boolean. -->
      </xsl:param>
      <xsl:param name="treatNullFlavorAsCoding"
                 as="xs:boolean?"
                 select="false()">
         <!-- Optionally provide a boolean to treat an input NullFlavor as coding. Needed for when the nullFlavor is part of the valueSet. Defaults to false, which puts the NullFlavor in an extension. -->
      </xsl:param>
      <xsl:param name="codeMap"
                 as="element()*">
         <!-- Array of map elements to be used to map input HL7v3 codes to output ADA codes if those differ. See handleCV for more documentation. Example. if you only want to translate ActStatus completed into a FHIR ObservationStatus final, this would suffice:
            <map inCode="completed" inCodeSystem="$codeSystem" code="final"/>
                to produce
                <$elemName value="final"/>
         -->
      </xsl:param>
      <xsl:variable name="theCode">
         <xsl:choose>
            <xsl:when test="$in/@code">
               <xsl:value-of select="$in/@code"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:value-of select="$in/@nullFlavor"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="theCodeSystem">
         <xsl:choose>
            <xsl:when test="$in/@codeSystem">
               <xsl:value-of select="$in/@codeSystem"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:value-of select="$oidHL7NullFlavor"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="out"
                    as="element()">
         <xsl:choose>
            <xsl:when test="$codeMap[@inCode = $theCode][@inCodeSystem = $theCodeSystem]">
               <xsl:copy-of select="$codeMap[@inCode = $theCode][@inCodeSystem = $theCodeSystem]"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:copy-of select="$in"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="$out[@codeSystem = $oidHL7NullFlavor] and not($treatNullFlavorAsCoding)">
            <extension url="{$urlExtHL7NullFlavor}">
               <valueCode value="{$out/@code}"/>
            </extension>
         </xsl:when>
         <xsl:when test="$out[not(@codeSystem = $oidHL7NullFlavor) or $treatNullFlavorAsCoding]">
            <xsl:element name="{$elementName}"
                         namespace="http://hl7.org/fhir">
               <xsl:call-template name="code-to-Coding">
                  <xsl:with-param name="in"
                                  select="$out"/>
                  <xsl:with-param name="userSelected"
                                  select="$userSelected"/>
                  <xsl:with-param name="treatNullFlavorAsCoding"
                                  select="$treatNullFlavorAsCoding"/>
               </xsl:call-template>
            </xsl:element>
            <!--<xsl:if test="$out/@displayName">
                    <text value="{$out/@displayName}"/>
                </xsl:if>-->
            <!-- ADA heeft geen ondersteuning voor vertalingen, dus onderstaande is theoretisch -->
            <xsl:for-each select="$out/translation">
               <xsl:element name="{$elementName}"
                            namespace="http://hl7.org/fhir">
                  <xsl:call-template name="code-to-Coding">
                     <xsl:with-param name="in"
                                     select="."/>
                  </xsl:call-template>
               </xsl:element>
            </xsl:for-each>
         </xsl:when>
      </xsl:choose>
      <xsl:if test="$in[@originalText]">
         <text value="{replace($in/@originalText, '(^\s+)|(\s+$)', '')}"/>
      </xsl:if>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="code-to-Coding"
                 as="element()*">
      <!-- Transforms ada code element to FHIR Coding contents -->
      <xsl:param name="in"
                 as="element()?"
                 select=".">
         <!-- the ada code element, may have any name but should have ada datatype code -->
      </xsl:param>
      <xsl:param name="userSelected"
                 as="xs:boolean?">
         <!-- Optionally provide a user selected boolean. -->
      </xsl:param>
      <xsl:param name="treatNullFlavorAsCoding"
                 as="xs:boolean?"
                 select="false()">
         <!-- Optionally provide a boolean to treat an input NullFlavor as coding. Needed for when the nullFlavor is part of the valueSet. Defaults to false, which puts the NullFlavor in an extension. -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$in[@codeSystem = $oidHL7NullFlavor] and not($treatNullFlavorAsCoding)">
            <extension url="{$urlExtHL7NullFlavor}">
               <valueCode value="{$in/@code}"/>
            </extension>
         </xsl:when>
         <xsl:when test="$in[not(@codeSystem = $oidHL7NullFlavor) or $treatNullFlavorAsCoding]">
            <!-- system is 0..1 in FHIR, let's not output an empty string in case the codeSystem is absent -->
            <xsl:for-each select="$in/@codeSystem">
               <system value="{local:getUri(.)}"/>
            </xsl:for-each>
            <xsl:if test="$in/@codeSystemVersion">
               <version>
                  <xsl:call-template name="string-to-string">
                     <xsl:with-param name="in"
                                     select="$in"/>
                     <xsl:with-param name="inAttributeName"
                                     select="'codeSystemVersion'"/>
                  </xsl:call-template>
               </version>
            </xsl:if>
            <code value="{normalize-space($in/@code)}"/>
            <xsl:if test="$in/@displayName">
               <display>
                  <xsl:call-template name="string-to-string">
                     <xsl:with-param name="in"
                                     select="$in"/>
                     <xsl:with-param name="inAttributeName"
                                     select="'displayName'"/>
                  </xsl:call-template>
               </display>
            </xsl:if>
            <xsl:if test="exists($userSelected)">
               <userSelected value="{$userSelected}"/>
            </xsl:if>
         </xsl:when>
      </xsl:choose>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="hoeveelheid-to-Duration"
                 as="element()*">
      <!-- Transforms ada 'hoeveelheid' element to FHIR Duration -->
      <xsl:param name="in"
                 as="element()?"
                 select=".">
         <!-- the ada 'hoeveelheid' element, may have any name but should have ada datatype hoeveelheid (quantity) -->
      </xsl:param>
      <xsl:variable name="unit-UCUM"
                    select="$in/nf:convertTime_ADA_unit2UCUM_FHIR(@unit)"/>
      <xsl:choose>
         <xsl:when test="$in[@value]">
            <value value="{replace($in/@value, '(^\s+)|(\s+$)', '')}"/>
            <xsl:if test="$unit-UCUM">
               <unit value="{replace($in/@unit, '(^\s+)|(\s+$)', '')}"/>
               <system value="{local:getUri($oidUCUM)}"/>
               <code value="{$unit-UCUM}"/>
            </xsl:if>
         </xsl:when>
         <xsl:when test="$in[@nullFlavor]">
            <extension url="{$urlExtHL7NullFlavor}">
               <valueCode value="{$in/@nullFlavor}"/>
            </extension>
         </xsl:when>
      </xsl:choose>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="hoeveelheid-complex-to-Ratio"
                 as="element()*">
      <!-- Transforms ada numerator and denominator elements to FHIR Ratio -->
      <xsl:param name="numerator"
                 as="element()?">
         <!-- ada numerator element, may have any name but should have sub elements eenheid with datatype code and waarde with datatype aantal (count) -->
      </xsl:param>
      <xsl:param name="denominator"
                 as="element()?">
         <!-- ada denominator element, may have any name but should have sub elements eenheid with datatype code and waarde with datatype aantal (count) -->
      </xsl:param>
      <xsl:for-each select="$numerator">
         <numerator>
            <xsl:call-template name="hoeveelheid-complex-to-Quantity">
               <xsl:with-param name="eenheid"
                               select="./eenheid"/>
               <xsl:with-param name="waarde"
                               select="./waarde"/>
            </xsl:call-template>
         </numerator>
      </xsl:for-each>
      <xsl:for-each select="$denominator">
         <denominator>
            <xsl:call-template name="hoeveelheid-complex-to-Quantity">
               <xsl:with-param name="eenheid"
                               select="./eenheid"/>
               <xsl:with-param name="waarde"
                               select="./waarde"/>
            </xsl:call-template>
         </denominator>
      </xsl:for-each>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="hoeveelheid-to-Ratio"
                 as="element()*">
      <!-- Transform ada hoeveelheid element with a combined unit (like km/h) to FHIR Ratio. If no combined unit is used, no output is generated. -->
      <xsl:param name="in"
                 as="element()"
                 select=".">
         <!-- The element of datatype hoeveelheid to consider. -->
      </xsl:param>
      <xsl:param name="wrapIn"
                 as="xs:string"
                 select="''">
         <!-- If output is generated, wrap the result in the given element (optional). -->
      </xsl:param>
      <xsl:for-each select="$in">
         <xsl:variable name="units"
                       select="                     for $unit in tokenize(./@unit, '/')                     return                         normalize-space($unit)"/>
         <xsl:if test="count($units) = 2">
            <xsl:variable name="content"
                          as="element()*">
               <numerator>
                  <value value="{./@value}"/>
                  <unit value="{$units[1]}"/>
                  <system value="{local:getUri($oidUCUM)}"/>
                  <code value="{nf:convert_ADA_unit2UCUM_FHIR($units[1])}"/>
               </numerator>
               <denominator>
                  <value value="1"/>
                  <unit value="{$units[1]}"/>
                  <system value="{local:getUri($oidUCUM)}"/>
                  <code value="{nf:convert_ADA_unit2UCUM_FHIR($units[2])}"/>
               </denominator>
            </xsl:variable>
            <xsl:choose>
               <xsl:when test="$wrapIn != ''">
                  <xsl:element name="{$wrapIn}"
                               namespace="http://hl7.org/fhir">
                     <xsl:copy-of select="$content"/>
                  </xsl:element>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:copy-of select="$content"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:if>
      </xsl:for-each>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="hoeveelheid-to-Quantity"
                 as="element()*">
      <!-- Transforms ada element of type hoeveelheid to FHIR Quantity -->
      <xsl:param name="in"
                 as="element()?"
                 select=".">
         <!-- ada element may have any name but should have datatype aantal (count) -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$in[not(@value) or @nullFlavor]">
            <extension url="{$urlExtHL7NullFlavor}">
               <xsl:variable name="valueCode"
                             select="($in/@nullFlavor, 'NI')[1]"/>
               <valueCode value="{$valueCode}"/>
            </extension>
         </xsl:when>
         <xsl:otherwise>
            <value value="{$in/@value}"/>
            <xsl:for-each select="$in[@unit]">
               <!-- UCUM -->
               <unit value="{./@unit}"/>
               <xsl:choose>
                  <xsl:when test="$in[@datatype = 'currency']">
                     <system value="urn:iso:std:iso:4217"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <system value="{local:getUri($oidUCUM)}"/>
                  </xsl:otherwise>
               </xsl:choose>
               <code value="{nf:convert_ADA_unit2UCUM_FHIR(./@unit)}"/>
            </xsl:for-each>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="hoeveelheid-complex-to-Quantity"
                 as="element()*">
      <!-- Transforms ada waarde and eenheid elements to FHIR Quantity -->
      <xsl:param name="waarde"
                 as="element()?">
         <!-- ada element may have any name but should have datatype aantal (count) -->
      </xsl:param>
      <xsl:param name="eenheid"
                 as="element()?">
         <!-- ada element may have any name but should have datatype code -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$waarde[not(@value) or @nullFlavor]">
            <extension url="{$urlExtHL7NullFlavor}">
               <xsl:variable name="valueCode"
                             select="($waarde/@nullFlavor, 'NI')[1]"/>
               <valueCode value="{$valueCode}"/>
            </extension>
         </xsl:when>
         <xsl:otherwise>
            <value value="{$waarde/@value}"/>
            <xsl:for-each select="$eenheid[@code]">
               <xsl:for-each select="./@displayName">
                  <unit value="{replace(., '(^\s+)|(\s+$)', '')}"/>
               </xsl:for-each>
               <xsl:for-each select="./@codeSystem">
                  <system value="{local:getUri(.)}"/>
               </xsl:for-each>
               <code value="{if (@codeSystem = $oidUCUM) then nf:convert_ADA_unit2UCUM_FHIR($eenheid/@code) else $eenheid/@code}"/>
            </xsl:for-each>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="id-to-id"
                 as="element()?">
      <!-- Transforms ada element to FHIR id contents ([A-Za-z0-9\-\.]{1,64}). Masks ids, e.g. Burgerservicenummers, if their @root occurs in  -->
      <xsl:param name="in"
                 as="element()?">
         <!-- ada element with datatype identifier -->
      </xsl:param>
      <xsl:variable name="theID"
                    select="if ($in[@root = $mask-ids-var] | $in[@nullFlavor]) then () else (string-join(($in/@root, $in/@value), '-'))"/>
      <xsl:variable name="theUUID"
                    select="if ($in[@root = $mask-ids-var] | $in[@nullFlavor]) then () else ($in/@value)"/>
      <xsl:choose>
         <xsl:when test="matches($theID, '^[A-Za-z\d\.-]{1,64}$')">
            <id value="{$theID}"/>
         </xsl:when>
         <xsl:when test="matches($theUUID, $UUIDpattern)">
            <id value="{$theUUID}"/>
         </xsl:when>
      </xsl:choose>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="id-to-Identifier"
                 as="element()*">
      <!-- Transforms ada element to FHIR Identifier contents. Masks ids, e.g. Burgerservicenummers, if their @root occurs in  -->
      <xsl:param name="in"
                 as="element()?"
                 select=".">
         <!-- ada element with datatype identifier -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$in[@nullFlavor and not(string-length(@root) gt 0 and @nullFlavor = 'MSK')]">
            <extension url="{$urlExtHL7NullFlavor}">
               <valueCode value="{$in/@nullFlavor}"/>
            </extension>
         </xsl:when>
         <xsl:when test="$in[string-length(@root) gt 0][@root = $mask-ids-var] or $in[@nullFlavor = 'MSK' and string-length(@root) gt 0]">
            <system value="{local:getUri($in/@root)}"/>
            <value>
               <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
                  <valueCode value="masked"/>
               </extension>
            </value>
         </xsl:when>
         <xsl:when test="$in[@value | @root]">
            <xsl:for-each select="$in/@root">
               <system value="{local:getUri(.)}"/>
            </xsl:for-each>
            <xsl:for-each select="$in/@value">
               <value value="{replace(., '(^\s+)|(\s+$)', '')}"/>
            </xsl:for-each>
         </xsl:when>
      </xsl:choose>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="startend-to-Period"
                 as="element()*">
      <!-- Transforms ada element with zib type interval and only start and end date to FHIR Period -->
      <xsl:param name="start"
                 as="element()?">
         <!-- ada element start date (with datatype dateTime) -->
      </xsl:param>
      <xsl:param name="end"
                 as="element()?">
         <!-- ada element with end date (with datatype dateTime) -->
      </xsl:param>
      <xsl:param name="inputDateT"
                 as="xs:date?">
         <!-- The T date (if applicable) that  and/or  are relative to -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$start[@nullFlavor]">
            <start>
               <extension url="{$urlExtHL7NullFlavor}">
                  <valueCode value="{$start/@nullFlavor}"/>
               </extension>
            </start>
         </xsl:when>
         <xsl:when test="$start[@value]">
            <start>
               <xsl:attribute name="value">
                  <xsl:call-template name="format2FHIRDate">
                     <xsl:with-param name="dateTime"
                                     select="$start/@value"/>
                  </xsl:call-template>
               </xsl:attribute>
            </start>
         </xsl:when>
      </xsl:choose>
      <xsl:choose>
         <xsl:when test="$end[@nullFlavor]">
            <end>
               <extension url="{$urlExtHL7NullFlavor}">
                  <valueCode value="{$end/@nullFlavor}"/>
               </extension>
            </end>
         </xsl:when>
         <xsl:when test="$end[@value]">
            <end>
               <xsl:attribute name="value">
                  <xsl:call-template name="format2FHIRDate">
                     <xsl:with-param name="dateTime"
                                     select="$end/@value"/>
                  </xsl:call-template>
               </xsl:attribute>
            </end>
         </xsl:when>
      </xsl:choose>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="minmax-to-Range"
                 as="element()*">
      <!-- Transforms ada element to FHIR Range -->
      <xsl:param name="in"
                 as="element()?">
         <!-- ada element with sub ada elements min and max (both with datatype aantal/count) and a sibling ada element eenheid (datatype code) -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$in/min[@nullFlavor]">
            <low>
               <extension url="{$urlExtHL7NullFlavor}">
                  <valueCode value="{$in/min/@nullFlavor}"/>
               </extension>
            </low>
         </xsl:when>
         <xsl:when test="$in/min[@value]">
            <low>
               <xsl:call-template name="hoeveelheid-complex-to-Quantity">
                  <xsl:with-param name="eenheid"
                                  select="$in/../eenheid"/>
                  <xsl:with-param name="waarde"
                                  select="$in/min"/>
               </xsl:call-template>
            </low>
         </xsl:when>
      </xsl:choose>
      <xsl:choose>
         <xsl:when test="$in/max[@nullFlavor]">
            <high>
               <extension url="{$urlExtHL7NullFlavor}">
                  <valueCode value="{$in/max/@nullFlavor}"/>
               </extension>
            </high>
         </xsl:when>
         <xsl:when test="$in/max[@value]">
            <high>
               <xsl:call-template name="hoeveelheid-complex-to-Quantity">
                  <xsl:with-param name="eenheid"
                                  select="$in/../eenheid"/>
                  <xsl:with-param name="waarde"
                                  select="$in/max"/>
               </xsl:call-template>
            </high>
         </xsl:when>
      </xsl:choose>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="quotient-to-Ratio"
                 as="element()*">
      <!-- Transforms ada element numerator-aantal, -eenheid and denominator to FHIR Ratio -->
      <xsl:param name="numeratorAantal"
                 as="element()?">
         <!-- ada element of datatype aantal (count) -->
      </xsl:param>
      <xsl:param name="numeratorEenheid"
                 as="element()?">
         <!-- ada element of datatype code -->
      </xsl:param>
      <xsl:param name="denominator"
                 as="element()?">
         <!-- ada element of datatype hoeveelheid (quantity) -->
      </xsl:param>
      <xsl:if test="$numeratorAantal | $numeratorEenheid">
         <numerator>
            <xsl:call-template name="hoeveelheid-complex-to-Quantity">
               <xsl:with-param name="eenheid"
                               select="$numeratorEenheid"/>
               <xsl:with-param name="waarde"
                               select="$numeratorAantal"/>
            </xsl:call-template>
         </numerator>
      </xsl:if>
      <xsl:for-each select="$denominator">
         <denominator>
            <xsl:call-template name="hoeveelheid-to-Duration">
               <xsl:with-param name="in"
                               select="."/>
            </xsl:call-template>
         </denominator>
      </xsl:for-each>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="local:getUri"
                 as="xs:string?">
      <!-- Get the FHIR System URI based on an input OID from ada or HL7. xs:anyURI if possible, urn:oid:.. otherwise -->
      <xsl:param name="oid"
                 as="xs:string?">
         <!-- input OID from ada or HL7 -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$oidMap[@oid = $oid][@uri]">
            <xsl:value-of select="$oidMap[@oid = $oid]/@uri"/>
         </xsl:when>
         <xsl:when test="matches($oid, $OIDpattern)">
            <xsl:value-of select="concat('urn:oid:', $oid)"/>
         </xsl:when>
         <xsl:when test="matches($oid, $OIDpatternlenient)">
            <xsl:call-template name="util:logMessage">
               <xsl:with-param name="level"
                               select="$logERROR"/>
               <xsl:with-param name="msg">OID SHALL NOT have leading zeroes in its nodes: 
<xsl:value-of select="$oid"/>. This MUST be fixed in the source application before continuing.</xsl:with-param>
               <!-- Is this too strict? -->
               <xsl:with-param name="terminate"
                               select="true()"/>
            </xsl:call-template>
            <xsl:value-of select="concat('urn:oid:', $oid)"/>
         </xsl:when>
         <xsl:when test="matches($oid, $UUIDpattern)">
            <xsl:value-of select="concat('urn:uuid:', $oid)"/>
         </xsl:when>
         <xsl:when test="matches($oid, '^https?:')">
            <xsl:value-of select="$oid"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$oid"/>
            <xsl:call-template name="util:logMessage">
               <xsl:with-param name="level"
                               select="$logWARN"/>
               <xsl:with-param name="msg">local:getUri() expects an OID, but got "
<xsl:value-of select="$oid"/>"</xsl:with-param>
            </xsl:call-template>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:get-fhir-uuid"
                 as="xs:string">
      <!-- Returns a UUID with urn:uuid: preconcatenated -->
      <xsl:param name="in"
                 as="element()">
         <!-- xml element to be used to generate uuid -->
      </xsl:param>
      <xsl:value-of select="concat('urn:uuid:', uuid:get-uuid($in))"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:get-uuid"
                 as="xs:string">
      <!-- Returns a UUID -->
      <xsl:param name="in"
                 as="element()">
         <!-- xml element to be used to generate uuid -->
      </xsl:param>
      <xsl:value-of select="uuid:get-uuid($in)"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:getUriFromAdaId"
                 as="xs:string">
      <!-- If possible generates an uri based on oid or uuid from input. If not possible generates an uri based on gerenated uuid making use of input element -->
      <xsl:param name="adaIdentification"
                 as="element()">
         <!-- input element for which uri is needed -->
      </xsl:param>
      <xsl:value-of select="nf:getUriFromAdaId($adaIdentification, (), ())"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:getUriFromAdaId"
                 as="xs:string">
      <!-- Requires param adaIdentification or resourceId. If possible generates a uri based on oid or uuid from input. If not possible generates an uri based on generated uuid making use of input element -->
      <xsl:param name="adaIdentification"
                 as="element()?">
         <!-- input element for which uri is needed -->
      </xsl:param>
      <xsl:param name="resourceType"
                 as="xs:string?">
         <!-- if a resourceId was created before we should reuse that, but for that we need a baseUrl + resource type like https://myserver/fhir/Observation to create [base]/resourceId -->
      </xsl:param>
      <xsl:param name="reference"
                 as="xs:boolean?">
         <!-- If true creates a fullUrl otherwise a relative reference -->
      </xsl:param>
      <xsl:variable name="resourceId"
                    as="element(f:id)?">
         <xsl:call-template name="id-to-id">
            <xsl:with-param name="in"
                            select="$adaIdentification"/>
         </xsl:call-template>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="not($referById) and (string-length($baseUrl) gt 0 or $reference) and string-length($resourceType) gt 0 and string-length($resourceId/@value) gt 0">
            <xsl:value-of select="concat(if ($reference) then () else concat(replace($baseUrl, '/+$', '/'), '/'), $resourceType, '/', $resourceId/@value)"/>
         </xsl:when>
         <!-- root = oid and extension = numeric -->
         <xsl:when test="$adaIdentification[not(@root = $mask-ids-var)][@value][matches(@root, $OIDpattern)][matches(@value, '^\d+$')]">
            <xsl:variable name="ii"
                          select="$adaIdentification[matches(@root, $OIDpattern)][matches(@value, '^\d+$')][1]"/>
            <xsl:value-of select="concat('urn:oid:', $ii/string-join((@root, replace(@value, '^0+', '')[not(. = '')]), '.'))"/>
         </xsl:when>
         <!-- root = oid and no extension -->
         <xsl:when test="$adaIdentification[not(@root = $mask-ids-var)][@value][matches(@root, $OIDpattern)][not(@value)]">
            <xsl:variable name="ii"
                          select="$adaIdentification[matches(@root, $OIDpattern)][not(@value)][1]"/>
            <xsl:value-of select="concat('urn:oid:', $ii/string-join((@root, replace(@value, '^0+', '')[not(. = '')]), '.'))"/>
         </xsl:when>
         <!-- root = 'not important' and extension = uuid -->
         <xsl:when test="$adaIdentification[not(@root = $mask-ids-var)][@value][matches(@value, $UUIDpattern)]">
            <xsl:variable name="ii"
                          select="$adaIdentification[matches(@value, $UUIDpattern)][1]"/>
            <xsl:value-of select="concat('urn:uuid:', $ii/@value)"/>
         </xsl:when>
         <!-- root = uuid and extension = 'not important' -->
         <xsl:when test="$adaIdentification[not(@root = $mask-ids-var)][@value][matches(@root, $UUIDpattern)]">
            <xsl:variable name="ii"
                          select="$adaIdentification[matches(@root, $UUIDpattern)][1]"/>
            <xsl:value-of select="concat('urn:uuid:', $ii/@root)"/>
         </xsl:when>
         <!-- root = ? and extension = uuid -->
         <!--<xsl:when test="$adaIdentification[not(@root = $mask-ids-var)][@value][matches(@value, $UUIDpattern)]">
                <xsl:variable name="ii" select="$adaIdentification[matches(@value, $UUIDpattern)][1]"/>
                <xsl:value-of select="concat('urn:uuid:', $ii/@value)"/>
            </xsl:when>-->
         <!-- give up and do new uuid -->
         <xsl:otherwise>
            <xsl:value-of select="nf:get-fhir-uuid($adaIdentification[1])"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:removeSpecialCharacters"
                 as="xs:string?">
      <!-- Removed special characters to comply with certain rules for id's. Touchstone also does not like . (period) in fixture id. -->
      <xsl:param name="in"
                 as="xs:string?"/>
      <xsl:value-of select="replace(translate(normalize-space($in),' _àáãäåèéêëìíîïòóôõöùúûüýÿç€ßñ?','--aaaaaeeeeiiiiooooouuuuyycEsnq'), '[^A-Za-z0-9\.-]', '')"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:getUriFromAdaCode"
                 as="xs:string?">
      <!-- Generates FHIR uri based on input ada code element. OID if possible, otherwise generates uri based on generated uuid using input element. -->
      <xsl:param name="adaCode"
                 as="element()?">
         <!-- Input element for which uri is needed -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$adaCode[matches(@codeSystem, $OIDpattern)][matches(@code, '^\d+$')]">
            <!-- No leading zeroes -->
            <xsl:value-of select="concat('urn:oid:', $adaCode/string-join((@codeSystem, replace(@code, '^0+', '')), '.'))"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="nf:get-fhir-uuid($adaCode)"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:try-complex-as-Quantity"
                 as="element()*">
      <!-- Try to interpret the value of complex type in ADA as a quantity string with value and unit -->
      <xsl:param name="value_string"
                 as="xs:string?">
         <!-- The input text (like 12 mmol/l). Any comma in the value will be replaced with a dot, e.g. 1,05 will be returned as 1.05 -->
      </xsl:param>
      <xsl:analyze-string select="normalize-space($value_string)"
                          regex="^([\d\.,]+)\s*(.*)$">
         <xsl:matching-substring>
            <value value="{replace(regex-group(1), ',', '.')}"/>
            <xsl:if test="regex-group(2)">
               <unit value="{regex-group(2)}"/>
            </xsl:if>
         </xsl:matching-substring>
      </xsl:analyze-string>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="format2FHIRDate">
      <!-- Formats ada normal or relativeDate(time) or HL7 dateTime to FHIR date(Time) or Touchstone T variable string based on input precision and dateT -->
      <xsl:param name="dateTime"
                 as="xs:string?">
         <!-- Input ada or HL7 date(Time) -->
      </xsl:param>
      <xsl:param name="precision">
         <!-- Determines the precision of the output. Precision of minutes outputs seconds as '00' -->
      </xsl:param>
      <xsl:param name="dateT"
                 as="xs:date?"
                 select="$dateT">
         <!-- Optional parameter. The T-date for which a relativeDate must be calculated. If not given a Touchstone like parameterised string is outputted -->
      </xsl:param>
      <xsl:variable name="picture"
                    as="xs:string?">
         <xsl:choose>
            <xsl:when test="upper-case($precision) = ('DAY', 'DAG', 'DAYS', 'DAGEN', 'D')">[Y0001]-[M01]-[D01]</xsl:when>
            <xsl:when test="upper-case($precision) = ('MINUTE', 'MINUUT', 'MINUTES', 'MINUTEN', 'MIN', 'M')">[Y0001]-[M01]-[D01]T[H01]:[m01]:00[Z]</xsl:when>
            <xsl:otherwise>[Y0001]-[M01]-[D01]T[H01]:[m01]:[s01][Z]</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="normalize-space($dateTime) castable as xs:dateTime">
            <xsl:value-of select="format-dateTime(xs:dateTime(nf:add-Amsterdam-timezone-to-dateTimeString(normalize-space($dateTime))), $picture)"/>
         </xsl:when>
         <xsl:when test="concat(normalize-space($dateTime), ':00') castable as xs:dateTime">
            <xsl:value-of select="format-dateTime(xs:dateTime(nf:add-Amsterdam-timezone-to-dateTimeString(concat(normalize-space($dateTime), ':00'))), $picture)"/>
         </xsl:when>
         <xsl:when test="normalize-space($dateTime) castable as xs:date">
            <xsl:value-of select="format-date(xs:date(normalize-space($dateTime)), '[Y0001]-[M01]-[D01]')"/>
         </xsl:when>
         <!-- there may be a relative date(time) like "T-50D{12:34:56}" in the input -->
         <xsl:when test="matches($dateTime, 'T([+\-]\d+(\.\d+)?[YMD])?')">
            <xsl:variable name="sign">
               <xsl:variable name="temp"
                             select="replace($dateTime, 'T(([+\-])?.*)?', '$2')"/>
               <xsl:choose>
                  <xsl:when test="string-length($temp) gt 0">
                     <xsl:value-of select="$temp"/>
                  </xsl:when>
                  <!-- default -->
                  <xsl:otherwise>+</xsl:otherwise>
               </xsl:choose>
            </xsl:variable>
            <xsl:variable name="amount">
               <xsl:variable name="temp"
                             select="replace($dateTime, 'T([+\-]?(\d+(\.\d+)?)?.*)?', '$2')"/>
               <xsl:choose>
                  <xsl:when test="string-length($temp) gt 0">
                     <xsl:value-of select="$temp"/>
                  </xsl:when>
                  <!-- default -->
                  <xsl:otherwise>0</xsl:otherwise>
               </xsl:choose>
            </xsl:variable>
            <xsl:variable name="yearMonthDay">
               <xsl:variable name="temp"
                             select="replace($dateTime, 'T([+\-]?(\d+(\.\d+)?)?([YMD]?).*)?', '$4')"/>
               <xsl:choose>
                  <xsl:when test="string-length($temp) gt 0">
                     <xsl:value-of select="$temp"/>
                  </xsl:when>
                  <!-- default -->
                  <xsl:otherwise>D</xsl:otherwise>
               </xsl:choose>
            </xsl:variable>
            <xsl:variable name="xsDurationString"
                          select="replace($dateTime, 'T([+\-]?(\d+(\.\d+)?)?([YMD]?).*)?', 'P$2$4')"/>
            <xsl:variable name="timePart"
                          select="replace($dateTime, 'T([+\-]?(\d+(\.\d+)?)?[YMD]?(\{(.*)\})?)?', '$5')"/>
            <xsl:variable name="time">
               <xsl:choose>
                  <xsl:when test="string-length($timePart) = 5">
                     <!-- time given in minutes, let's add 0 seconds -->
                     <xsl:value-of select="concat($timePart, ':00')"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:value-of select="$timePart"/>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:variable>
            <xsl:choose>
               <xsl:when test="$dateT castable as xs:date">
                  <xsl:variable name="newDate"
                                select="nf:calculate-t-date($dateTime, $dateT)"/>
                  <xsl:choose>
                     <xsl:when test="$newDate castable as xs:dateTime">
                        <!-- in an ada relative datetime the timezone is not permitted (or known), let's add the timezone -->
                        <xsl:value-of select="nf:add-Amsterdam-timezone-to-dateTimeString($newDate)"/>
                     </xsl:when>
                     <xsl:otherwise>
                        <xsl:value-of select="$newDate"/>
                     </xsl:otherwise>
                  </xsl:choose>
               </xsl:when>
               <xsl:otherwise>
                  <!-- output a relative date for Touchstone -->
                  <xsl:value-of select="concat('${DATE, T, ', $yearMonthDay, ', ', $sign, $amount, '}')"/>
                  <xsl:choose>
                     <xsl:when test="$time castable as xs:time">
                        <!-- we'll assume the timezone (required in FHIR) because there is no way of knowing the T-date -->
                        <xsl:value-of select="concat('T', $time, '+02:00')"/>
                     </xsl:when>
                     <xsl:when test="upper-case($precision) = ('SECOND', 'SECONDS', 'SECONDEN', 'SEC', 'S')">
                        <xsl:value-of select="'T00:00:00+02:00'"/>
                     </xsl:when>
                  </xsl:choose>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:when>
         <xsl:otherwise>
            <!-- let's try if the input is HL7 date or dateTime, should not be since input is ada -->
            <xsl:variable name="newDateTime"
                          select="replace(concat(normalize-space($dateTime), '00000000000000'), '^(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})', '$1-$2-$3T$4:$5:$6')"/>
            <xsl:variable name="newDate"
                          select="replace(normalize-space($dateTime), '^(\d{4})(\d{2})(\d{2})', '$1-$2-$3')"/>
            <xsl:choose>
               <xsl:when test="$newDateTime castable as xs:dateTime">
                  <xsl:value-of select="format-dateTime(xs:dateTime($newDateTime), $picture)"/>
               </xsl:when>
               <xsl:when test="$newDate castable as xs:date">
                  <xsl:value-of select="format-date(xs:date($newDate), '[Y0001]-[M01]-[D01]')"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="$dateTime"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template name="NullFlavor-to-DataAbsentReason"
                 as="element()?">
      <!-- Based on http://hl7.org/fhir/STU3/cm-data-absent-reason-v3.html -->
      <xsl:param name="in"
                 select="."
                 as="element()?">
         <!-- Input node with @codeSystem =  -->
      </xsl:param>
      <xsl:for-each select="$in[@codeSystem = $oidHL7NullFlavor]">
         <extension url="{$urlExtHL7DataAbsentReason}">
            <valueCode>
               <xsl:attribute name="value">
                  <xsl:choose>
                     <xsl:when test="@code = 'UNK'">unknown</xsl:when>
                     <xsl:when test="@code = 'ASKU'">asked</xsl:when>
                     <xsl:when test="@code = 'NAV'">temp</xsl:when>
                     <xsl:when test="@code = 'NASK'">not-asked</xsl:when>
                     <xsl:when test="@code = 'MSK'">masked</xsl:when>
                     <xsl:when test="@code = 'NA'">unsupported</xsl:when>
                     <xsl:otherwise>unknown</xsl:otherwise>
                  </xsl:choose>
               </xsl:attribute>
            </valueCode>
         </extension>
      </xsl:for-each>
   </xsl:template>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:getFullUrlOrId"
                 as="xs:string?">
      <xsl:param name="entry"
                 as="element(f:entry)?"/>
      <xsl:choose>
         <xsl:when test="$referById">
            <xsl:value-of select="$entry/f:resource/*/concat(local-name(), '/', f:id[1]/@value)"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="$entry/f:fullUrl/@value"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:make-fhir-logicalid"
                 as="xs:string">
      <!-- Returns a concatenated string based on input params: $prefix,$joinString,$uniqueString. Only returns a string of length max 64. 
            Because uniqueness is determined more by uniqueString than by prefix, which is probably profileName, the last 64 characters are used. -->
      <xsl:param name="prefix"
                 as="xs:string?">
         <!-- The string to start with -->
      </xsl:param>
      <xsl:param name="uniqueString"
                 as="xs:string?">
         <!-- The string to concatenate -->
      </xsl:param>
      <xsl:variable name="joinedString"
                    select="string-join(($prefix, $usecase, $uniqueString), '-')"/>
      <xsl:variable name="lengthJoinedString"
                    select="string-length($joinedString)"
                    as="xs:integer"/>
      <xsl:variable name="startingLoc"
                    as="xs:integer">
         <xsl:choose>
            <xsl:when test="$lengthJoinedString gt 64">
               <xsl:call-template name="util:logMessage">
                  <xsl:with-param name="msg">We have encountered an id (
<xsl:value-of select="$joinedString"/>) longer than 64 characters, we are truncating it, but it should be looked at.</xsl:with-param>
                  <xsl:with-param name="level"
                                  select="$logWARN"/>
                  <xsl:with-param name="terminate"
                                  select="false()"/>
               </xsl:call-template>
               <xsl:value-of select="$lengthJoinedString - 63"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:value-of select="1"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:value-of select="substring($joinedString, $startingLoc, $lengthJoinedString)"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:getGroupingKeyDefault"
                 as="xs:string?">
      <!-- If  holds a value, return the upper-cased combined string of @value/@root/@code/@codeSystem/@nullFlavor. Else return empty -->
      <xsl:param name="in"
                 as="element()?"/>
      <xsl:if test="$in">
         <xsl:value-of select="upper-case(string-join(($in//@value, $in//@root, $in//@unit, $in//@code[not(../@codeSystem = $oidHL7NullFlavor)], $in//@codeSystem[not(. = $oidHL7NullFlavor)], $in//*[@codeSystem = $oidHL7NullFlavor][@code = 'OTH']/@originalText)/normalize-space(), ''))"/>
      </xsl:if>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:getValueAttrDefault"
                 as="xs:string?">
      <!-- If  holds a value, return the upper-cased combined string of @value. Else return empty -->
      <xsl:param name="in"
                 as="element()?"/>
      <xsl:if test="$in">
         <xsl:value-of select="upper-case(string-join(($in//@value)/normalize-space(), ''))"/>
      </xsl:if>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:getGroupingKeyPatient"
                 as="xs:string?">
      <!-- If  holds a value, return the upper-cased combined string of @value/@root/@code/@codeSystem/@nullFlavor on the patient_identification_number/name_information/address_information/contact_information. Else return empty -->
      <xsl:param name="patient"
                 as="element()?"/>
      <xsl:if test="$patient">
         <!-- use all fields of patient except bsn -->
         <xsl:variable name="patientKey"
                       as="xs:string*">
            <xsl:for-each select="$patient/*[not(@root = $oidBurgerservicenummer)]">
               <xsl:value-of select="nf:getGroupingKeyDefault(.)"/>
            </xsl:for-each>
         </xsl:variable>
         <xsl:value-of select="string-join($patientKey, '')"/>
      </xsl:if>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:getGroupingKeyLaboratoryTest"
                 as="xs:string?">
      <!-- If  holds a value, return the upper-cased combined string of @value/@root/@code/@codeSystem/@nullFlavor. Else return empty -->
      <xsl:param name="in"
                 as="element()?"/>
      <xsl:if test="$in">
         <xsl:value-of select="upper-case(string-join((nf:getGroupingKeyDefault($in), $in/../kopie_indicator/@value[. = 'true']), ''))"/>
      </xsl:if>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:ada-za-id"
                 as="element()?">
      <xsl:param name="healthcareProviderIdentification"
                 as="element()*">
         <!-- ADA element containing the healthcare provider organization identification -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$healthcareProviderIdentification[@root = $oidURAOrganizations]">
            <xsl:copy-of select="$healthcareProviderIdentification[@root = $oidURAOrganizations][1]"/>
         </xsl:when>
         <xsl:when test="$healthcareProviderIdentification[@root = $oidAGB]">
            <xsl:copy-of select="$healthcareProviderIdentification[@root = $oidAGB][1]"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:copy-of select="$healthcareProviderIdentification[1]"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:ada-zvl-id"
                 as="element()?">
      <xsl:param name="healthProfessionalIdentification"
                 as="element()*">
         <!-- ADA element containing the health professional identification -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$healthProfessionalIdentification[@root = $oidUZIPersons]">
            <xsl:copy-of select="$healthProfessionalIdentification[@root = $oidUZIPersons][1]"/>
         </xsl:when>
         <xsl:when test="$healthProfessionalIdentification[@root = $oidAGB]">
            <xsl:copy-of select="$healthProfessionalIdentification[@root = $oidAGB][1]"/>
         </xsl:when>
         <xsl:when test="$healthProfessionalIdentification[@root = $oidBIGregister]">
            <xsl:copy-of select="$healthProfessionalIdentification[@root = $oidBIGregister][1]"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:copy-of select="$healthProfessionalIdentification[1]"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:ada-pat-id"
                 as="element()?">
      <xsl:param name="patientIdentification"
                 as="element()*">
         <!-- ADA element containing the patient identification -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="$patientIdentification[@root = $oidBurgerservicenummer]">
            <xsl:copy-of select="$patientIdentification[@root = $oidBurgerservicenummer][1]"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:copy-of select="$patientIdentification[1]"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:ada-resolve-reference"
                 as="element()*">
      <!-- Resolves the reference in an ada-transaction. Outputs a sequence with the resolved element. -->
      <xsl:param name="adaElement"
                 as="element()">
         <!-- The ada element which may need resolving, if not return the element, else the resolved element -->
      </xsl:param>
      <!-- The current ada-transaction element -->
      <xsl:variable name="currentAdaTransaction"
                    select="$adaElement/ancestor::*[ancestor::data[ancestor::adaxml]]"/>
      <!-- resolve the reference -->
      <xsl:choose>
         <xsl:when test="$adaElement[not(@datatype = 'reference')]">
            <xsl:sequence select="$adaElement"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:sequence select="$currentAdaTransaction//*[@id = $adaElement/@value]"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="nf:get-resourceid-from-token"
                 as="xs:string?">
      <!-- Searches for resourceid using the input ada patient in global param patientTokensXml (configuration document) and returns it when found. 
            First attempt on bsn. Second attempt on exact match familyName. Third attempt on contains familyName. Then gives up. -->
      <xsl:param name="adaPatient"
                 as="element(patient)?">
         <!-- Input ada patient -->
      </xsl:param>
      <xsl:variable name="adaBsn"
                    select="normalize-space($adaPatient/(identificatienummer | patient_identificatienummer | patient_identification_number)[@root = $oidBurgerservicenummer]/@value)"/>
      <xsl:variable name="tokenResourceId"
                    select="$patientTokensXml//*[bsn/normalize-space(text()) = $adaBsn]/resourceId"/>
      <xsl:choose>
         <xsl:when test="count($tokenResourceId) = 1">
            <xsl:value-of select="$tokenResourceId"/>
         </xsl:when>
         <xsl:when test="count($tokenResourceId) gt 1">
            <!-- more than one token on same BSN, something is really bogus in the QualificationTokens file let's report and quit here -->
            <xsl:call-template name="util:logMessage">
               <xsl:with-param name="level"
                               select="$logDEBUG"/>
               <xsl:with-param name="msg">
                  <xsl:text>Found more then one token in QualificationTokens for bsn </xsl:text>
                  <xsl:value-of select="$adaBsn"/>
                  <xsl:text>. So we will not use either of those.</xsl:text>
               </xsl:with-param>
            </xsl:call-template>
         </xsl:when>
         <xsl:otherwise>
            <!-- not found using bsn, let's try exact match on family name -->
            <xsl:variable name="adaEigenAchternaam"
                          select="upper-case(normalize-space($adaPatient//(naamgegevens[not(naamgegevens)] | name_information[not(name_information)])/geslachtsnaam/achternaam/@value))"/>
            <xsl:variable name="tokenResourceId"
                          select="($patientTokensXml//*[familyName/upper-case(normalize-space(text())) = $adaEigenAchternaam]/resourceId)"/>
            <xsl:choose>
               <xsl:when test="count($tokenResourceId) = 1">
                  <xsl:value-of select="$tokenResourceId"/>
               </xsl:when>
               <xsl:when test="count($tokenResourceId) gt 1">
                  <!-- more than one token on same last name, this is really not how it should be, let's report and quit here -->
                  <xsl:call-template name="util:logMessage">
                     <xsl:with-param name="level"
                                     select="$logDEBUG"/>
                     <xsl:with-param name="msg">
                        <xsl:text>Found more then one token in QualificationTokens for exact match on last name </xsl:text>
                        <xsl:value-of select="$adaEigenAchternaam"/>
                        <xsl:text>. So we will not use any of those.</xsl:text>
                     </xsl:with-param>
                  </xsl:call-template>
               </xsl:when>
               <xsl:otherwise>
                  <!-- not found using exact, let's try contains on family name -->
                  <xsl:variable name="tokenResourceId"
                                select="$patientTokensXml//*[contains(familyName/upper-case(normalize-space(text())), $adaEigenAchternaam)]/resourceId"/>
                  <xsl:choose>
                     <xsl:when test="count($tokenResourceId) = 1">
                        <xsl:value-of select="$tokenResourceId"/>
                     </xsl:when>
                     <xsl:when test="count($tokenResourceId) gt 1">
                        <!-- more than one token on containing last name, this can happen, but is a shame, let's report -->
                        <xsl:call-template name="util:logMessage">
                           <xsl:with-param name="level"
                                           select="$logDEBUG"/>
                           <xsl:with-param name="msg">
                              <xsl:text>Found more then one token in QualificationTokens for contains of last name </xsl:text>
                              <xsl:value-of select="$adaEigenAchternaam"/>
                              <xsl:text>. So we will not use any of those.</xsl:text>
                           </xsl:with-param>
                        </xsl:call-template>
                     </xsl:when>
                     <xsl:otherwise>
                        <!-- return nothing -->
                     </xsl:otherwise>
                  </xsl:choose>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:template match="@* | node()"
                 mode="ResultOutput">
      <!-- Default copy template for outputting the results  -->
      <xsl:copy>
         <xsl:apply-templates select="@* | node()"
                              mode="ResultOutput"/>
      </xsl:copy>
   </xsl:template>
</xsl:stylesheet>
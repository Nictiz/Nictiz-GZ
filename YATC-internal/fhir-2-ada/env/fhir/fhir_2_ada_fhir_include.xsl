<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all" version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:util="urn:hl7:utilities" xmlns:f="http://hl7.org/fhir" xmlns:nf="http://www.nictiz.nl/functions" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:local="urn:fhir:stu3:functions">
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

    <!-- moved import of util to all-zibs to prevent duplicate import warnings due to fhir use in ada-hl7v3 conversions (dosageInstructions in FHIR) -->
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>

    <!-- ================================================================== -->

    <xsl:template name="code-to-code" as="attribute()+">
        <!-- Transforms FHIR code @value to ADA code attributes -->
        <xsl:param name="value" as="xs:string" select=".">
            <!-- The FHIR @value -->
        </xsl:param>
        <xsl:param name="codeMap" as="element()*">
            <!-- Array of map elements to be used to map input FHIR codes to output ADA codes. -->
        </xsl:param>

        <xsl:variable name="out" as="element()">
            <xsl:choose>
                <!-- constants.xsl uses maps with inCode that would not work otherwise -->
                <xsl:when test="$codeMap[(@inValue, @inCode)[1] = $value]">
                    <xsl:copy-of select="$codeMap[(@inValue, @inCode)[1] = $value]"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:copy-of select="."/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <xsl:attribute name="code" select="$out/@code"/>
        <xsl:attribute name="codeSystem" select="$out/@codeSystem"/>
        <xsl:if test="$out/@displayName">
            <xsl:attribute name="displayName" select="$out/@displayName"/>
        </xsl:if>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="CodeableConcept-to-code" as="element()*">
        <!-- Transforms FHIR CodeableConcept contents to ada code element. -->
        <xsl:param name="in" as="element()?" select=".">
            <!-- the FHIR CodeableConcept element -->
        </xsl:param>
        <xsl:param name="adaElementName" as="xs:string" select="'code'">
            <!-- Optional string to provide the name for the output ada element. Default is 'code. -->
        </xsl:param>
        <xsl:param name="inElementName" as="xs:string?" select="'coding'">
            <!-- Optional string to provide the name of the child of the CodeableConcept. Default is 'coding'. -->
        </xsl:param>
        <xsl:param name="originalText" as="xs:string?">
            <!-- Optional string that needs to be mapped to an 'originalText' attribute on the output element. -->
        </xsl:param>

        <xsl:choose>
            <xsl:when test="$in/f:extension/@url = $urlExtHL7NullFlavor">
                <xsl:variable name="nullFlavorValue" select="$in/f:extension[@url = $urlExtHL7NullFlavor]/f:valueCode/@value"/>
                <xsl:variable name="nullFlavorDisplayName" select="$hl7NullFlavorMap[@hl7NullFlavor = $nullFlavorValue]/@displayName"/>
                <xsl:element name="{$adaElementName}">
                    <xsl:call-template name="Coding-to-code">
                        <xsl:with-param name="in" as="element()">
                            <f:coding>
                                <f:system value="{$oidHL7NullFlavor}"/>
                                <f:code value="{$nullFlavorValue}"/>
                                <f:display value="{$nullFlavorDisplayName}"/>
                            </f:coding>
                        </xsl:with-param>
                    </xsl:call-template>
                    <xsl:if test="string-length($originalText) gt 0">
                        <xsl:attribute name="originalText" select="$originalText"/>
                    </xsl:if>
                </xsl:element>
            </xsl:when>
            <xsl:when test="$in/f:*[local-name() = $inElementName]">
                <xsl:for-each select="$in/f:*[local-name() = $inElementName]">
                    <xsl:element name="{$adaElementName}">
                        <xsl:call-template name="Coding-to-code">
                            <xsl:with-param name="in" select="."/>
                        </xsl:call-template>
                        <xsl:if test="string-length($originalText) gt 0">
                            <xsl:attribute name="originalText" select="$originalText"/>
                        </xsl:if>
                    </xsl:element>
                </xsl:for-each>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="DataAbsentReason-to-NullFlavor" as="xs:string?">
        <!-- Based on http://hl7.org/fhir/STU3/cm-data-absent-reason-v3.html -->
        <xsl:param name="in" select="." as="element()?">
            <!-- Input FHIR node valueCode with @value -->
        </xsl:param>

        <xsl:for-each select="$in">
            <xsl:attribute name="value">
                <xsl:choose>
                    <xsl:when test="@value = 'unknown'">UNK</xsl:when>
                    <xsl:when test="@value = 'asked'">ASKU</xsl:when>
                    <xsl:when test="@value = 'temp'">NAV</xsl:when>
                    <xsl:when test="@value = 'not-asked'">NASK</xsl:when>
                    <xsl:when test="@value = 'masked'">MSK</xsl:when>
                    <xsl:when test="@value = 'unsupported'">NA</xsl:when>
                    <xsl:otherwise>UNK</xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="datetime-to-datetime">
        <!-- Transforms FHIR dateTime contents to ada date(time) element. -->
        <xsl:param name="in" as="element()?" select=".">
            <!-- the FHIR dateTime element -->
        </xsl:param>
        <xsl:param name="adaElementName" as="xs:string" select="'datum_tijd'">
            <!-- Optional string to provide the name for the output ada element. Default is datum_tijd. -->
        </xsl:param>
        <xsl:param name="adaDatatype" as="xs:string?">
            <!-- Optional string to add datatype attribute in ada element. -->
        </xsl:param>
        <xsl:for-each select="$in">
            <xsl:choose>
                <xsl:when test="not(@value) and $in/f:extension[@url = ($urlExtHL7NullFlavor, $urlExtHL7DataAbsentReason)]">
                    <xsl:variable name="nullFlavorValue">
                        <xsl:choose>
                            <xsl:when test="$in/f:extension/@url = $urlExtHL7NullFlavor">
                                <xsl:value-of select="$in/f:extension[@url = $urlExtHL7NullFlavor]/f:valueCode/@value"/>
                            </xsl:when>
                            <xsl:when test="$in/f:extension/@url = $urlExtHL7DataAbsentReason">
                                <xsl:call-template name="DataAbsentReason-to-NullFlavor">
                                    <xsl:with-param name="in" select="$in/f:extension[@url = $urlExtHL7DataAbsentReason]/f:valueCode"/>
                                </xsl:call-template>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:variable>
                    <xsl:element name="{$adaElementName}">
                        <xsl:attribute name="nullFlavor" select="$nullFlavorValue"/>
                        <xsl:if test="not(empty($adaDatatype))">
                            <xsl:attribute name="datatype" select="$adaDatatype"/>
                        </xsl:if>
                    </xsl:element>
                </xsl:when>
                <xsl:when test="@value">
                    <xsl:element name="{$adaElementName}">
                        <xsl:attribute name="value">
                            <xsl:call-template name="format2ADADate">
                                <xsl:with-param name="dateTime" select="$in/@value"/>
                            </xsl:call-template>
                        </xsl:attribute>
                        <xsl:if test="not(empty($adaDatatype))">
                            <xsl:attribute name="datatype" select="$adaDatatype"/>
                        </xsl:if>
                    </xsl:element>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="Coding-to-code" as="attribute()*">
        <!-- Transforms FHIR Coding contents to ada code element -->
        <xsl:param name="in" as="element()?" select=".">
            <!-- the FHIR Coding contents -->
        </xsl:param>

        <xsl:variable name="oid" select="local:getOid($in/f:system/@value)"/>
        <xsl:variable name="codeSystemName" select="local:getDisplayName($oid)"/>
        <xsl:if test="$in/f:code/@value">
            <xsl:attribute name="code" select="$in/f:code/@value"/>
        </xsl:if>
        <xsl:if test="$oid">
            <xsl:attribute name="codeSystem" select="$oid"/>
        </xsl:if>
        <xsl:if test="not($codeSystemName = $oid)">
            <xsl:attribute name="codeSystemName" select="$codeSystemName"/>
        </xsl:if>
        <xsl:if test="$in/f:version/@value">
            <xsl:attribute name="codeSystemVersion" select="$in/f:version/@value"/>
        </xsl:if>
        <xsl:if test="$in/f:display/@value">
            <xsl:attribute name="displayName" select="$in/f:display/@value"/>
        </xsl:if>
        <xsl:if test="$in/f:userSelected/@value">
            <xsl:attribute name="preferred" select="'true'"/>
        </xsl:if>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="Duration-to-hoeveelheid" as="element()*">
        <!-- Transforms FHIR Duration to ada hoeveelheid -->
        <xsl:param name="in" as="element()?" select=".">
            <!-- The FHIR Duration element -->
        </xsl:param>
        <xsl:param name="adaElementName" select="'tijdseenheid'">
            <!-- Optional string to provide the name of the ada output element. Default is 'tijdseenheid'. -->
        </xsl:param>
        <xsl:variable name="unit" select="nf:convertTime_UCUM_FHIR2ADA_unit($in/f:code/@value)"/>
        <xsl:choose>
            <xsl:when test="$in/f:value/@value">
                <xsl:element name="{$adaElementName}">
                    <xsl:attribute name="value" select="$in/f:value/@value"/>
                    <xsl:attribute name="unit" select="$unit"/>
                </xsl:element>
            </xsl:when>
            <xsl:when test="$in/f:extension/@url = $urlExtHL7NullFlavor">
                <xsl:element name="{$adaElementName}">
                    <xsl:attribute name="nullFlavor" select="$in/f:extension[@url = $urlExtHL7NullFlavor]/f:valueCode/@value"/>
                </xsl:element>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="Quantity-to-hoeveelheid" as="element()*">
        <!-- Transforms FHIR Quantity to ada element of type hoeveelheid -->
        <xsl:param name="adaElementName" as="xs:string" select="'hoeveelheid'">
            <!-- Optional string to provide the name of one of the ada output element. Defaults to 'hoeveelheid'. -->
        </xsl:param>
        <xsl:param name="adaDatatype" as="xs:string?">
            <!-- Optional string to add datatype attribute in ada element. -->
        </xsl:param>
        <xsl:element name="{$adaElementName}">
            <xsl:choose>
                <xsl:when test="f:extension/@url = $urlExtHL7NullFlavor">
                    <xsl:attribute name="nullFlavor" select="(f:extension[@url = $urlExtHL7NullFlavor]/f:valueCode/@value, 'NI')[1]"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="value" select="f:value/@value"/>
                    <xsl:attribute name="unit" select="f:code/@value"/>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:if test="not(empty($adaDatatype))">
                <xsl:attribute name="datatype" select="$adaDatatype"/>
            </xsl:if>
        </xsl:element>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="Quantity-to-hoeveelheid-complex" as="element()*">
        <!-- Transforms FHIR Quantity to ada waarde and eenheid elements -->
        <xsl:param name="adaWaarde">
            <!-- Optional string to provide the name of one of the ada output elements. Default (empty string) leads to 'aantal' or 'waarde' element. -->
        </xsl:param>
        <xsl:param name="adaEenheid" select="'eenheid'">
            <!-- Optional string to provide the name of one of the ada output elements. Default is 'eenheid'. -->
        </xsl:param>
        <xsl:param name="withRange" select="false()">
            <!-- Optional boolean. If true, leads to 'waarde' element having a 'vaste_waarde' child element. Default is false. -->
        </xsl:param>
        <xsl:param name="adaRangeName" select="'vaste_waarde'">
            <!-- Optional string to provide the name of the child of the 'waarde' element. Default is 'vaste_waarde' -->
        </xsl:param>
        <xsl:variable name="adaWaardeElementName">
            <xsl:choose>
                <xsl:when test="not($adaWaarde = '')">
                    <xsl:value-of select="$adaWaarde"/>
                </xsl:when>
                <xsl:when test="$withRange = true()">aantal</xsl:when>
                <xsl:otherwise>waarde</xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <xsl:element name="{$adaWaardeElementName}">
            <xsl:choose>
                <xsl:when test="$withRange = true()">
                    <xsl:choose>
                        <xsl:when test="f:extension/@url = $urlExtHL7NullFlavor">
                            <xsl:element name="{$adaRangeName}">
                                <xsl:attribute name="nullFlavor" select="(f:extension[@url = $urlExtHL7NullFlavor]/f:valueCode/@value, 'NI')[1]"/>
                            </xsl:element>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:element name="{$adaRangeName}">
                                <xsl:attribute name="value" select="f:value/@value"/>
                            </xsl:element>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="f:extension/@url = $urlExtHL7NullFlavor">
                            <xsl:attribute name="nullFlavor" select="(f:extension[@url = $urlExtHL7NullFlavor]/f:valueCode/@value, 'NI')[1]"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="value" select="f:value/@value"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:element>

        <xsl:if test="not(f:extension/@url = $urlExtHL7NullFlavor)">
            <xsl:element name="{$adaEenheid}">
                <xsl:variable name="oid" select="local:getOid(f:system/@value)"/>
                <xsl:attribute name="code" select="f:code/@value"/>
                <xsl:attribute name="codeSystem" select="$oid"/>
                <xsl:attribute name="codeSystemName" select="local:getDisplayName($oid)"/>
                <xsl:attribute name="displayName" select="f:unit/@value"/>
            </xsl:element>
        </xsl:if>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="Ratio-to-hoeveelheid-complex" as="element()*">
        <!-- Transforms FHIR Ratio to ada complex 'hoeveelheid' -->
        <xsl:param name="numeratorAdaName" as="xs:string">
            <!-- Required string to name the ada element the f:numerator Quantity gets transformed to. -->
        </xsl:param>
        <xsl:param name="denominatorAdaName" as="xs:string">
            <!-- Required string to name the ada element the f:denominator Quantity gets transformed to. -->
        </xsl:param>

        <xsl:for-each select="f:numerator">
            <xsl:element name="{$numeratorAdaName}">
                <xsl:call-template name="Quantity-to-hoeveelheid-complex"/>
            </xsl:element>
        </xsl:for-each>

        <xsl:for-each select="f:denominator">
            <xsl:element name="{$denominatorAdaName}">
                <xsl:call-template name="Quantity-to-hoeveelheid-complex"/>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="Identifier-to-identificatie" as="element()">
        <!-- Transforms FHIR Identifier to ada 'identificatie' -->
        <xsl:param name="in" select=".">
            <!-- Optional input element. Should be of type FHIR Identifier. Defaults to self (.) -->
        </xsl:param>
        <xsl:param name="adaElementName" select="'identificatie'">
            <!-- Optional string for the output ada element name. Default is 'identificatie'. -->
        </xsl:param>
        <xsl:element name="{$adaElementName}">
            <xsl:choose>
                <xsl:when test="$in/f:extension/@url = $urlExtHL7NullFlavor">
                    <xsl:attribute name="nullFlavor" select="($in/f:extension[@url = $urlExtHL7NullFlavor]/f:valueCode/@value, 'NI')[1]"/>
                </xsl:when>
                <xsl:when test="$in/f:value/f:extension/@url = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'">
                    <xsl:attribute name="nullFlavor" select="'MSK'"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="value" select="$in/f:value/@value"/>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:if test="$in/f:system/@value">
                <xsl:attribute name="root" select="local:getOid($in/f:system/@value)"/>
            </xsl:if>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="Reference-to-identificatie">
        <!-- Transforms FHIR Reference to ada 'identificatie' -->
        <xsl:param name="resourceList">
            <!-- Xpath sequence of the resource names as strings that are allowed when resolving the reference (e.g. "('MedicationUse','MedicationStatement') -->
        </xsl:param>
        <xsl:choose>
            <xsl:when test="f:reference">
                <xsl:variable name="referenceValue" select="f:reference/@value"/>
                <xsl:variable name="resource" select="ancestor::f:Bundle/f:entry[f:fullUrl/@value = $referenceValue]/f:resource/f:*[local-name() = $resourceList]"/>
                <xsl:choose>
                    <xsl:when test="$resource/f:identifier">
                        <xsl:call-template name="Identifier-to-identificatie">
                            <xsl:with-param name="in" select="$resource/f:identifier"/>
                        </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="util:logMessage">
                            <xsl:with-param name="level" select="$logERROR"/>
                            <xsl:with-param name="msg">
                                <xsl:value-of select="ancestor::f:resource/f:*/local-name()"/>
                                <xsl:text> with fullUrl '</xsl:text>
                                <xsl:value-of select="ancestor::f:resource/preceding-sibling::f:fullUrl/@value"/>
                                <xsl:text>' .</xsl:text>
                                <xsl:value-of select="parent::f:*/local-name()"/>
                                <xsl:text> reference cannot be resolved within the Bundle. Therefore information will be lost.</xsl:text>
                            </xsl:with-param>
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="f:identifier">
                <xsl:call-template name="Identifier-to-identificatie">
                    <xsl:with-param name="in" select="f:identifier"/>
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="Period-to-dates">
        <!-- Transforms FHIR Period to two ada date elements (start and eind) -->
        <xsl:param name="in" select=".">
            <!-- Optional input element. Shoulfd be FHIR Period. Defaults to self (.). -->
        </xsl:param>
        <xsl:param name="adaElementNameStart" select="'start'">
            <!-- Optional string to name the ada element where f:start is mapped to. Default is 'start'. -->
        </xsl:param>
        <xsl:param name="adaElementNameEnd" select="'eind'">
            <!-- Optional string to name the ada element where f:end is mapped to. Default is 'eind'. -->
        </xsl:param>
        <xsl:param name="adaDatatype" as="xs:string?">
            <!-- Optional string to add datatype attribute in ada element. -->
        </xsl:param>
        <xsl:for-each select="$in/f:start">
            <xsl:element name="{$adaElementNameStart}">
                <xsl:attribute name="value">
                    <xsl:call-template name="format2ADADate">
                        <xsl:with-param name="dateTime" select="@value"/>
                    </xsl:call-template>
                </xsl:attribute>
                <xsl:if test="not(empty($adaDatatype))">
                    <xsl:attribute name="datatype" select="$adaDatatype"/>
                </xsl:if>
            </xsl:element>
        </xsl:for-each>
        <xsl:for-each select="$in/f:end">
            <xsl:element name="{$adaElementNameEnd}">
                <xsl:attribute name="value">
                    <xsl:call-template name="format2ADADate">
                        <xsl:with-param name="dateTime" select="@value"/>
                    </xsl:call-template>
                </xsl:attribute>
                <xsl:if test="not(empty($adaDatatype))">
                    <xsl:attribute name="datatype" select="$adaDatatype"/>
                </xsl:if>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="Range-to-minmax" as="element()*">
        <!-- Transforms FHIR Range to ada 'aantal' element with 'min' and 'max' children and 'eenheid' sibling. -->
        <xsl:param name="in" as="element()?" select=".">
            <!-- Optional input element. Should be FHIR Range with f:low and f:high children. Defaults to self (.). -->
        </xsl:param>

        <xsl:variable name="intermediate">
            <xsl:for-each select="(f:low | f:high)">
                <xsl:variable name="adaWaarde">
                    <xsl:choose>
                        <xsl:when test="self::f:low">min</xsl:when>
                        <xsl:when test="self::f:high">max</xsl:when>
                    </xsl:choose>
                </xsl:variable>
                <xsl:call-template name="Quantity-to-hoeveelheid-complex">
                    <xsl:with-param name="withRange" select="true()"/>
                    <xsl:with-param name="adaRangeName">
                        <xsl:choose>
                            <xsl:when test="self::f:low">min</xsl:when>
                            <xsl:when test="self::f:high">max</xsl:when>
                        </xsl:choose>
                    </xsl:with-param>
                </xsl:call-template>
            </xsl:for-each>
        </xsl:variable>

        <xsl:if test="$intermediate/aantal">
            <aantal>
                <xsl:copy-of select="$intermediate/aantal/*"/>
            </aantal>
        </xsl:if>
        <xsl:for-each-group select="$intermediate/eenheid" group-by="concat(@code, '|', @codeSystem, '|', @dislayName)">
            <xsl:copy-of select="current-group()[1]"/>
        </xsl:for-each-group>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="Ratio-to-quotient" as="element()*">
        <!-- Transforms FHIR Ratio to ada element aantal, eenheid and tijdseenheid -->
        <xsl:param name="in" select=".">
            <!-- Optional input element. Should be FHIR Ratio with f:numerator and f:denominator children. Defaults to self (.). -->
        </xsl:param>
        <xsl:param name="withRange" select="false()">
            <!-- Gives ada 'aantal' output a 'vaste_waarde' child to make it a range. -->
        </xsl:param>
        <xsl:param name="adaWaarde" select="'aantal'">
            <!-- Name of ada output element. Defaults to 'aantal' -->
        </xsl:param>

        <xsl:for-each select="$in/f:numerator">
            <xsl:call-template name="Quantity-to-hoeveelheid-complex">
                <xsl:with-param name="adaWaarde" select="$adaWaarde"/>
                <xsl:with-param name="withRange" select="$withRange"/>
            </xsl:call-template>
        </xsl:for-each>
        <xsl:for-each select="$in/f:denominator">
            <xsl:call-template name="Duration-to-hoeveelheid"/>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="boolean-to-boolean" as="attribute()*">
        <!-- Transforms FHIR boolean @value to ada boolean element -->
        <xsl:param name="in" as="element()?" select=".">
            <!-- the FHIR boolean element. Defaults to self (.). -->
        </xsl:param>
        <xsl:choose>
            <xsl:when test="$in/f:extension/@url = $urlExtHL7NullFlavor">
                <xsl:attribute name="nullFlavor" select="f:extension[@url = $urlExtHL7NullFlavor]/f:valueCode/@value"/>
            </xsl:when>
            <xsl:when test="$in/@value">
                <xsl:attribute name="value" select="$in/@value"/>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="format2ADADate">
        <!-- Formats FHIR date(Time) or ada normal or relativeDate(time) based on input precision -->
        <xsl:param name="dateTime" as="xs:string?">
            <!-- Input FHIR date(Time) -->
        </xsl:param>
        <xsl:param name="precision" select="'second'">
            <!-- Determines the precision of the output. Precision of minutes outputs seconds as '00' -->
        </xsl:param>
        <xsl:param name="dateT" as="xs:date?">
            <!-- Optional parameter. The T-date for which a relativeDate must be calculated. If not given a Touchstone like parameterised string is outputted -->
        </xsl:param>
        <xsl:variable name="picture" as="xs:string?">
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
            <!-- there may be a relative date(time) like "${DATE, T, D, -20}T12:34:45+02:00" in the input -->
            <xsl:when test="matches($dateTime, '\$\{DATE, T, [YMD], ([+\-]\d+(\.\d+)?)\}')">
                <xsl:variable name="sign">
                    <xsl:variable name="temp" select="replace($dateTime, '\$\{DATE, T, [YMD], (([+\-])\d+(\.\d+)?)\}.*', '$2')"/>
                    <xsl:choose>
                        <xsl:when test="string-length($temp) gt 0">
                            <xsl:value-of select="$temp"/>
                        </xsl:when>
                        <!-- default -->
                        <xsl:otherwise>+</xsl:otherwise>
                    </xsl:choose>
                </xsl:variable>
                <xsl:variable name="amount">
                    <xsl:variable name="temp" select="replace($dateTime, '\$\{DATE, T, [YMD], ([+\-](\d+(\.\d+)?))\}.*', '$2')"/>
                    <xsl:choose>
                        <xsl:when test="string-length($temp) gt 0">
                            <xsl:value-of select="$temp"/>
                        </xsl:when>
                        <!-- default -->
                        <xsl:otherwise>0</xsl:otherwise>
                    </xsl:choose>
                </xsl:variable>
                <xsl:variable name="yearMonthDay">
                    <xsl:variable name="temp" select="replace($dateTime, '\$\{DATE, T, ([YMD]), ([+\-](\d+(\.\d+)?))\}.*', '$1')"/>
                    <xsl:choose>
                        <xsl:when test="string-length($temp) gt 0">
                            <xsl:value-of select="$temp"/>
                        </xsl:when>
                        <!-- default -->
                        <xsl:otherwise>D</xsl:otherwise>
                    </xsl:choose>
                </xsl:variable>
                <xsl:variable name="timePart" select="replace($dateTime, '\$\{DATE, T, ([YMD]), ([+\-](\d+(\.\d+)?))\}T(.+)[+\-].*', '$5')"/>
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
                        <xsl:variable name="newDate" select="nf:calculate-t-date($dateTime, $dateT)"/>
                        <xsl:choose>
                            <xsl:when test="$newDate castable as xs:dateTime">
                                <!-- in an ada relative datetime the timezone is not permitted (or known), let's add the timezon -->
                                <xsl:value-of select="nf:add-Amsterdam-timezone-to-dateTimeString($newDate)"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="$newDate"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="concat('T', $sign, $amount, $yearMonthDay)"/>
                        <xsl:if test="$time castable as xs:time">
                            <!-- Neglects timezone. Impact? -->
                            <xsl:value-of select="concat('{', $time, '}')"/>
                        </xsl:if>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <!-- let's try if the input is HL7 date or dateTime, should not be since input is ada -->
                <xsl:variable name="newDateTime" select="replace(concat(normalize-space($dateTime), '00000000000000'), '^(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})', '$1-$2-$3T$4:$5:$6')"/>
                <xsl:variable name="newDate" select="replace(normalize-space($dateTime), '^(\d{4})(\d{2})(\d{2})', '$1-$2-$3')"/>
                <xsl:choose>
                    <xsl:when test="$newDateTime castable as xs:dateTime">
                        <xsl:value-of select="format-dateTime(xs:dateTime($newDateTime), $picture)"/>
                    </xsl:when>
                    <xsl:when test="$newDate castable as xs:date">
                        <xsl:value-of select="format-date(xs:date($newDateTime), '[Y0001]-[M01]-[D01]')"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$dateTime"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:getOid" as="xs:string?">
        <!-- Get the ada OID from FHIR System URI -->
        <xsl:param name="uri" as="xs:string?">
            <!-- input FHIR System URI -->
        </xsl:param>
        <xsl:choose>
            <xsl:when test="$oidMap[@uri = $uri][@oid]">
                <xsl:value-of select="$oidMap[@uri = $uri]/@oid"/>
            </xsl:when>
            <xsl:when test="starts-with($uri, 'urn:oid:')">
                <xsl:value-of select="substring-after($uri, 'urn:oid:')"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$uri"/>
                <xsl:call-template name="util:logMessage">
                    <xsl:with-param name="level" select="$logWARN"/>
                    <xsl:with-param name="msg">local:getOid() expects a FHIR System URI, but got "<xsl:value-of select="$uri"/>"</xsl:with-param>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:getDisplayName" as="xs:string?">
        <!-- Get the ada displayName from input OID -->
        <xsl:param name="oid" as="xs:string?">
            <!-- input OID from ada -->
        </xsl:param>
        <xsl:choose>
            <xsl:when test="$oidMap[@oid = $oid][@displayName]">
                <xsl:value-of select="$oidMap[@oid = $oid]/@displayName"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$oid"/>
                <xsl:call-template name="util:logMessage">
                    <xsl:with-param name="level" select="$logWARN"/>
                    <xsl:with-param name="msg">local:getDisplayName() expects an OID, but got "<xsl:value-of select="$oid"/>" OR cannot find the matching displayName</xsl:with-param>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:convertTime_UCUM_FHIR2ADA_unit" as="xs:string?">
        <!-- Converts an UCUM unit as used in FHIR to ada time unit -->
        <xsl:param name="UCUMFHIR" as="xs:string?">
            <!-- The UCUM unit string -->
        </xsl:param>
        <xsl:if test="$UCUMFHIR">
            <xsl:choose>
                <xsl:when test="$UCUMFHIR = 's'">
                    <xsl:value-of select="$ada-unit-second[1]"/>
                </xsl:when>
                <xsl:when test="$UCUMFHIR = 'min'">
                    <xsl:value-of select="$ada-unit-minute[1]"/>
                </xsl:when>
                <xsl:when test="$UCUMFHIR = 'h'">
                    <xsl:value-of select="$ada-unit-hour[1]"/>
                </xsl:when>
                <xsl:when test="$UCUMFHIR = 'd'">
                    <xsl:value-of select="$ada-unit-day[1]"/>
                </xsl:when>
                <xsl:when test="$UCUMFHIR = 'wk'">
                    <xsl:value-of select="$ada-unit-week[1]"/>
                </xsl:when>
                <xsl:when test="$UCUMFHIR = 'mo'">
                    <xsl:value-of select="$ada-unit-month[1]"/>
                </xsl:when>
                <xsl:when test="$UCUMFHIR = 'a'">
                    <xsl:value-of select="$ada-unit-year[1]"/>
                </xsl:when>
                <!--<xsl:otherwise>
                    <!-\- If all else fails: wrap in {} to make it an annotation -\->
                    <xsl:value-of select="concat('{', $ADAtime, '}')"/>
                </xsl:otherwise>-->
            </xsl:choose>
        </xsl:if>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="comment()"><!-- Remove comments --></xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="text()"><!-- Remove unhandled text nodes --></xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="f:*" mode="#all">
        <!-- Remove unhandled nodes -->
        <xsl:comment>Unhandled FHIR node: f:<xsl:value-of select="local-name()"/></xsl:comment>
    </xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet exclude-result-prefixes="#all" version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="urn:hl7-org:v3" xmlns:hl7="urn:hl7-org:v3" xmlns:util="urn:hl7:utilities" xmlns:sdtc="urn:hl7-org:sdtc" xmlns:nf="http://www.nictiz.nl/functions" xmlns:hl7nl="urn:hl7-nl:v3" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:local="#local.2024011008470342768780100" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- ================================================================== -->
    <!--
            Helper xslt stuff for creating HL7 for any information standard / use case. 
            To be imported or included from another xslt.
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

    <xsl:import href="../../../../YATC-shared/xsl/util/constants.xsl"/>
    <xsl:import href="../../../../YATC-shared/xsl/util/datetime.xsl"/>
    <xsl:import href="../../../../YATC-shared/xsl/util/utilities.xsl"/>
    <xsl:import href="../../../../YATC-shared/xsl/util/units.xsl"/>

    <!-- only give dateT a value if you want conversion of relative T dates -->
    <xsl:param name="dateT" as="xs:date?"/>

    <!-- ================================================================== -->

    <xsl:template name="format2HL7Date">
        <!-- Formats an ada xml date or an ada vague date or an ada relative Date string to a HL7 formatted date. -->
        <xsl:param name="dateTime" as="xs:string?" select=".">
            <!-- The dateTime string to be formatted. May be a relative or vague date(time) -->
        </xsl:param>
        <xsl:param name="precision" as="xs:string?" select="'second'">
            <!-- Determines the picture of the date(time) format. Seconds is the default. -->
        </xsl:param>
        <xsl:param name="inputDateT" as="xs:date?" select="$dateT">
            <!-- Optional. For test instances with relative T date -->
        </xsl:param>
        <xsl:variable name="picture" as="xs:string?">
            <xsl:choose>
                <xsl:when test="upper-case($precision) = ('MINUTE', 'MINUUT', 'MINUTES', 'MINUTEN', 'MIN', 'M')">[Y0001][M01][D01][H01][m01]</xsl:when>
                <xsl:when test="upper-case($precision) = ('HOUR', 'UUR', 'HOURS', 'UREN', 'HR', 'HH', 'H', 'U')">[Y0001][M01][D01][H01]</xsl:when>
                <xsl:when test="upper-case($precision) = ('SECOND', 'SECONDE', 'SECONDES', 'SECONDEN', 'SEC', 'S')">[Y0001][M01][D01][H01][m01][s01]</xsl:when>
                <xsl:when test="upper-case($precision) = ('MILLISECOND', 'MILLISECONDE', 'MILLISECONDES', 'MILLISECONDEN', 'MILLISEC', 'MS', 'MSEC')">[Y0001][M01][D01][H01][m01][s01].[f001]</xsl:when>
                <xsl:otherwise>[Y0001][M01][D01][H01][m01][s01]</xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="inputDateTime" select="upper-case(normalize-space($dateTime))"/>
        <xsl:variable name="processedDateTime">
            <xsl:choose>
                <!-- relative Date when first character is 'T' -->
                <xsl:when test="starts-with($inputDateTime, 'T')">
                    <xsl:value-of select="nf:calculate-t-date($inputDateTime, $inputDateT)"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$inputDateTime"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <xsl:choose>
            <xsl:when test="$processedDateTime castable as xs:dateTime">
                <xsl:value-of select="format-dateTime(xs:dateTime($processedDateTime), $picture)"/>
            </xsl:when>
            <xsl:when test="$processedDateTime castable as xs:date">
                <xsl:value-of select="format-date(xs:date($processedDateTime), '[Y0001][M01][D01]')"/>
            </xsl:when>
            <!-- input dateTime stops at minutes -->
            <xsl:when test="matches($processedDateTime, '\d{4}-(0[1-9]|1[012])-(0[1-9]|[12]\d|3[01])T([01]\d|2[0-3])(:(0\d|[1-5]\d))')">
                <xsl:value-of select="format-dateTime(xs:dateTime(concat($processedDateTime, ':00')), '[Y0001][M01][D01][H01][m01]')"/>
            </xsl:when>
            <!-- input dateTime stops at hours -->
            <xsl:when test="matches($processedDateTime, '\d{4}-(0[1-9]|1[012])-(0[1-9]|[12]\d|3[01])T([01]\d|2[0-3])')">
                <xsl:value-of select="format-dateTime(xs:dateTime(concat($processedDateTime, ':00:00')), '[Y0001][M01][D01][H01]')"/>
            </xsl:when>
            <!-- input date stops at months -->
            <xsl:when test="matches($processedDateTime, '\d{4}-(0[1-9]|1[012])')">
                <xsl:value-of select="format-date(xs:date(concat($processedDateTime, '-01')), '[Y0001][M01]')"/>
            </xsl:when>
            <!-- input date stops at year -->
            <xsl:when test="matches($processedDateTime, '\d{4}')">
                <xsl:value-of select="format-date(xs:date(concat($processedDateTime, '-01-01')), '[Y0001]')"/>
            </xsl:when>
            <!-- return the normalize space of whatever was the input -->
            <xsl:otherwise>
                <xsl:call-template name="util:logMessage">
                    <xsl:with-param name="level" select="$logWARN"/>
                    <xsl:with-param name="msg">Encountered an ada dateTime '<xsl:value-of select="$inputDateTime"/>' which could not be converted to HL7 date(time). Input = output.</xsl:with-param>
                </xsl:call-template>
                <xsl:value-of select="$processedDateTime"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeADXPValue">
        <xsl:param name="xsiType" select="'ADXP'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:element name="{$elemName}">
            <!-- ADXP never occurs outside AD and never needs xsi:type -->
            <xsl:copy-of select="@code"/>
            <xsl:copy-of select="@codeSystem"/>
            <xsl:value-of select="@value"/>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeAny" match="element()" mode="MakeAny">
        <!-- Makes element of a HL7 type which matches the ada attribute datatype -->
        <xsl:param name="in" select="." as="element()*">
            <!-- Input ada element -->
        </xsl:param>
        <xsl:param name="elemName" select="'value'">
            <!-- The HL7 element name to be outputted, defaults to value -->
        </xsl:param>
        <xsl:param name="outputXsiType" as="xs:boolean" select="true()">
            <!-- Optional boolean, defaults to true. Controls whether to output a xsi:type attribute with the HL7 element -->
        </xsl:param>

        <xsl:for-each select="$in[@datatype]">
            <xsl:variable name="dataType" select="$in/@datatype"/>
            <xsl:variable name="notSupported">template makeAny: ada datatype <xsl:value-of select="$dataType"/> not supported</xsl:variable>
            <xsl:choose>
                <xsl:when test="$dataType = ('blob', 'complex', 'duration', 'ordinal', 'reference')">
                    <!-- could argue this is reason to terminate, however not in case of MP voorschrift... -->
                    <xsl:call-template name="util:logMessage">
                        <xsl:with-param name="level" select="$logWARN"/>
                        <xsl:with-param name="msg" select="$notSupported"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="$dataType = 'boolean'">
                    <xsl:call-template name="makeBLValue">
                        <xsl:with-param name="elemName" select="$elemName"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="$dataType = 'code'">
                    <xsl:call-template name="makeCVValue">
                        <xsl:with-param name="elemName" select="$elemName"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="$dataType = 'count'">
                    <xsl:call-template name="makeINTValue">
                        <xsl:with-param name="elemName" select="$elemName"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="$dataType = ('date', 'datetime')">
                    <xsl:call-template name="makeTSValue">
                        <xsl:with-param name="elemName" select="$elemName"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="$dataType = ('decimal')">
                    <xsl:call-template name="makeREALValue">
                        <xsl:with-param name="elemName" select="$elemName"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="$dataType = ('duration')">
                    <xsl:call-template name="util:logMessage">
                        <xsl:with-param name="level" select="$logWARN"/>
                        <xsl:with-param name="msg" select="$notSupported"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="$dataType = ('identifier')">
                    <xsl:call-template name="makeIIValue">
                        <xsl:with-param name="elemName" select="$elemName"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="$dataType = ('ordinal')">
                    <xsl:call-template name="util:logMessage">
                        <xsl:with-param name="level" select="$logWARN"/>
                        <xsl:with-param name="msg" select="$notSupported"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="$dataType = 'quantity'">
                    <xsl:call-template name="makePQValue">
                        <xsl:with-param name="elemName" select="$elemName"/>
                        <!-- AWE: fix for xsiType, entering empty in parameter overrides the default with an empty value -->
                        <xsl:with-param name="xsiType" select="if ($outputXsiType) then ('PQ') else ''"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="$dataType = 'reference'">
                    <xsl:call-template name="util:logMessage">
                        <xsl:with-param name="level" select="$logWARN"/>
                        <xsl:with-param name="msg" select="$notSupported"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="$dataType = 'string'">
                    <xsl:call-template name="makeSTValue">
                        <xsl:with-param name="elemName" select="$elemName"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:when test="$dataType = 'text'">
                    <xsl:call-template name="makeText">
                        <xsl:with-param name="elemName" select="$elemName"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:call-template name="util:logMessage">
                        <xsl:with-param name="level" select="$logWARN"/>
                        <xsl:with-param name="msg" select="$notSupported"/>
                    </xsl:call-template>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeBLAttribute">
        <xsl:param name="inputValue" as="xs:string?"/>
        <xsl:param name="inputNullFlavor" as="xs:string?"/>
        <xsl:choose>
            <xsl:when test="$inputValue castable as xs:boolean">
                <xsl:attribute name="value" select="$inputValue"/>
            </xsl:when>
            <xsl:when test="lower-case($inputValue) = ('ja', 'yes', 'ja', 'oui', 'si')">
                <xsl:attribute name="value" select="true()"/>
            </xsl:when>
            <xsl:when test="lower-case($inputValue) = ('nee', 'no', 'nein', 'non', 'no')">
                <xsl:attribute name="value" select="false()"/>
            </xsl:when>
            <xsl:when test="string-length($inputNullFlavor) gt 0">
                <xsl:attribute name="nullFlavor" select="$inputNullFlavor"/>
            </xsl:when>
            <xsl:when test="string-length($inputValue) = 0 and string-length($inputNullFlavor) = 0">
                <!-- Do nothing -->
            </xsl:when>
            <xsl:otherwise>
                <!-- assume nullFlavor -->
                <xsl:attribute name="nullFlavor" select="$inputValue"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeBLValue" match="element()" mode="MakeBLValue">
        <!-- Generates an element with a boolean value. Also handles nullFlavors. Expected context is ada element. -->
        <xsl:param name="xsiType" select="'BL'">
            <!-- The xsi type to be included. Defaults to BL. Input empty string if no xsi:type should be outputted. -->
        </xsl:param>
        <xsl:param name="elemName" select="'value'">
            <!-- The hl7 element name to be outputted -->
        </xsl:param>
        <xsl:param name="elemNamespace" select="'urn:hl7-org:v3'">
            <!-- The namespace this element is in. Defaults to the hl7 namespace. -->
        </xsl:param>
        <xsl:variable name="inputValue" select="./@value" as="xs:string?"/>
        <xsl:variable name="inputNullFlavor" select="./@nullFlavor" as="xs:string?"/>
        <xsl:element name="{$elemName}" namespace="{$elemNamespace}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:call-template name="makeBLAttribute">
                <xsl:with-param name="inputValue" select="$inputValue"/>
                <xsl:with-param name="inputNullFlavor" select="$inputNullFlavor"/>
            </xsl:call-template>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeBNValue">
        <xsl:param name="xsiType" select="'BN'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:call-template name="makeBLValue">
            <xsl:with-param name="xsiType" select="$xsiType"/>
            <xsl:with-param name="elemName" select="$elemName"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeCDValue">
        <xsl:param name="code" as="xs:string?" select="@code"/>
        <xsl:param name="codeSystem" as="xs:string?" select="@codeSystem"/>
        <xsl:param name="displayName" as="xs:string?" select="@displayName"/>
        <xsl:param name="elemName" as="xs:string?" select="'value'"/>
        <xsl:param name="originalText"/>
        <xsl:param name="strOriginalText" as="xs:string?" select="@originalText"/>
        <xsl:param name="translations" as="element(hl7:translation)*"/>
        <xsl:param name="qualifiers" as="element(hl7:qualifier)*"/>
        <xsl:param name="xsiType" as="xs:string?" select="'CD'"/>
        <xsl:element name="{$elemName}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:call-template name="makeCodeAttribs">
                <xsl:with-param name="code" select="$code"/>
                <xsl:with-param name="codeSystem" select="$codeSystem"/>
                <xsl:with-param name="displayName" select="$displayName"/>
                <xsl:with-param name="originalText" select="$originalText"/>
                <xsl:with-param name="strOriginalText" select="$strOriginalText"/>
            </xsl:call-template>
            <xsl:copy-of select="$qualifiers"/>
            <xsl:copy-of select="$translations"/>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeCDValue_From_AnatomicalLocation">
        <xsl:param name="code" as="xs:string?" select="locatie/@code | location/@code"/>
        <xsl:param name="codeSystem" as="xs:string?" select="locatie/@codeSystem | location/@codeSystem"/>
        <xsl:param name="displayName" as="xs:string?" select="locatie/@displayName | location/@displayName"/>
        <xsl:param name="elemName" as="xs:string?" select="'value'"/>
        <xsl:param name="originalText"/>
        <xsl:param name="strOriginalText" as="xs:string?"/>
        <xsl:param name="translations" as="element(hl7:translation)*"/>
        <xsl:param name="xsiType" as="xs:string?" select="'CD'"/>
        <xsl:element name="{$elemName}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:call-template name="makeCodeAttribs">
                <xsl:with-param name="code" select="$code"/>
                <xsl:with-param name="codeSystem" select="$codeSystem"/>
                <xsl:with-param name="displayName" select="$displayName"/>
                <xsl:with-param name="originalText" select="$originalText"/>
                <xsl:with-param name="strOriginalText" select="$strOriginalText"/>
            </xsl:call-template>
            <xsl:for-each select="lateraliteit | laterality">
                <qualifier>
                    <name code="272741003" codeSystem="{$oidSNOMEDCT}" displayName="lateraliteit"/>
                    <value>
                        <xsl:call-template name="makeCodeAttribs">
                            <xsl:with-param name="code" select="@code"/>
                            <xsl:with-param name="codeSystem" select="@codeSystem"/>
                            <xsl:with-param name="displayName" select="@displayName"/>
                            <xsl:with-param name="originalText" select="@originalText"/>
                            <xsl:with-param name="strOriginalText" select="@strOriginalText"/>
                        </xsl:call-template>
                    </value>
                </qualifier>
            </xsl:for-each>
            <xsl:for-each select="../morfologie | ../morphology">
                <qualifier>
                    <name code="118168003" codeSystem="{$oidSNOMEDCT}" displayName="morfologische bron van monster"/>
                    <value>
                        <xsl:call-template name="makeCodeAttribs">
                            <xsl:with-param name="code" select="@code"/>
                            <xsl:with-param name="codeSystem" select="@codeSystem"/>
                            <xsl:with-param name="displayName" select="@displayName"/>
                            <xsl:with-param name="originalText" select="@originalText"/>
                            <xsl:with-param name="strOriginalText" select="@strOriginalText"/>
                        </xsl:call-template>
                    </value>
                </qualifier>
            </xsl:for-each>
            <xsl:copy-of select="$translations"/>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeCEValue">
        <xsl:param name="code" as="xs:string?" select="@code"/>
        <xsl:param name="codeSystem" as="xs:string?" select="@codeSystem"/>
        <xsl:param name="displayName" as="xs:string?" select="@displayName"/>
        <xsl:param name="elemName" as="xs:string?" select="'value'"/>
        <xsl:param name="originalText" as="element()?"/>
        <xsl:param name="strOriginalText" as="xs:string?" select="@originalText"/>
        <xsl:param name="translations" as="element(hl7:translation)*"/>
        <xsl:param name="xsiType" as="xs:string?" select="'CE'"/>
        <xsl:call-template name="makeCDValue">
            <xsl:with-param name="code" select="$code"/>
            <xsl:with-param name="codeSystem" select="$codeSystem"/>
            <xsl:with-param name="displayName" select="$displayName"/>
            <xsl:with-param name="elemName" select="$elemName"/>
            <xsl:with-param name="originalText" select="$originalText"/>
            <xsl:with-param name="strOriginalText" select="$strOriginalText"/>
            <xsl:with-param name="translations" select="$translations"/>
            <xsl:with-param name="xsiType" select="$xsiType"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeCVValue">
        <xsl:param name="code" as="xs:string?" select="./@code"/>
        <xsl:param name="codeSystem" as="xs:string?" select="./@codeSystem"/>
        <xsl:param name="displayName" as="xs:string?" select="./@displayName"/>
        <xsl:param name="elemName" as="xs:string?" select="'value'"/>
        <xsl:param name="xsiType" select="'CV'"/>
        <xsl:param name="originalText"/>
        <xsl:param name="translations" as="element(hl7:translation)*"/>
        <xsl:call-template name="makeCDValue">
            <xsl:with-param name="code" select="$code"/>
            <xsl:with-param name="codeSystem" select="$codeSystem"/>
            <xsl:with-param name="displayName" select="$displayName"/>
            <xsl:with-param name="elemName" select="$elemName"/>
            <xsl:with-param name="originalText" select="$originalText"/>
            <xsl:with-param name="xsiType" select="$xsiType"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeCSValue">
        <xsl:param name="xsiType" select="'CS'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:param name="originalText"/>
        <xsl:element name="{$elemName}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="@codeSystem = $oidHL7NullFlavor">
                    <!-- NullFlavor -->
                    <xsl:attribute name="nullFlavor" select="@code"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="code" select="@code"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeCode">
        <!-- Makes a HL7 code type element based on ada element with datatype code -->
        <xsl:param name="originalText" select="@originalText">
            <!-- Optional to supply originalText with OTH code. Defaults to originalText attribute, if any -->
        </xsl:param>
        <xsl:param name="elemName" as="xs:string?" select="'code'">
            <!-- The HL7 xml element name. Defaults to code. -->
        </xsl:param>
        <xsl:param name="codeMap" as="element()*">
            <!-- Array of map elements to be used to map input ADA codes to output HL7v3 codes if those differ. For codeMap expect one or more elements like this: <map inCode="xx" inCodeSystem="yy" value=".." code=".." codeSystem=".." codeSystemName=".." codeSystemVersion=".." displayName=".." originalText=".."/>
            If input @code | @codeSystem matches, copy the other attributes from this element. Expected are usually @code, @codeSystem, @displayName, others optional. If the @code / @codeSystem are omitted, the mapping assumes you meant to copy the @inCode / @inCodeSystem.
            For @inCode and @inCodeSystem, first the input @code/@codeSystem is checked, with fallback onto @nullFlavor. -->
        </xsl:param>

        <!-- FIXME: this seems obsolete: in ADA the nullFlavor is also in @code with nullFlavor codesystem in @codeSystem, 
             the @nullFlavor attribute does not exist in ADA code datatype -->
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
        <xsl:variable name="out" as="element()">
            <xsl:choose>
                <xsl:when test="$codeMap[@inCode = $theCode][@inCodeSystem = $theCodeSystem]">
                    <xsl:copy-of select="$codeMap[@inCode = $theCode][@inCodeSystem = $theCodeSystem]"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:copy-of select="."/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <xsl:element name="{$elemName}">
            <xsl:call-template name="makeCodeAttribs">
                <xsl:with-param name="code" select="$out/@code"/>
                <xsl:with-param name="displayName" select="$out/@displayName"/>
                <xsl:with-param name="codeSystem" select="$out/@codeSystem"/>
                <xsl:with-param name="codeSystemName" select="$out/@codeSystemName"/>
                <xsl:with-param name="codeSystemVersion" select="$out/@codeSystemVersion"/>
                <xsl:with-param name="value" select="$out/@value"/>
                <xsl:with-param name="originalText" select="                         if ($originalText instance of element()) then                             $originalText                         else                             ()"/>
                <xsl:with-param name="strOriginalText" select="                         if ($originalText castable as xs:string) then                             $originalText                         else                             ()"/>
            </xsl:call-template>
            <!-- make translation with code from ADA, if it differs due to codemap -->
            <xsl:if test="$codeMap[@inCode = $theCode]">
                <translation>
                    <xsl:call-template name="makeCodeAttribs"/>
                </translation>
            </xsl:if>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeCodeAttribs">
        <!-- Makes code attributes -->
        <xsl:param name="code" as="xs:string?" select="@code"/>
        <xsl:param name="codeSystem" as="xs:string?" select="@codeSystem"/>
        <xsl:param name="codeSystemName" as="xs:string?" select="@codeSystemName"/>
        <xsl:param name="codeSystemVersion" as="xs:string?" select="@codeSystemVersion"/>
        <xsl:param name="displayName" as="xs:string?" select="@displayName"/>
        <xsl:param name="originalText">
            <!-- originalText as element -->
        </xsl:param>
        <xsl:param name="strOriginalText" as="xs:string?" select="@originalText">
            <!-- originalText as string -->
        </xsl:param>
        <xsl:param name="value" select="@value"/>
        <xsl:choose>
            <xsl:when test="string-length($code) = 0 and (string-length($value) gt 0 or string-length($strOriginalText) gt 0)">
                <xsl:attribute name="nullFlavor" select="'OTH'"/>
            </xsl:when>
            <xsl:when test="$codeSystem = $oidHL7NullFlavor">
                <!-- NullFlavor -->
                <xsl:attribute name="nullFlavor" select="$code"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:if test="string-length($code) gt 0">
                    <xsl:attribute name="code" select="$code"/>
                </xsl:if>
                <xsl:if test="string-length($codeSystem) gt 0">
                    <xsl:attribute name="codeSystem" select="$codeSystem"/>
                </xsl:if>
                <xsl:if test="string-length($displayName) gt 0">
                    <xsl:attribute name="displayName" select="$displayName"/>
                </xsl:if>
                <xsl:if test="string-length($codeSystemName) gt 0">
                    <xsl:attribute name="codeSystemName" select="$codeSystemName"/>
                </xsl:if>
                <xsl:if test="string-length($codeSystemVersion) gt 0">
                    <xsl:attribute name="codeSystemVersion" select="$codeSystemVersion"/>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="string-length($strOriginalText) gt 0">
                <xsl:call-template name="makeoriginalText2">
                    <xsl:with-param name="strOriginalText" select="$strOriginalText"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="makeoriginalText">
                    <xsl:with-param name="originalText" as="element()*">
                        <xsl:choose>
                            <xsl:when test="$originalText">
                                <xsl:copy-of select="$originalText"/>
                            </xsl:when>
                            <xsl:when test="not(@code) and @value">
                                <xsl:copy-of select="."/>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:with-param>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeoriginalText">
        <!--  OriginalText with element() param  -->
        <xsl:param name="originalText" as="element()*"/>
        <xsl:if test="$originalText">
            <originalText>
                <xsl:value-of select="normalize-space(string-join($originalText/(@value | @displayName), ' '))"/>
            </originalText>
        </xsl:if>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeoriginalText2">
        <!--  OriginalText with string param  -->
        <xsl:param name="strOriginalText" as="xs:string?"/>
        <xsl:if test="string-length($strOriginalText) gt 0">
            <originalText>
                <xsl:value-of select="$strOriginalText"/>
            </originalText>
        </xsl:if>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeEDValue">
        <xsl:param name="xsiType" select="'ED'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:param name="mediaType" as="xs:string?"/>
        <xsl:param name="representation" as="xs:string?"/>
        <xsl:param name="reference" as="xs:string?"/>
        <xsl:element name="{$elemName}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:if test="string-length($mediaType) gt 0">
                <xsl:attribute name="mediaType" select="$mediaType"/>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="string-length($representation) gt 0">
                    <xsl:attribute name="representation" select="$representation"/>
                </xsl:when>
                <xsl:when test="string-length($mediaType) gt 0 and not($mediaType = 'text/plain')">
                    <xsl:attribute name="representation" select="'B64'"/>
                </xsl:when>
            </xsl:choose>
            <xsl:value-of select="@value"/>
            <xsl:if test="string-length($reference) gt 0">
                <reference value="{$reference}"/>
            </xsl:if>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeEffectiveTime">
        <!-- Make HL7 effectiveTime based on ada input element -->
        <xsl:param name="effectiveTime" as="element()?" select=".">
            <!-- ada input element with date(time), defaults to context element -->
        </xsl:param>
        <xsl:param name="nullIfAbsent" as="xs:boolean?" select="false()">
            <!-- Optional. Boolean to control whether to output HL7 element with nullFlavor if input element is absent. Defaults to false() - do not output element with nullFlavor.. -->
        </xsl:param>
        <xsl:choose>
            <xsl:when test="$effectiveTime[1] instance of element() and $effectiveTime[@value | @nullFlavor]">
                <xsl:for-each select="$effectiveTime[@value | @nullFlavor]">
                    <effectiveTime>
                        <xsl:call-template name="makeTSValueAttr"/>
                    </effectiveTime>
                </xsl:for-each>
            </xsl:when>
            <xsl:when test="$nullIfAbsent">
                <effectiveTime nullFlavor="NI"/>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeENXPValue">
        <!-- make ENXP Value -->
        <xsl:param name="xsiType" as="xs:string?" select="'ENXP'">
            <!-- Optional. The xsi:type to be outputted. Defaults to ENXP. However: is not used in this template. -->
        </xsl:param>
        <xsl:param name="elemName" as="xs:string?" select="'value'">
            <!-- Optional. The element name to be outputted. Defaults to value. -->
        </xsl:param>
        <xsl:param name="qualifier" as="xs:string*">
            <!-- Optional. The qualifier string to add as attribute -->
        </xsl:param>
        <xsl:element name="{$elemName}">
            <xsl:if test="string-length($qualifier) gt 0">
                <xsl:attribute name="qualifier" select="$qualifier"/>
            </xsl:if>
            <!-- ENXP never occurs outside EN/PN/ON and never needs xsi:type -->
            <xsl:value-of select="@value"/>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeINTValue">
        <!-- Generates an element with an integer value. Also handles nullFlavors. Expected context is ada element. -->
        <xsl:param name="xsiType" select="'INT'">
            <!-- The xsi type to be included. Defaults to INT. -->
        </xsl:param>
        <xsl:param name="elemName" select="'value'">
            <!-- The hl7 element name to be outputted -->
        </xsl:param>
        <xsl:param name="elemNamespace" select="'urn:hl7-org:v3'">
            <!-- The namespace this element is in. Defaults to the hl7 namespace. -->
        </xsl:param>

        <xsl:variable name="inputValue" select="@value" as="xs:string?"/>
        <xsl:variable name="inputNullFlavor" select="@nullFlavor" as="xs:string?"/>

        <xsl:element name="{$elemName}" namespace="{$elemNamespace}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:if test="string-length($inputNullFlavor) gt 0">
                <xsl:attribute name="nullFlavor" select="$inputNullFlavor"/>
            </xsl:if>
            <xsl:if test="string-length($inputValue) gt 0">
                <xsl:attribute name="value" select="$inputValue"/>
            </xsl:if>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeINT.NONNEGValue">
        <xsl:param name="xsiType" select="'INT'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:call-template name="makeINTValue">
            <xsl:with-param name="xsiType" select="$xsiType"/>
            <xsl:with-param name="elemName" select="$elemName"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeINT.POSValue">
        <xsl:param name="xsiType" select="'INT'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:call-template name="makeINTValue">
            <xsl:with-param name="xsiType" select="$xsiType"/>
            <xsl:with-param name="elemName" select="$elemName"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeIIid">
        <!-- Makes a HL7 id element (datatype II) based on ada identification element -->
        <xsl:param name="in" select=".">
            <!-- Optional. Defaults to context. The ada element which contains the id.  -->
        </xsl:param>
        <xsl:param name="root" select="@root"/>
        <xsl:for-each select="$in">
            <xsl:call-template name="makeIIValue">
                <xsl:with-param name="xsiType" select="''"/>
                <xsl:with-param name="elemName">id</xsl:with-param>
                <xsl:with-param name="root" select="$root"/>
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeIIValueBSN">
        <xsl:param name="xsiType" select="'II'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:call-template name="makeII.NL.BSNValue">
            <xsl:with-param name="elemName" select="$elemName"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeII.NL.AGBValue">
        <xsl:param name="xsiType" select="'II'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:call-template name="makeIIValue">
            <xsl:with-param name="elemName" select="$elemName"/>
            <xsl:with-param name="root" select="$oidAGB"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeII.NL.BIGValue">
        <xsl:param name="xsiType" select="'II'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:call-template name="makeIIValue">
            <xsl:with-param name="elemName" select="$elemName"/>
            <xsl:with-param name="root" select="$oidBIGregister"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeII.NL.BSNValue">
        <xsl:param name="xsiType"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:call-template name="makeIIValue">
            <xsl:with-param name="xsiType" select="$xsiType"/>
            <xsl:with-param name="elemName" select="$elemName"/>
            <xsl:with-param name="root" select="$oidBurgerservicenummer"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeII.NL.URAValue">
        <xsl:param name="xsiType" select="'II'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:call-template name="makeIIValue">
            <xsl:with-param name="elemName" select="$elemName"/>
            <xsl:with-param name="root" select="$oidURAOrganizations"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeII.NL.UZIValue">
        <xsl:param name="xsiType" select="'II'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:call-template name="makeIIValue">
            <xsl:with-param name="elemName" select="$elemName"/>
            <xsl:with-param name="root" select="$oidUZIPersons"/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeIIValue">
        <!-- makeIIValue. Makes a HL7 II element based on ada identification element -->
        <xsl:param name="xsiType">
            <!-- Optional. The @xsi:type to be outputted. No default. -->
        </xsl:param>
        <xsl:param name="elemName" select="'value'">
            <!-- The HL7 element name to be outputted, defaults to 'value' -->
        </xsl:param>
        <xsl:param name="root" select="@root">
            <!-- The @root attribute to be outputted, defaults to @root of context -->
        </xsl:param>
        <xsl:param name="nullFlavor" select="(@nullFlavor, 'NI')[1]">
            <!-- The @nullFlavor attribute to be outputted, defaults to NI -->
        </xsl:param>
        <xsl:element name="{$elemName}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="$root = $oidHL7NullFlavor">
                    <xsl:attribute name="nullFlavor">
                        <xsl:value-of select="@value"/>
                    </xsl:attribute>
                </xsl:when>
                <!-- extension + root ... the regular case -->
                <xsl:when test="string-length($root) gt 0 and string-length(@value) gt 0">
                    <xsl:attribute name="extension">
                        <xsl:choose>
                            <!-- https://bits.nictiz.nl/browse/MM-831 -->
                            <!-- HL7v3 II.NL.BSN http://hl7.nl/wiki/index.php?title=Implementatiehandleiding_HL7v3_basiscomponenten_v2.3_Rev2#Identificatiesystemen_OID_Referentietabel 
                                says to add a leading zero on 8-digit-BSNs in the datatype -->
                            <xsl:when test="$root = $oidBurgerservicenummer and matches(@value, '^\d{8}$')">
                                <xsl:value-of select="concat('0', @value)"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="@value"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:attribute>
                    <xsl:attribute name="root" select="$root"/>
                </xsl:when>
                <!-- extension + nullFlavor=UNC. Extension MAY NOT appear on its own unless with nullFlavor=UNC -->
                <xsl:when test="string-length($root) = 0 and string-length(@value) gt 0">
                    <xsl:attribute name="extension" select="@value"/>
                    <xsl:attribute name="nullFlavor">UNC</xsl:attribute>
                </xsl:when>
                <!-- nullFlavor -->
                <xsl:otherwise>
                    <xsl:attribute name="nullFlavor" select="$nullFlavor"/>
                </xsl:otherwise>
                <!--<xsl:when test="string-length($root) gt 0 and string-length(@value) = 0">
                    <xsl:attribute name="nullFlavor" select="$nullFlavor"/>
                </xsl:choose>
                <xsl:when test="string-length($root) = 0 and string-length(@value) = 0">
                    <xsl:attribute name="nullFlavor" select="$nullFlavor"/>
                </xsl:when>-->
            </xsl:choose>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeIVL_TS_From_TimeInterval">
        <!-- makeIVL_TS. Makes an HL7 IVL_TS element based on ada TimeInterval construct -->
        <xsl:param name="xsiType">
            <!-- Optional. The @xsi:type to be outputted. No default. -->
        </xsl:param>
        <xsl:param name="elemName" select="'value'">
            <!-- The HL7 element name to be outputted, defaults to 'value' -->
        </xsl:param>
        <xsl:param name="nullFlavor" select="(@nullFlavor, 'NI')[1]">
            <!-- The @nullFlavor attribute to be outputted, defaults to NI -->
        </xsl:param>
        <xsl:element name="{$elemName}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="start_datum_tijd | tijds_duur| eind_datum_tijd">
                    <xsl:for-each select="start_datum_tijd">
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="elemName">low</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <xsl:for-each select="tijds_duur">
                        <xsl:call-template name="makePQValue">
                            <xsl:with-param name="elemName">width</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                    <xsl:for-each select="eind_datum_tijd">
                        <xsl:call-template name="makeTSValue">
                            <xsl:with-param name="elemName">high</xsl:with-param>
                        </xsl:call-template>
                    </xsl:for-each>
                </xsl:when>
                <xsl:otherwise>
                    <!-- assume nullFlavor -->
                    <xsl:attribute name="nullFlavor" select="$nullFlavor"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeNegationAttr">
        <xsl:param name="inputValue" select="@value"/>
        <xsl:choose>
            <xsl:when test="$inputValue castable as xs:boolean">
                <xsl:attribute name="negationInd" select="$inputValue = 'false'"/>
            </xsl:when>
            <xsl:when test="lower-case($inputValue) = ('ja', 'yes', 'ja', 'oui', 'si', 'waar')">
                <xsl:attribute name="negationInd" select="false()"/>
            </xsl:when>
            <xsl:when test="lower-case($inputValue) = ('nee', 'no', 'nein', 'non', 'no', 'onwaar')">
                <xsl:attribute name="negationInd" select="true()"/>
            </xsl:when>
            <xsl:when test="string-length($inputValue) = 0">
                <!-- Do nothing -->
            </xsl:when>
            <xsl:otherwise>
                <!-- assume nullFlavor -->
                <xsl:attribute name="nullFlavor" select="$inputValue"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeNullflavorWithToelichting">
        <xsl:attribute name="nullFlavor">OTH</xsl:attribute>
        <xsl:call-template name="makeoriginalText">
            <xsl:with-param name="originalText" select="."/>
        </xsl:call-template>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeONValue">
        <xsl:param name="xsiType" select="'ON'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:element name="{$elemName}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="@value">
                    <xsl:value-of select="@value"/>
                </xsl:when>
                <xsl:when test="@nullFlavor">
                    <xsl:copy-of select="@nullFlavor"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="nullFlavor">NI</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makePNValue">
        <xsl:param name="xsiType" select="'PN'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:element name="{$elemName}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="@value">
                    <xsl:value-of select="@value"/>
                </xsl:when>
                <xsl:when test="@nullFlavor">
                    <xsl:copy-of select="@nullFlavor"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="nullFlavor">NI</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makePQValue" match="element()" mode="MakePQValue">
        <!-- Makes an element of type PQ -->
        <xsl:param name="inputValue" select="@value" as="xs:string?">
            <!-- input value string, default to context/@value -->
        </xsl:param>
        <xsl:param name="xsiType" as="xs:string?" select="'PQ'">
            <!-- the xsi:type for the HL7 element to be generated. Defaults to PQ. -->
        </xsl:param>
        <xsl:param name="elemName" as="xs:string?" select="'value'">
            <!-- the element name to be created, defaults to value -->
        </xsl:param>
        <xsl:param name="unit" as="xs:string?" select="@unit">
            <!-- the unit belonging to value context/@unit -->
        </xsl:param>
        <xsl:param name="nullFlavor" as="xs:string?" select="@nullFlavor">
            <!-- the nullFlavor context/@nullFlavor -->
        </xsl:param>
        <xsl:variable name="cleanInputValue" select="replace(normalize-space($inputValue), '^(&lt;|&gt;)=?', '')"/>
        <xsl:element name="{$elemName}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="string-length($cleanInputValue) gt 0">
                    <xsl:call-template name="makePQValueAttribs">
                        <xsl:with-param name="value" select="$cleanInputValue"/>
                        <xsl:with-param name="unit" select="$unit"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:call-template name="makePQValueAttribs">
                        <xsl:with-param name="unit" select="$unit"/>
                        <xsl:with-param name="nullFlavor" select="($nullFlavor, 'UNK')[1]"/>
                    </xsl:call-template>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makePQValueAttribs">
        <xsl:param name="value" select="@value" as="xs:string?"/>
        <xsl:param name="unit" select="@unit" as="xs:string?"/>
        <xsl:param name="nullFlavor" select="@nullFlavor" as="xs:string?"/>
        <xsl:if test="$value">
            <xsl:attribute name="value" select="$value"/>
        </xsl:if>
        <xsl:if test="$unit">
            <xsl:attribute name="unit" select="nf:convert_ADA_unit2UCUM($unit)"/>
        </xsl:if>
        <xsl:if test="$nullFlavor">
            <xsl:attribute name="nullFlavor" select="$nullFlavor"/>
        </xsl:if>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeREALValue">
        <!-- Generates an element with a real value. Also handles nullFlavors. Expected context is ada element. -->
        <xsl:param name="xsiType" select="'REAL'">
            <!-- The xsi type to be included. Defaults to REAL. -->
        </xsl:param>
        <xsl:param name="elemName" select="'value'">
            <!-- The hl7 element name to be outputted. Defaults to value. -->
        </xsl:param>
        <xsl:param name="elemNamespace" select="'urn:hl7-org:v3'">
            <!-- The namespace this element is in. Defaults to the hl7 namespace. -->
        </xsl:param>

        <xsl:variable name="inputValue" select="@value" as="xs:string?"/>
        <xsl:variable name="inputNullFlavor" select="@nullFlavor" as="xs:string?"/>

        <xsl:element name="{$elemName}" namespace="{$elemNamespace}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:if test="string-length($inputNullFlavor) gt 0">
                <xsl:attribute name="nullFlavor" select="$inputNullFlavor"/>
            </xsl:if>
            <xsl:if test="string-length($inputValue) gt 0">
                <xsl:attribute name="value" select="$inputValue"/>
            </xsl:if>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeSCValue">
        <xsl:param name="xsiType" select="'SC'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:element name="{$elemName}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:copy-of select="@code"/>
            <xsl:copy-of select="@codeSystem"/>
            <!-- Not always clear what the input looks like -->
            <xsl:value-of select="(@displayName, @value)[1]"/>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeSTValue">
        <xsl:param name="xsiType" select="'ST'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:element name="{$elemName}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:value-of select="@value"/>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeTELValue">
        <!-- Make an HL7 element for a datatype TEL -->
        <xsl:param name="in" select=".">
            <!-- The ada element to be converted, defaults to context. -->
        </xsl:param>
        <xsl:param name="elemName" as="xs:string" select="'value'">
            <!-- The hl7 element name, for example: telecom. -->
        </xsl:param>
        <xsl:param name="urlSchemeCode" as="xs:string?">
            <!-- The URL scheme code for this telecom value. For example: tel / fax / mailto. See http://www.hl7.nl/wiki/index.php?title=DatatypesR1:URL . -->
        </xsl:param>
        <xsl:param name="use" as="xs:string*">
            <!-- The contents for the @use attribute on this HL7 element -->
        </xsl:param>
        <xsl:param name="xsiType" as="xs:string?" select="'TEL'">
            <!-- The xsiType for the HL7 element, set to empty string when not needed. -->
        </xsl:param>

        <xsl:for-each select="$in">
            <!-- spaces are not allowed in URL scheme -->
            <xsl:variable name="theValue" select="translate(@value, ' ', '')"/>
            <xsl:element name="{$elemName}">
                <xsl:if test="string-length($xsiType) gt 0">
                    <xsl:attribute name="xsi:type" select="$xsiType"/>
                </xsl:if>
                <xsl:if test="$use">
                    <xsl:attribute name="use" select="$use"/>
                </xsl:if>
                <xsl:attribute name="value">
                    <xsl:choose>
                        <xsl:when test="matches($theValue, '^([a-z\-]+):.*')">
                            <!-- there is already an url scheme code in the @value -->
                            <xsl:value-of select="$theValue"/>
                        </xsl:when>
                        <xsl:when test="string-length($urlSchemeCode) gt 0">
                            <xsl:value-of select="concat($urlSchemeCode, ':', $theValue)"/>
                        </xsl:when>
                        <xsl:when test="matches($theValue, '.+@[^\.]+\.')">
                            <!-- email -->
                            <xsl:value-of select="concat('mailto:', $theValue)"/>
                        </xsl:when>
                        <xsl:when test="matches($theValue, '^[\d\s\(\)+-]+$')">
                            <!-- fax or tel number, but without $urlSchemeCode we have no way of knowing, 
                                so we default to tel, since fax really is also a telephone number technically -->
                            <xsl:value-of select="concat('tel:', $theValue)"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <!-- hmmm, should not happen, so log a message, but let's still output the input -->
                            <xsl:call-template name="util:logMessage">
                                <xsl:with-param name="level" select="$logERROR"/>
                                <xsl:with-param name="terminate" select="false()"/>
                                <xsl:with-param name="msg">Encountered a telecom value for which an Url scheme could not be found: '<xsl:value-of select="$theValue"/>'</xsl:with-param>
                            </xsl:call-template>
                            <xsl:value-of select="$theValue"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeText">
        <!-- Makes HL7 text type element -->
        <xsl:param name="elemName" as="xs:string?" select="'text'">
            <!-- Optional. The element name to be created, defaults to text. -->
        </xsl:param>
        <xsl:element name="{$elemName}">
            <xsl:choose>
                <xsl:when test="string-length(@value) gt 0">
                    <xsl:value-of select="@value"/>
                </xsl:when>
                <xsl:when test="@nullFlavor">
                    <xsl:copy-of select="@nullFlavor"/>
                </xsl:when>
            </xsl:choose>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeTNValue">
        <xsl:param name="xsiType" select="'TN'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:element name="{$elemName}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:value-of select="@value"/>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeTS.DATE.MINValue">
        <xsl:param name="xsiType" select="'TS'"/>
        <xsl:param name="elemName" select="'value'"/>
        <xsl:element name="{$elemName}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:call-template name="makeTSValueAttr"/>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeTSValue" match="element()" mode="MakeTSValue">
        <xsl:param name="inputValue" as="xs:string?" select="@value"/>
        <!-- Do not supply default for xsiType. Due to the datatypes.xsd schema, you cannot always use xsi:type TS, 
            unless the base type is TS, QTY or ANY -->
        <xsl:param name="xsiType">
            <!-- The xsi type to be included. No default. -->
        </xsl:param>
        <xsl:param name="elemName" select="'value'">
            <!-- The hl7 element name to be outputted. Defaults to value. -->
        </xsl:param>
        <xsl:param name="elemNamespace" select="'urn:hl7-org:v3'">
            <!-- The namespace this element is in. Defaults to the hl7 namespace. -->
        </xsl:param>
        <xsl:param name="inputNullFlavor" select="@nullFlavor" as="xs:string?">
            <!-- nullFlavor string if applicable -->
        </xsl:param>
        <xsl:param name="precision" as="xs:string?" select="'second'">
            <!-- Determines the picture of the date(time) format. Second is the default. -->
        </xsl:param>

        <xsl:element name="{$elemName}" namespace="{$elemNamespace}">
            <xsl:if test="string-length($xsiType) gt 0">
                <xsl:attribute name="xsi:type" select="$xsiType"/>
            </xsl:if>
            <xsl:variable name="emptyElement" as="element()?"/>

            <xsl:call-template name="makeTSValueAttr">
                <xsl:with-param name="in" select="$emptyElement"/>
                <xsl:with-param name="inputValue" select="$inputValue"/>
                <xsl:with-param name="inputNullFlavor" select="$inputNullFlavor"/>
                <xsl:with-param name="precision" select="$precision"/>
            </xsl:call-template>
        </xsl:element>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeTSValueAttr" match="element()" mode="MakeTSValueAttr">
        <!-- Makes HL7 TS value attribute, based on input ada possible vague date/time string -->
        <xsl:param name="in" select=".">
            <!-- Input ada element, defaults to context. -->
        </xsl:param>
        <xsl:param name="inputDateT" as="xs:date?" select="$dateT">
            <!-- The input variable date T as xs:date. Optional, default to global param $dateT -->
        </xsl:param>
        <xsl:param name="inputValue" as="xs:string?" select="$in/@value">
            <!-- The input ada value string. Defaults to $in/@value. -->
        </xsl:param>
        <xsl:param name="inputNullFlavor" as="xs:string?" select="$in/@nullFlavor">
            <!-- The input ada nullFlavor. Defaults to $in/@nullFlavor. -->
        </xsl:param>
        <xsl:param name="precision" as="xs:string?" select="'second'">
            <!-- Determines the picture of the date(time) format. Seconds is the default. -->
        </xsl:param>
        <xsl:choose>
            <xsl:when test="$inputValue">
                <xsl:attribute name="value">
                    <xsl:call-template name="format2HL7Date">
                        <xsl:with-param name="dateTime" select="$inputValue"/>
                        <xsl:with-param name="inputDateT" select="$inputDateT"/>
                        <xsl:with-param name="precision" select="$precision"/>
                    </xsl:call-template>
                </xsl:attribute>
            </xsl:when>
            <xsl:when test="$inputNullFlavor">
                <xsl:attribute name="nullFlavor" select="$inputNullFlavor"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:attribute name="nullFlavor" select="'NI'"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:convertAdaNlPostcode" as="xs:string?">
        <xsl:param name="adaPostalCodeValue" as="xs:string?"/>
        <xsl:variable name="postalCodeUpperCase" select="normalize-space(upper-case($adaPostalCodeValue))"/>

        <xsl:choose>
            <xsl:when test="string-length($postalCodeUpperCase) = 6 and matches(($postalCodeUpperCase), '\d{4}[A-Z]{2}')">
                <xsl:value-of select="concat(substring($postalCodeUpperCase, 1, 4), ' ', substring($postalCodeUpperCase, 5, 2))"/>
            </xsl:when>
            <xsl:when test="string-length($postalCodeUpperCase) = 7 and matches(($postalCodeUpperCase), '\d{4}\s{1}[A-Z]{2}')">
                <xsl:value-of select="$postalCodeUpperCase"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$adaPostalCodeValue"/>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:addEnding">
        <!--  addEnding checks baseString if it ends in endString, and if not adds it at the end.  -->
        <xsl:param name="baseString"/>
        <xsl:param name="endString"/>

        <xsl:choose>
            <xsl:when test="substring($baseString, string-length($baseString) - string-length($endString) + 1, string-length($endString)) eq $endString">
                <xsl:value-of select="$baseString"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="concat($baseString, $endString)"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.pbx_s1y_5wb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       Expands a set of given parameters in a document.
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

    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:include href="../../xslmod/general.mod.xsl"/>
    <xsl:include href="../../xslmod/yatc-parameters-expand.mod.xsl"/>

    <!-- ================================================================== -->

    <xsl:param name="substituteInAttributes" as="xs:boolean" required="yes"/>
    <xsl:param name="substituteInTextNodes" as="xs:boolean" required="yes"/>
    <xsl:param name="parametersMustExist" as="xs:boolean" required="yes"/>
    <xsl:param name="expandUserFriendly" as="xs:boolean" required="yes"/>

    <xsl:param name="parametersInEffect" as="map(*)" required="yes"/>
    
    <!-- ======================================================================= -->
    
    <!-- Since the parameter substitution code is in XSLT 2, it cannot handle maps. So we have to put the parameters map (back?)
         into a <parameters> element document.  -->
    <xsl:variable name="parametersDocument" as="element(yatcs:parameters)">
        <yatcs:parameters>
            <xsl:for-each select="map:keys($parametersInEffect)">
                <yatcs:parameter name="{.}">
                    <!-- Since only the first value of a parameter is used, we only have to add this one. -->
                    <yatcs:value>{$parametersInEffect(.)[1]}</yatcs:value>
                </yatcs:parameter>
            </xsl:for-each>
        </yatcs:parameters>
    </xsl:variable>

    <!-- ======================================================================= -->

    <xsl:template match="@*[$substituteInAttributes][local:might-contain-parameter-reference(.)]">
        <xsl:attribute name="{node-name(.)}" select="yatcs:expand-text($parametersDocument, ., $parametersMustExist, $expandUserFriendly)"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="text()[$substituteInTextNodes][local:might-contain-parameter-reference(.)]">
        <xsl:value-of select="yatcs:expand-text($parametersDocument, ., $parametersMustExist, $expandUserFriendly)"/>
    </xsl:template>

    <!-- ======================================================================= -->

    <xsl:function name="local:might-contain-parameter-reference" as="xs:boolean">
        <xsl:param name="value" as="xs:string"/>
        <xsl:sequence select="contains($value, '$') and contains($value, '{') and contains($value, '}')"/>
    </xsl:function>

</xsl:stylesheet>

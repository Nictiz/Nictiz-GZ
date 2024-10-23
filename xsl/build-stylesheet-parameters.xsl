<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.dkk_rnl_hwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
       This stylesheet performs the basic processing in creating the parameters for a build stylesheet. 
      
       Input is the surrounding build element (which exact format and name depends on the component we're in). For instance:
      
        <build">
            …
            <parameter name="abbreviation" value="MTD"/>
            <parameter name="elementNameId" value="medicatietoediening"/>
        </build>
        
       The function yatcs:basic-build-parameters-map() creates a map with:
       - A number of always present build stylesheet parameters. The values for these must be passed to *this* 
         stylesheet as parameters. See the <xsl:param> elements below.
       - It processes (optional) <parameters> elements according to the standard rules for these 
         (for some documentation on this see ../srcmod/parameter-element.mod.xml).   
         
       The stylesheet module can be used in two ways:
       - Stand alone. It will output a JSON map with the basic build parameters.
       - Imported. Redefine the match="/" template and add parameters for the specific component to the map.
       
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

    <xsl:output method="json" encoding="UTF-8"/>

    <xsl:mode on-no-match="fail"/>

    <xsl:include href="../xslmod/general.mod.xsl"/>
    <xsl:include href="../xslmod/href.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- PARAMETERS: -->

    <xsl:param name="application" as="xs:string" required="true">
        <!-- The name of the application we're building for. 
             For instance 'lab'. 
        -->
    </xsl:param>
    
    <xsl:param name="version" as="xs:string" required="true">
        <!-- The version of the application we're building for. 
             For instance '3.0.0'. 
        -->
    </xsl:param>
    
    <xsl:param name="baseDirectory" as="xs:string" required="true">
        <!-- The full absolute base directory for the adarefs2ada build for this application/version 
             For instance 'file:///…/lab/3.0.0'. 
        -->
    </xsl:param>
    
    <xsl:param name="buildName" as="xs:string" required="true">
        <!-- The name of the build we're currently processing. 
             For instance 'laboratoriumresultaten_met_references-1'. 
        -->
    </xsl:param>

    <!-- ================================================================== -->
    
    <xsl:template match="/">
        <xsl:sequence select="yatcs:basic-build-parameters-map(/*)"/>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:function name="yatcs:basic-build-parameters-map" as="map(*)">
        <xsl:param name="buildElm" as="element()"/>
        
        <xsl:map>
            
            <xsl:map-entry key="'application'" select="$application"/>
            <xsl:map-entry key="'version'" select="$version"/>
            <xsl:map-entry key="'baseDirectory'" select="$baseDirectory"/>
            <xsl:map-entry key="'buildName'" select="$buildName"/>
            
            <!-- Handle any parameter elements: -->
            <xsl:for-each select="$buildElm/*:parameter">
                <xsl:map-entry key="string(@name)">
                    <xsl:choose>
                        <xsl:when test="exists(@value) and exists(@directory)">
                            <xsl:sequence select="yatcs:href-concat((@directory, @value))"/>
                        </xsl:when>
                        <xsl:when test="exists(@value)">
                            <xsl:variable name="value" as="xs:string" select="string(@value)"/>
                            <xsl:choose>
                                <xsl:when test="yatcs:str2bln(@force-string, false())">
                                    <xsl:sequence select="$value"/>
                                </xsl:when>
                                <xsl:when test="$value castable as xs:integer">
                                    <xsl:sequence select="xs:integer($value)"/>
                                </xsl:when>
                                <xsl:when test="$value castable as xs:double">
                                    <xsl:sequence select="xs:double($value)"/>
                                </xsl:when>                                    
                                <xsl:when test="$value castable as xs:date">
                                    <xsl:sequence select="xs:date($value)"/>
                                </xsl:when>
                                <xsl:when test="$value castable as xs:time">
                                    <xsl:sequence select="xs:time($value)"/>
                                </xsl:when>
                                <xsl:when test="$value castable as xs:dateTime">
                                    <xsl:sequence select="xs:dateTime($value)"/>
                                </xsl:when>
                                <xsl:when test="$value = ('true', 'false')">
                                    <xsl:sequence select="xs:boolean($value)"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:sequence select="$value"/>
                                </xsl:otherwise>  
                            </xsl:choose>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:sequence select="string((@directory, @href, '')[1])"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:map-entry>
            </xsl:for-each>
            
        </xsl:map>
    </xsl:function>
    
</xsl:stylesheet>

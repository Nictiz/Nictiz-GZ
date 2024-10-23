<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.ert_dgc_lwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       This (small) module defines (and documents) the standard parameters passed to the stylesheet on an adarefs2ada build.
       
       To enable easier debugging (running this stylesheet outside of an XProc context), several parameters are 
       given a default value. You can always change this when running it stand-alone, if necessary.
       
       Remark: A build may pass in additional parameters to a specific stylesheet(using build/parameter elements), 
       but these are (of course) not defined here. These are the standard parameters only (the ones that are always passed).
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

    <xsl:param name="application" as="xs:string" required="false" select="'test-application'">
        <!-- The name of the application we're building for. 
             For instance 'lab'. 
        -->
    </xsl:param>

    <xsl:param name="version" as="xs:string" required="false" select="'test-version'">
        <!-- The version of the application we're building for. 
             For instance '3.0.0'. 
        -->
    </xsl:param>
    
    <xsl:param name="buildName" as="xs:string" required="false" select="'test-build'">
        <!-- The name of the build we're currently processing. 
             For instance 'laboratoriumresultaten_met_references-1'. 
        -->
    </xsl:param>

    <xsl:param name="baseDirectory" as="xs:string" required="false" select="resolve-uri('../tmp/base', static-base-uri())">
        <!-- The full absolute base directory for the adarefs2ada build for this application/version 
             For instance 'file:///…/lab/3.0.0'. 
        -->
    </xsl:param>

    <xsl:param name="outputDirectory" as="xs:string" required="false" select="resolve-uri('../tmp/output', static-base-uri())">
        <!-- The full absolute name of the output directory for this build (as specified in the build/output element)
             For instance 'file:///…/lab/3.0.0/beschikbaarstellen_laboratoriumresultaten/ada_instance'. 
        -->
    </xsl:param>

    <xsl:param name="adaWorkingSetDirectory" as="xs:string" required="false" select="resolve-uri('../tmp/working-set', static-base-uri())">
        <!-- The name of the directory containing the working set of ADA documents used in the processing of this stylesheet. 
             As defined by the build/ada-working-set element. 
        -->
    </xsl:param>

    <!-- ======================================================================= -->
    <!-- SUPPORT CODE: -->

    <xsl:function name="yatcs:get-ada-files" as="document-node()*">
        <!-- Gets the collection of XML files based on a directory name. -->
        <xsl:param name="directory" as="xs:string"/>

        <xsl:if test="normalize-space($directory) eq ''">
            <xsl:call-template name="yatcs:raise-error">
                <xsl:with-param name="msg-parts" select="('Directory for retrieving collection of ADA files not specified')"/>
            </xsl:call-template>
        </xsl:if>
        
        <xsl:variable name="adaFiles" as="document-node()*" >
            <xsl:try>
                <xsl:sequence select="collection($directory || '?select=*.xml')"/>
                <xsl:catch>
                    <xsl:sequence select="()"/>
                </xsl:catch>
            </xsl:try>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="exists($adaFiles)">
                <xsl:sequence select="$adaFiles"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="yatcs:raise-error">
                    <xsl:with-param name="msg-parts" select="('No ADA files found for directory ', yatcs:q($directory))"/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="yatcs:get-ada-files" as="document-node()*">
        <!-- Gets the collection of ada files, based on the adaWorkingSetDirectory parameter. 
             Raises an error if this set is empty.-->
        <xsl:sequence select="yatcs:get-ada-files($adaWorkingSetDirectory)"/>
    </xsl:function>

</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.brk_fv3_dwb" exclude-result-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       This is a library for working with the YATC parameters system. 
       The parameters system is documented in ../doc/parameters-system.md
       
       Depends on:
       - general.mod.xsl
       - href-mod.xsl
       - yatc-system.mod.xsl
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
    <!-- GLOBAL DECLARATIONS: -->
    
    <xsl:include href="component-parameter-names.mod.xsl"/>
    <xsl:include href="yatc-parameters-expand.mod.xsl"/>
   
    <!-- ======================================================================= -->
    <!-- LOCAL DECLARATIONS: -->

    <xsl:variable name="local:hrefParameterFile" as="xs:string" select="'data/parameters.xml'">
        <!-- The standard (relative) href where we can find a parameter file, relative to the root of a repository or component. -->
    </xsl:variable>

    <!-- ======================================================================= -->

    <xsl:function name="yatcs:get-combined-parameters" as="element(yatcs:parameters)" xmlns="https://nictiz.nl/ns/YATC-shared">
        <!-- This function returns the set of active parameters, based on a provided static base URI.
            You can optionally pass additional parameter files by passing their href-s. 
            It returns a full <yatcs:parameters> document. The schema for this can be found in ../xsd/parameters.xsd
        -->
        <xsl:param name="callerStaticBaseUri" as="xs:string">
            <!-- The static base URI for which the set of active parameters must be computed. -->
        </xsl:param>
        <xsl:param name="hrefAdditionalParameterDocuments" as="xs:string*">
            <!-- The href-s of any additional parameter files you want to add. These files do not need to be accessible, 
                 the function checks this.  -->
        </xsl:param>

        <!-- Some special handling for the static base URI. This makes sure everything works also when the URI
             is passed in from the command line... -->
        <xsl:variable name="callerStaticBaseUriCanonical" as="xs:string" select="yatcs:href-protocol-add(yatcs:href-canonical($callerStaticBaseUri), $yatcs:protocol-file, false())"/>

        <!-- Normalize/canonicalize the passed in href-s of the additional parameter files (if any): -->
        <xsl:variable name="hrefAdditionalParameterDocumentsCanonical" as="xs:string*">
            <xsl:for-each select="$hrefAdditionalParameterDocuments">
                <xsl:sequence select="yatcs:href-canonical(yatcs:href-protocol-add(., $yatcs:protocol-file, false()))"/>
            </xsl:for-each>
        </xsl:variable>

        <!-- Create a sequence with the href-s for the various parameter files we have to take into account. 
             This must be done in the right sequence: settings in later mentioned parameter files override settings 
             in former ones. -->
        <xsl:variable name="repositoryDirectory" as="xs:string" select="yatcs:get-repository-directory-uri($callerStaticBaseUriCanonical)"/>
        <xsl:variable name="componentDirectory" as="xs:string" select="yatcs:get-component-directory-uri($callerStaticBaseUriCanonical)"/>
        <xsl:variable name="hrefParametersDocuments" as="xs:string+">
            <!-- The parameters from tools: -->
            <xsl:sequence select="yatcs:href-concat(($yatcs:baseDirectoryUri, $yatcs:repositoryNameTools, $local:hrefParameterFile))"/>
            <!-- The parameters from shared: -->
            <xsl:sequence select="yatcs:href-concat(($yatcs:baseDirectoryUri, $yatcs:repositoryNameShared, $local:hrefParameterFile))"/>
            <!-- The parameter settings from this repository: -->
            <xsl:if test="$repositoryDirectory ne ''">
                <xsl:sequence select="yatcs:href-concat(($repositoryDirectory, $local:hrefParameterFile))"/>
            </xsl:if>
            <!-- The parameter settings from the component: -->
            <xsl:if test="$componentDirectory ne ''">
                <xsl:sequence select="yatcs:href-concat(($componentDirectory, $local:hrefParameterFile))"/>
            </xsl:if>
            <!-- And don't forget the additional parameter files: -->
            <xsl:sequence select="$hrefAdditionalParameterDocumentsCanonical"/>
            <!-- Finally, anything can be overridden from a local developer parameter file: -->
            <xsl:sequence select="yatcs:href-concat(($yatcs:baseDirectoryUri, $local:hrefParameterFile))"/>
        </xsl:variable>

        <!-- Prune the list with parameter file href-s and keep only the ones that have a value *and* are available: -->
        <xsl:variable name="hrefParametersDocumentsAvailable" as="xs:string*">
            <xsl:for-each select="distinct-values($hrefParametersDocuments)">
                <xsl:if test="normalize-space(.) ne ''">
                    <xsl:if test="doc-available(.)">
                        <xsl:sequence select="."/>
                    </xsl:if>
                </xsl:if>
            </xsl:for-each>
        </xsl:variable>

        <!-- Get all parameters in (as <yatcs:parameter> elements). Also add the automatic specific ones. -->
        <xsl:variable name="parameters" as="element(yatcs:parameter)*">
            <!-- Special automatic parameters: -->
            <xsl:call-template name="local:create-specific-parameter">
                <xsl:with-param name="name" select="$yatcs:parnameBaseUri"/>
                <xsl:with-param name="value" select="$callerStaticBaseUriCanonical"/>
            </xsl:call-template>
            <xsl:call-template name="local:create-specific-parameter">
                <xsl:with-param name="name" select="$yatcs:parnameBaseDriveRoot"/>
                <xsl:with-param name="value" select="$yatcs:baseDriveRoot"/>
            </xsl:call-template>
            <xsl:call-template name="local:create-specific-parameter">
                <xsl:with-param name="name" select="$yatcs:parnameYatcBaseDirectory"/>
                <xsl:with-param name="value" select="$yatcs:baseDirectoryUri"/>
            </xsl:call-template>
            <xsl:if test="$repositoryDirectory ne ''">
                <xsl:call-template name="local:create-specific-parameter">
                    <xsl:with-param name="name" select="$yatcs:parnameYatcRepositoryName"/>
                    <xsl:with-param name="value" select="yatcs:get-repository-name($callerStaticBaseUriCanonical)"/>
                </xsl:call-template>
                <xsl:call-template name="local:create-specific-parameter">
                    <xsl:with-param name="name" select="$yatcs:parnameYatcRepositoryDirectory"/>
                    <xsl:with-param name="value" select="$repositoryDirectory"/>
                </xsl:call-template>
            </xsl:if>
            <xsl:if test="$componentDirectory ne ''">
                <xsl:variable name="componentName" as="xs:string" select="yatcs:get-component-name($callerStaticBaseUriCanonical)"/>
                <xsl:call-template name="local:create-specific-parameter">
                    <xsl:with-param name="name" select="$yatcs:parnameYatcComponentName"/>
                    <xsl:with-param name="value" select="$componentName"/>
                </xsl:call-template>
                <xsl:call-template name="local:create-specific-parameter">
                    <xsl:with-param name="name" select="$yatcs:parnameYatcComponentNameShortened"/>
                    <xsl:with-param name="value" select="replace($componentName, '[^a-zA-Z0-9]', '')"/>
                </xsl:call-template>
                <xsl:call-template name="local:create-specific-parameter">
                    <xsl:with-param name="name" select="$yatcs:parnameYatcComponentNameTraditional"/>
                    <xsl:with-param name="value" select="translate($componentName, '-', '_')"/>
                </xsl:call-template>
                <xsl:call-template name="local:create-specific-parameter">
                    <xsl:with-param name="name" select="$yatcs:parnameYatcComponentDirectory"/>
                    <xsl:with-param name="value" select="$componentDirectory"/>
                </xsl:call-template>
            </xsl:if>
            <!-- Parameters from the documents: -->
            <xsl:for-each select="$hrefParametersDocumentsAvailable">
                <xsl:variable name="sourceIdref" as="xs:string" select="concat('s', position())"/>
                <xsl:for-each select="((doc(.)//yatcs:parameters)[1])/yatcs:parameter">
                    <parameter source-idref="{$sourceIdref}">
                        <xsl:copy-of select="@* except @source-idref" copy-namespaces="no"/>
                        <xsl:copy-of select="yatcs:*" copy-namespaces="no"/>
                    </parameter>
                </xsl:for-each>
            </xsl:for-each>
        </xsl:variable>

        <!-- Gather all the parameters and make sure we only have one for each parameter name... -->
        <xsl:variable name="parametersNormalized" as="element(yatcs:parameters)*">
            <parameters caller-static-base-uri="{$callerStaticBaseUriCanonical}">
                <xsl:for-each-group select="$parameters" group-by="@name">
                    <xsl:sequence select="current-group()[last()]"/>
                </xsl:for-each-group>
            </parameters>
        </xsl:variable>

        <!-- Create a full parameters output (including source information) and expand any references: -->
        <parameters>
            <xsl:copy-of select="$parametersNormalized/@*" copy-namespaces="no"/>
            <sources>
                <xsl:for-each select="$hrefParametersDocumentsAvailable">
                    <xsl:variable name="sourceIdref" as="xs:string" select="concat('s', position())"/>
                    <source id="{$sourceIdref}" href="{.}"/>
                </xsl:for-each>
            </sources>
            <xsl:for-each select="$parametersNormalized/yatcs:parameter">
                <parameter>
                    <xsl:copy-of select="@* | (yatcs:* except yatcs:value)" copy-namespaces="no"/>
                    <xsl:for-each select="yatcs:value">
                        <value>
                            <xsl:value-of select="yatcs:expand-text($parametersNormalized, .)"/>
                        </value>
                    </xsl:for-each>
                </parameter>
            </xsl:for-each>
        </parameters>

    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function xmlns="https://nictiz.nl/ns/yatc-shared" name="yatcs:get-combined-parameters" as="element(yatcs:parameters)">
        <!-- Single parameter version of yatcs:get-combined-parameters#2 -->
        <xsl:param name="callerStaticBaseUri" as="xs:string">
            <!-- See yatcs:get-combined-parameters#2 -->
        </xsl:param>

        <xsl:sequence select="yatcs:get-combined-parameters($callerStaticBaseUri, ())"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="yatcs:get-parameter-value" as="xs:string?">
        <!-- Returns the *first* value of a given parameter as a string. If the parameter does not exist or has no value, 
             it returns ().  -->
        <xsl:param name="parameters" as="element(yatcs:parameters)">
            <!-- The set of parameters as computed by yatcs:get-combined-parameters() -->
        </xsl:param>
        <xsl:param name="parameterName" as="xs:string">
            <!-- The name of the parameter -->
        </xsl:param>

        <xsl:sequence select="xs:string(($parameters/yatcs:parameter[@name eq $parameterName][1])/yatcs:value[1])"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="yatcs:parameter-exists" as="xs:boolean">
        <!-- Returns true when a given parameter exists and has at least a single value. -->
        <xsl:param name="parameters" as="element(yatcs:parameters)">
            <!-- The set of parameters as computed by yatcs:get-combined-parameters() -->
        </xsl:param>
        <xsl:param name="parameterName" as="xs:string">
            <!-- The name of the parameter -->
        </xsl:param>

        <xsl:sequence select="exists(($parameters/yatcs:parameter[@name eq $parameterName][1])/yatcs:value[1])"/>
    </xsl:function>

    <!-- ======================================================================= -->
    <!-- LOCAL SUPPORT: -->

    <xsl:template name="local:create-specific-parameter" as="element(yatcs:parameter)?" xmlns="https://nictiz.nl/ns/YATC-shared">
        <!-- Creates a <yatcs:parameter> element (only when there is a value) -->
        <xsl:param name="name" as="xs:string" required="true"/>
        <xsl:param name="value" as="xs:string" required="true"/>

        <xsl:if test="normalize-space($value) ne ''">
            <parameter name="{$name}">
                <value>
                    <xsl:value-of select="$value"/>
                </value>
            </parameter>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>

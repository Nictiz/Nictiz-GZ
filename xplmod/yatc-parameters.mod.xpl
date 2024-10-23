<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.snd_rbp_dwb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       This is an XProc library for working with the YATC parameters system.
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

    <p:declare-step type="yatcs:get-combined-parameters-map">
        <!-- 
            Returns the combined parameters as a JSON map. The result of this can be stored in a map variable for further use. 
            For instance with this XProc code fragment::
             
             <yatcs:get-combined-parameters-map>
                 <p:with-option name="callerStaticBaseUri" select="static-base-uri()"/> 
             </yatcs:get-combined-parameters-map>
             <p:variable name="parameters" as="map(*)" select="."/>
             
            There might be situations where you might already have a parameters map. Pass this in the $parameters element 
            and this map will be returned unchanged.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:import href="yatc-general.mod.xpl"/>

        <p:output port="result" primary="true" sequence="false" content-types="json">
            <!-- The resulting parameters map -->
        </p:output>

        <p:option name="parameters" as="map(*)?" required="false" select="()">
            <!-- Optional set of already retrieved YATC parameters in effect. 
                 If this is provided, its value will be passed, unchanged. The caller must make sure the parameters are correct
                 (retrieved using an appropriate base URI). -->
        </p:option>

        <p:option name="callerStaticBaseUri" as="xs:string" required="true">
            <!-- The static base URI for which the set of active parameters must be computed. -->
        </p:option>

        <p:option name="hrefAdditionalParameterDocuments" as="xs:string*" required="false" select="()">
            <!-- The href-s of any additional parameter files you want to add. These files do not need to exist or be accessible, 
                 this is checked.  -->
        </p:option>
        
        <p:option name="silent" as="xs:boolean" required="false" select="false()">
            <!-- Whether to leave out any console messages. -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:choose>

            <!-- Check for an existing parameters map: -->
            <p:when test="exists($parameters)">
                <!-- This is a just a small (dirty?) trick to pass the contents of a map in a variable on a port: -->
                <p:identity>
                    <p:with-input select="$parameters">
                        <null/>
                    </p:with-input>
                </p:identity>
            </p:when>

            <!-- There is no previously loaded parameters map. Load it: -->
            <p:otherwise>
                <yatcs:message level="0" msg="Getting parameters for base URI &quot;{$callerStaticBaseUri}&quot;" enabled="{not($silent)}"/>
                <p:xslt>
                    <p:with-input port="source">
                        <dummy/>
                    </p:with-input>
                    <p:with-input port="stylesheet" href="../xsl/get-parameters-json-map.xsl"/>
                    <p:with-option name="parameters" select="map{
                        'callerStaticBaseUri': $callerStaticBaseUri,
                        'hrefAdditionalParameterDocuments': $hrefAdditionalParameterDocuments
                    }"/>
                </p:xslt>
            </p:otherwise>

        </p:choose>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:substitute-parameters" name="substitute-parameters">
        <!-- 
            Substitutes all parameter references in attributes and text nodes (configurable). 
            A parameter reference is written as ${parname} or {$parname}.
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="false" content-types="xml"/>
        <p:output port="result" primary="true" sequence="true" content-types="xml"/>

        <p:option name="substituteInAttributes" as="xs:boolean" required="false" select="false()"/>
        <p:option name="substituteInTextNodes" as="xs:boolean" required="false" select="false()"/>

        <p:option name="parameters" as="map(*)?" required="false" select="()">
            <!-- Optional set of already retrieved YATC parameters in effect. 
                 If this is provided it will be used. Otherwise a new set of parameters will be computed using
                 $callerStaticBaseUri. -->
        </p:option>

        <p:option name="callerStaticBaseUri" as="xs:string" required="true">
            <!-- The static base URI for which the set of active parameters must be computed. Used only when
                 $parameters is (). -->
        </p:option>

        <p:option name="hrefAdditionalParameterDocuments" as="xs:string*" required="false" select="()">
            <!-- The href-s of any additional parameter files you want to add. These files do not need to exist or be accessible, 
                 this is checked.  -->
        </p:option>

        <p:option name="parametersMustExist" as="xs:boolean" required="false" select="true()">
            <!-- When true, any non-existent parameter reference raises an error. Otherwise the empty string will be used. -->
        </p:option>

        <p:option name="expandUserFriendly" as="xs:boolean" required="false" select="false()">
            <!-- When true, certain optimizations are made to make parameter substitutions more user friendly, 
                 especially with regard to file/directory names. Use for substitutions in documentation only! -->
        </p:option>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <!-- Get the parameters to use: -->
        <yatcs:get-combined-parameters-map>
            <p:with-option name="parameters" select="$parameters"/>
            <p:with-option name="callerStaticBaseUri" select="$callerStaticBaseUri"/>
            <p:with-option name="hrefAdditionalParameterDocuments" select="$hrefAdditionalParameterDocuments"/>
        </yatcs:get-combined-parameters-map>
        <p:variable name="parametersInEffect" as="map(*)" select="."/>

        <!-- Expand the stuff: -->
        <p:xslt>
            <p:with-input pipe="source@substitute-parameters"/>
            <p:with-input port="stylesheet" href="xsl-yatc-parameters.mod/expand-parameters.xsl"/>
            <p:with-option name="parameters" select="map{
                'substituteInAttributes': $substituteInAttributes,
                'substituteInTextNodes': $substituteInTextNodes,
                'parametersInEffect': $parametersInEffect,
                'parametersMustExist': $parametersMustExist,
                'expandUserFriendly': $expandUserFriendly
             }"/>
        </p:xslt>

    </p:declare-step>

    <!-- ======================================================================= -->

    <p:declare-step type="yatcs:dump-parameters" name="dump-parameters">
        <!-- 
            This simple step acts as a <p:identity> step. In doing so, it dumps the contents of the YATC parameters map 
            on the console. Meant for debugging, in cases where the parameters are not what you expect them to be...
       -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:input port="source" primary="true" sequence="true" content-types="any">
            <p:empty/>
        </p:input>
        <p:output port="result" primary="true" sequence="true" content-types="any" pipe="source@dump-parameters"/>

        <p:option name="parameters" as="map(*)" required="true"/>

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:for-each message="Parameters dump:">
            <p:with-input select="map:keys($parameters)">
                <null/>
            </p:with-input>
            <p:identity message="* {.}=&quot;{$parameters(.)[1]}&quot;"/>
        </p:for-each>
        <p:sink/>

    </p:declare-step>

</p:library>

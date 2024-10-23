<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.cpg_zcz_s1c" version="3.0" exclude-inline-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
       Outputs a list with all available components.
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
    <!-- IMPORTS: -->

    <p:import href="../xplmod/yatc-general.mod.xpl"/>
    <p:import href="../xplmod/component-parameter-names.mod.xpl"/>
    <p:import href="../xplmod/yatc-parameters.mod.xpl"/>

    <!-- ======================================================================= -->
    <!-- PORTS: -->

    <p:output port="result" primary="true" sequence="false" content-types="text">
        <!-- The list with components, as text. Meant to be displayed in a command window. -->
    </p:output>

    <!-- ================================================================== -->
    <!-- MAIN: -->

    <!-- Get the parameters on board: -->
    <yatcs:get-combined-parameters-map silent="true">
        <p:with-option name="callerStaticBaseUri" select="static-base-uri()"/>
    </yatcs:get-combined-parameters-map>
    <p:variable name="parameters" as="map(*)" select="."/>

    <!-- Get a directory list of YATC-internal: -->
    <yatcs:safe-directory-list max-depth="1">
        <p:with-option name="path" select="$parameters($yatcs:parnameYatcInternalDirectory)"/>
    </yatcs:safe-directory-list>
    
    <p:for-each>
        <p:with-input select="/c:directory/c:directory[not(starts-with(@name, '.'))][not(@name = ('data', 'doc', 'tmp', 'build', 'bin', 'env'))]"/>
        <p:identity>
            <p:with-input>
                <p:inline content-type="text/plain" xml:space="preserve">{/*/@name}</p:inline>
            </p:with-input>
        </p:identity>
    </p:for-each>
    <p:text-join separator="&#10;"/>
    
</p:declare-step>

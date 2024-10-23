<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.ckd_1dp_dwb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       Simple test driver for checking yatc-parameters.mod.xpl
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

    <p:import href="../yatc-general.mod.xpl"/>
    <p:import href="../yatc-parameters.mod.xpl"/>
    <p:import href="../component-parameter-names.mod.xpl"/>

    <p:output port="result" primary="true" sequence="false" content-types="xml" serialization="$yatcs:standardXmlSerialization"/>

    <p:option name="parameters" as="map(*)?" required="false" select="()">
        <!--  -->
    </p:option>

    <!-- ================================================================== -->

    <p:variable name="baseUri" as="xs:string" select="resolve-uri('../../../YATC-internal/fhir-2-ada/bin/fhir-2-ada.bat', static-base-uri())"/>

    <yatcs:get-combined-parameters-map>
        <p:with-option name="parameters" select="$parameters"/>
        <p:with-option name="callerStaticBaseUri" select="$baseUri"/>
    </yatcs:get-combined-parameters-map>
    <p:variable name="parameters" as="map(*)" select="."/>
    
    <yatcs:combine-parameters-with-general-engine-configuration>
        <p:with-option name="parameters" select="$parameters"></p:with-option>
    </yatcs:combine-parameters-with-general-engine-configuration>
    <p:variable name="parameters" as="map(*)" select="."/>
    
    <yatcs:dump-parameters>
        <p:with-option name="parameters" select="$parameters"/>
    </yatcs:dump-parameters>

    <p:identity>
        <p:with-input>
            <build-directory>{$parameters($yatcs:parnameYatcBaseDirectory)}</build-directory>
        </p:with-input>
    </p:identity>

</p:declare-step>

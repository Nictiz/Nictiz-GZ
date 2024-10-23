<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.h3y_zj3_rzb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ======================================================================= -->
    <!-- 
        This is the general pipeline for the general engine that compares a build/conversion.
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

    <p:import href="../xplmod/general-engine.mod.xpl"/>

    <!-- ======================================================================= -->
    <!-- PORTS: -->

    <p:output port="result" primary="true" sequence="true" content-types="any" serialization="map{'indent': true()}"/>

    <!-- ======================================================================= -->
    <!-- OPTIONS: -->

    <p:option name="commandLine" as="xs:string" required="false" select="'-help'">
        <!-- The full command line (all arguments in a single string).
             This option is optional because in case of an empty command line, the option will not be set
             (due to the mysterious workings of Windows batch files). -->
    </p:option>

    <p:option name="originatingBatchScript" as="xs:string" required="true">
        <!-- The filename of the originating batch or shell script (this must be in the component's directory). -->
    </p:option>

    <!-- ================================================================== -->

    <!-- Turn what we get as originating batch script into a URI: -->
    <p:variable name="originatingUri" as="xs:string" select="'file:///' || $originatingBatchScript => replace('file:/+', '') => translate('\&quot;', '/')"/>

    <yatcs:general-engine-compare-cw>
        <p:with-option name="commandLine" select="$commandLine"/>
        <p:with-option name="callerStaticBaseUri" select="$originatingUri"/>
    </yatcs:general-engine-compare-cw>

</p:declare-step>

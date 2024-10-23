<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.nqn_chx_gwb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       Simple test driver for the yatcs:copy-documents step in ../yatc-general.mod.xpl
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

    <p:import href="../yatc-general.mod.xpl"/>

    <!-- ======================================================================= -->
    <!-- PORTS: -->

    <!--<p:output port="result" primary="true" sequence="true" content-types="xml" serialization="$yatcs:standardXmlSerialization"/>-->

    <!-- ======================================================================= -->
    <!-- OPTIONS: -->

    <p:option name="hrefSource" as="xs:string" required="false" select="resolve-uri('../../../art_decor/production-ada-instances/lab/3.0.0/data', static-base-uri())"/>

    <p:option name="hrefTarget" as="xs:string" required="false" select="resolve-uri('../../tmp/COPYDOCUMENTS', static-base-uri())"/>


    <!-- ================================================================== -->
    <!-- MAIN: -->

    <yatcs:load-documents-from-disk name="load1">
        <p:with-option name="hrefSource" select="$hrefSource"/>
    </yatcs:load-documents-from-disk>
    <yatcs:load-documents-from-disk name="load2">
        <p:with-option name="hrefSource" select="resolve-uri('../../../art_decor/production-ada-instances/cio/1.0.0/data/', static-base-uri())"/>
    </yatcs:load-documents-from-disk>
    
    <p:identity >
        <p:with-input pipe=" @load2"></p:with-input>
    </p:identity>

    <p:identity message="SOURCE: {$hrefSource}"/>
    <p:identity message="TARGET: {$hrefTarget}"/>

    <p:variable name="count" as="xs:integer" select="count(collection())" collection="true"/>
    <p:identity message="COUNT LOADED: {$count}"/>

    <yatcs:copy-documents loadResults="false" reportCount="true">
        <p:with-option name="hrefSource" select="$hrefSource"/>
        <p:with-option name="hrefTarget" select="$hrefTarget"/>
    </yatcs:copy-documents>
    
    <p:variable name="count" as="xs:integer" select="count(collection())" collection="true"/>
    <p:identity message="DIRECT COUNT AFTER COPY: {$count}"/>
    <yatcs:report-count/>
    
</p:declare-step>

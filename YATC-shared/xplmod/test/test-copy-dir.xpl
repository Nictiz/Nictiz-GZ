<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.nqn_chx_gwb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       Simple test driver for the yatcs:copy-dir step in ../yatc-general.mod.xpl
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

    <p:output port="result" primary="true" sequence="true" content-types="any" serialization="$yatcs:standardXmlSerialization"/>

    <!-- ======================================================================= -->
    <!-- OPTIONS: -->

    <p:option name="hrefSource" as="xs:string" required="false" select="'file:/C:/xdata/Nictiz/art_decor/ada_2_wiki/mp/9.0.7/beschikbaarstellen_medicatiegegevens/html_instance_kwal/assets'"/>

    <p:option name="hrefTarget" as="xs:string" required="false" select="'file:/C:/xdata/Nictiz/tmp/assets'"/>


    <!-- ================================================================== -->
    <!-- MAIN: -->

    <!--<yatcs:copy-dir>
        <p:with-input>
            <COPYDIR/>
        </p:with-input>
        <p:with-option name="hrefSource" select="$hrefSource"/>
        <p:with-option name="hrefTarget" select="$hrefTarget"/>
        <p:with-option name="includeFilters" select="('MMB')"/>
    </yatcs:copy-dir>-->

    <yatcs:copy-dir-from-patterns recurse="true">
        
        <p:with-option name="hrefSource" select="$hrefSource"/>
        <p:with-option name="hrefTarget" select="$hrefTarget"/>
        <p:with-option name="copyPatternsElement" select="/*">
            <p:inline>
                <copy-data>
                    <exclude pattern="TEST"/>
                </copy-data>
            </p:inline>
        </p:with-option>
        <p:with-option name="loadResults" select="true()"/>
    </yatcs:copy-dir-from-patterns>

    <p:variable name="count" as="xs:integer" select="count(collection())" collection="true" />
    <p:identity message="COUNT: {$count}"></p:identity>

</p:declare-step>

<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.nqn_chx_gwb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       Simple test driver for the yatcs:safe-directory-list step in ../yatc-general.mod.xpl
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

    <p:option name="hrefSource" as="xs:string" required="false" select="'file:/C:/Data/Erik/work/Nictiz/new/YATC-shared/xplmod/'"/>

    <p:option name="hrefTarget" as="xs:string" required="false" select="'file:/C:/COPYPATH'"/>


    <!-- ================================================================== -->
    <!-- MAIN: -->

    <yatcs:safe-directory-list prepare="true" >
        <p:with-option name="path" select="$hrefSource"/>
        <p:with-option name="detailed" select="false()"/>
        <p:with-option name="max-depth" select="'unbounded'"/>
        <p:with-option name="include-filter" select="'^doc1\.xml$'"/>
        <p:with-option name="exclude-filter" select="()"/>
        <!--<p:with-option name="hrefTarget" select="$hrefTarget"/>-->
    </yatcs:safe-directory-list>

</p:declare-step>

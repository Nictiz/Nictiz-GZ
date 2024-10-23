<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <!-- ======================================================================= -->
    <!-- 
       Schematron schema for additional validation of some aspects of the distribute-data document(s).
       
       It assumes that the document is valid against ../xsd/distribute-data.xsd.
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

    <ns prefix="yatci" uri="https://nictiz.nl/ns/YATC-internal"/>

    <let name="targetAsSourceMacro" value="'$SOURCE'"/>
    <let name="targetSourceNameMacro" value="'$SOURCENAME'"/>

    <!-- ======================================================================= -->
    <!-- Distribution names must be unique: -->

    <pattern>
        <rule context="yatci:distribution/@name">
            <let name="distributionName" value="string(.)"/>
            <assert test="count(/*//yatci:distribution/@name[. eq $distributionName]) eq 1">Distribution name "<value-of select="$distributionName"/>" not unique</assert>
        </rule>
    </pattern>

    <!-- ======================================================================= -->
    <!-- Check the include/exclude elements in copy-patterns: -->

    <include href="../../../YATC-shared/schmod/copy-pattern.mod.sch"/>

    <!-- ======================================================================= -->
    <!-- Forbid the use of @href-target="$SOURCE" or @href-target using $SOURCENAME when there is no @href-source: -->

    <pattern>
        <rule context="*[@href-target eq $targetAsSourceMacro]">
            <assert test="exists(@href-source)">Invalid use of href-target="<value-of select="$targetAsSourceMacro"/>": @href-source not specified here</assert>
        </rule>
        <rule context="*[contains(@href-target, $targetSourceNameMacro)]">
            <assert test="exists(@href-source)">Invalid use of <value-of select="$targetSourceNameMacro"/> in @href-target: @href-source not specified here</assert>
        </rule>
    </pattern>

    <!-- ======================================================================= -->
    <!-- Forbid additional text documents with both an @href-source and inline: -->

    <pattern>
        <rule context="yatci:additional-xml-document">
            <assert test="exists(@href-source) or exists(*)">Missing @href-source or inline document</assert>
            <assert test="not(exists(@href-source) and exists(*))">Both @href-source and inline document present</assert>
        </rule>
    </pattern>

</schema>

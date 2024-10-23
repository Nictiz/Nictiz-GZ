<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <!-- ======================================================================= -->
    <!-- 
       Schematron schema for additional validation of some aspects of a general engine application data file.
       
       It assumes that the document is valid against ../xsd/fhir-2-ada-data.xsd.
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

    <!-- All application/version combinations must be unique: -->
    <include href="../../schmod/application-version.mod.sch"/>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <!-- Check the include/exclude elements in copy-patterns: -->
    <include href="../../schmod/copy-pattern.mod.sch"/>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <!-- Check that @directory-id values are unique: -->
    <include href="../../schmod/directory-id.mod.sch"/>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <!-- Directory references in @directory attributes must exist: -->
    <include href="../../schmod/directory-id-reference.mod.sch"/>

    <!-- ======================================================================= -->
    <!-- Action related: -->
    
    <!-- All action names must be unique: -->
    <pattern>
        <rule context="*:application/*:action/@name">
            <let name="actionName" value="string(.)"/>
            <let name="applicationActionNames" value="../../*:action/@name/string()"/>
            <assert test="count($applicationActionNames[. eq $actionName]) eq 1">Action name "<value-of select="$actionName"/>" not unique</assert>
        </rule>
    </pattern>

    <!-- Only one default action per application: -->
    <pattern>
        <rule context="*:application/*:action/@default[xs:boolean(.)]">
            <let name="defaultActions" value="../../*:action[xs:boolean(@default)]"/>
            <assert test="count($defaultActions) eq 1">Multiple actions flagged as default</assert>
        </rule>
    </pattern>

    <!-- Check the names of the dependent actions: -->
    <pattern>
        <rule context="*:application/*:action/@depends-on">
            <let name="dependentActionNames" value="tokenize(string(.), '\s+')[.]"/>
            <let name="applicationActionNames" value="../../*:action/@name/string()"/>
            <assert test="count($dependentActionNames) eq count(distinct-values($dependentActionNames))">@depends-on contains multiple occurrences of the same dependent action(s)</assert>
            <assert test="every $a in $dependentActionNames satisfies ($a = $applicationActionNames)">Dependent action(s) not found: <value-of select="string-join(distinct-values($dependentActionNames[not(. = $applicationActionNames)]), ', ')"/></assert>
        </rule>
    </pattern>

</schema>

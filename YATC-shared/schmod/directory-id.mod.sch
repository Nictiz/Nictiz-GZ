<?xml version="1.0" encoding="UTF-8"?>
<pattern xmlns="http://purl.oclc.org/dsdl/schematron">
    <!-- ======================================================================= -->
    <!-- 
       Schematron pattern that checks whether a @directory-id is unique.
       
       See ../xsdmod/general.mod.xsd for the definition of these elements
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
    
    <rule context="@directory-id">
        <let name="id" value="string(.)"/>
        <!-- A @directory-id must be unique within an application context: -->
        <assert test="count(ancestor::*:application//descendant-or-self::*/@directory-id[. eq $id]) eq 1">Directory identifier "<value-of select="$id"/>" not unique</assert>
    </rule>
    
</pattern>

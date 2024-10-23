<?xml version="1.0" encoding="UTF-8"?>
<pattern xmlns="http://purl.oclc.org/dsdl/schematron">
    <!-- ======================================================================= -->
    <!-- 
       Schematron pattern that checks application data files (files with /*/*:application elements) 
       for the application @name and @version combination to be unique.
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
    
    <rule context="/*/*:application">
        <let name="application" value="string(@name)"/>
        <let name="version" value="string(@version)"/>
        <assert test="count(preceding-sibling::*:application[@name eq $application][@version eq $version]) eq 0">Application/version <value-of select="$application"/>/<value-of select="$version"/> already defined</assert>
    </rule>
    
</pattern>

<?xml version="1.0" encoding="UTF-8"?>
<pattern xmlns="http://purl.oclc.org/dsdl/schematron">
    <!-- ======================================================================= -->
    <!-- 
       Schematron pattern that checks the attributes on copy-pattern elements
       (include/exclude elements, for instance: <include glob=…"/>).
       
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

    <!-- Remark: When testing include elements, we have to make an exception for the xi:include elements, which have a different model!  -->
    <rule context="*:include[namespace-uri() ne xs:anyURI('http://www.w3.org/2001/XInclude')] | *:exclude">
        <assert test="exists(@glob) or exists(@pattern)">Missing @glob or @pattern on <value-of select="local-name()"/> element</assert>
        <assert test="not(exists(@glob) and exists(@pattern))">Both @glob and @pattern present on <value-of select="local-name()"/> element, only one of these is allowed</assert>
    </rule>

</pattern>

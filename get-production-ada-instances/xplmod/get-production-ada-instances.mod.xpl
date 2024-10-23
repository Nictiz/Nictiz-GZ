<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:yatci="https://nictiz.nl/ns/YATC-internal" xmlns:local="#local.mp5_xfy_2wb" version="3.0" exclude-inline-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       XProc module with generic code for use in the get-production-ada-instances component of YATC-internal.
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

    <p:declare-step type="yatci:get-application-ada-retrieval-data">
        <!-- 
            This step retrieves the application ADA retrieval data and returns this on its result port as an XML document.
            - Processes XIncludes (if any) 
            - Validates the result against ../xsd/application-ada-retrieval-data.xsd and ../sch/application-ada-retrieval-data.sch
            - Finalizes (enhances) the output with all kinds of fully expanded directory/filenames, defaults filled in, etc.
            
            The result can be pruned on application and version information. 
            
            There are situations in the calling code where this document might be already loaded. If so, pass this 
            already loaded document in the $applicationAdaRetrievalData parameter. If provided, this document will be passed 
            unchanged (and unchecked!).
        -->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <p:import href="../../../YATC-shared/xplmod/yatc-application-data.mod.xpl"/>
        <p:import href="component-parameter-names.mod.xpl"/>

        <p:output port="result" primary="true" sequence="false">
            <!-- The ADA retrieval data.  -->
        </p:output>

        <p:option name="parameters" as="map(xs:string, xs:string*)" required="true">
            <!-- The YATC parameters in effect. -->
        </p:option>

        <p:option name="applicationAdaRetrievalData" as="document-node()?" required="false" select="()">
            <!-- There are situations that we already might have retrieved the application ADA retrieval data. If so, pass 
                 this as a document using this option. Its contents will be returned unchanged. This means: unpruned
                 and unvalidated! It's up to the caller to make sure the information is correct!
            -->
        </p:option>

        <p:option name="application" as="xs:string?" required="false" select="()">
            <!-- Prune the document for all applications with a name that does not match $application.
                 If this option is empty or $yatcs:allIndicator, no pruning on application name will take place.
            -->
        </p:option>

        <p:option name="version" as="xs:string?" required="false" select="()">
            <!-- Prune the document for all applications with a version that does not match $version.
                 If this option is empty or $yatcs:allIndicator, no pruning on version will take place.
            -->
        </p:option>
      
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

        <yatcs:get-application-data>
            <p:with-option name="parameters" select="$parameters"/>
            <p:with-option name="retrievedData" select="$applicationAdaRetrievalData"/>
            <p:with-option name="parnameDataDocument" select="$yatci:parnameApplicationAdaRetrievalDataDocument"/>
            <p:with-option name="hrefSchema" select="resolve-uri('../xsd/application-ada-retrieval-data.xsd', static-base-uri())"/>
            <p:with-option name="hrefSchematron" select="resolve-uri('../sch/application-ada-retrieval-data.sch', static-base-uri())"/>
            <p:with-option name="hrefFinalizationStylesheet" select="resolve-uri('xsl-get-production-ada-instances.mod/finalize-appication-ada-retrieval-data.xsl', static-base-uri())"/>
            <p:with-option name="application" select="$application"/>
            <p:with-option name="version" select="$version"/>
        </yatcs:get-application-data>

    </p:declare-step>

</p:library>

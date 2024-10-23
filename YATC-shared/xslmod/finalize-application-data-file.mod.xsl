<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.rbc_rtd_jwb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
        Module with common templates for the processing of application data files. 
        - Adds several additional attributes to elements (all beginning with an underscore) with
          computed directory and file paths.
        - Expands any @href and @directory attributes and replaces them with a full absolute path. This includes  
          optional expansion of directory identifiers.
        - Makes sure that include/exclude @glob attributes (UNIX globs) are translated in to 
          @pattern attributes (XPath regexps). Also takes care of expanding $USECASE to the real usecase
          name (if any).

        Both relative and absolute file/directory names are added to enable compare operations 
        (against results in some other directory).
        
        All XML constructs that are handled here are defined in ../xsdmod/application-data-file.mod.xsd
        
        Working with this relies on a number of tunnel parameters passed through. Please check the code 
        which ones are necessary.
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
    <!-- GLOBAL DECLARATIONS: -->

    <!-- A list of default values for some of the attributes. 
         WARNING: Be sure to update these when the default values in the schema changes!
    -->
    <xsl:variable name="yatcs:defaultCopyDataTargetSubdir" as="xs:string" select="'ada_instance'">
        <!-- Default value for copy-data/@target-subdir -->
    </xsl:variable>
    <xsl:variable name="yatcs:defaultCopyDataSourceSubdir" as="xs:string" select="$yatcs:defaultCopyDataTargetSubdir">
        <!-- Default value for copy-data/@source-subdir -->
    </xsl:variable>
    <xsl:variable name="yatcs:defaultCopyProjectSchemasTargetSubdir" as="xs:string" select="'ada_schemas'">
        <!--  Default value for copy-project-schemas/@target-subdir -->
    </xsl:variable>
    <xsl:variable name="yatcs:defaultCopyAdaMeta" as="xs:boolean" select="true()">
        <!-- Default value for @copy-ada-meta -->
    </xsl:variable>

    <!-- The markers when referencing a directory-id: -->
    <xsl:variable name="yatcs:directoryIdMarkerTarget" as="xs:string" select="'@'"/>
    <xsl:variable name="yatcs:directoryIdMarkerSource" as="xs:string" select="'^'"/>
    <xsl:variable name="yatcs:directoryIdMarkerDataFile" as="xs:string" select="'#'"/>
    
    <xsl:variable name="documentBaseUri" as="xs:string" select="base-uri(/)"/>

    <!-- ======================================================================= -->
    <!-- MAIN ELEMENTS: -->

    <xsl:template match="/*">
        <!-- Handles the root of the data document. 
        
             Supply the following tunnel parameters:
             - baseTargetDir: The base target directory to use. For example: 
                 file:///C:/Data/Erik/work/Nictiz/new/art_decor/production-ada-instances
             - baseSourceDir: The base source directory to use.
             - parameters: The (standard) map with YATC parameters.
        
        -->
        <xsl:param name="baseTargetDir" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="baseSourceDir" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="parameters" as="map(*)" required="true" tunnel="true"/>

        <xsl:copy>
            <xsl:attribute name="_base-target-dir" select="$baseTargetDir"/>
            <xsl:attribute name="_base-source-dir" select="$baseSourceDir"/>
            <xsl:apply-templates select="@* | node()">
                <xsl:with-param name="baseTargetDir" as="xs:string" select="$baseTargetDir" tunnel="true"/>
                <xsl:with-param name="baseSourceDir" as="xs:string" select="$baseSourceDir" tunnel="true"/>
                <xsl:with-param name="parameters" as="map(*)" select="$parameters" tunnel="true"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:application">
        <!-- Handles the standard application element.
            
             Supply the following tunnel parameters:
             - baseTargetDir: The basic output directory to use. For example: 
                 file:///C:/Data/Erik/work/Nictiz/new/art_decor/production-ada-instances  
             - parameters: The (standard) map with YATC parameters. 
             
             Remark: The following processing assumes that the *order* of the child elements doesn't matter for the 
                     processing. We first process and output everything containing @directory-id attributes and use this result 
                     to process the rest, resolving any (optional) directory-id reference.
        -->
        <xsl:param name="baseTargetDir" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="baseSourceDir" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="altSourceApplication" as="xs:string?" required="false" tunnel="true" select="()">
            <!-- Only set this when there's a different application for the source data. -->
        </xsl:param>
        <xsl:param name="altSourceVersion" as="xs:string?" required="false" tunnel="true" select="()">
            <!-- Only set this when there's a different version for the source data. -->
        </xsl:param>

        <xsl:variable name="application" as="xs:string" select="xs:string(@name)"/>
        <xsl:variable name="version" as="xs:string?" select="xs:string(@version)"/>
        <xsl:variable name="sourceVersion" as="xs:string?" select="($altSourceVersion, $version)[1]"/>
        <xsl:variable name="sourceApplication" as="xs:string" select="($altSourceApplication, $application)[1]"/>
        <xsl:variable name="sourceProjectName" as="xs:string" select="(@source-project-name, $application)[1]"/>

        <xsl:variable name="applicationTargetDirRel" as="xs:string" select="yatcs:href-concat(($application, $version))"/>
        <xsl:variable name="applicationTargetDir" as="xs:string" select="yatcs:href-concat(($baseTargetDir, $applicationTargetDirRel))"/>
        <xsl:variable name="applicationSourceDir" as="xs:string" select="yatcs:href-concat(($baseSourceDir, $sourceApplication, $sourceVersion))"/>

        <xsl:variable name="childElementsWithDirectoryIds" as="element()*" select="*[exists(descendant-or-self::*/@directory-id)]"/>
        <xsl:variable name="childElementsWithoutDirectoryIds" as="element()*" select="* except $childElementsWithDirectoryIds"/>

        <xsl:copy>
            <xsl:attribute name="_target-dir" select="$applicationTargetDir"/>
            <xsl:attribute name="_source-dir" select="$applicationSourceDir"/>
            <xsl:attribute name="_target-dir-rel" select="$applicationTargetDirRel"/>
            <xsl:apply-templates select="@*"/>

            <!-- First process (and output) all child elements that contain @directory-id attributes. Use this result to get 
                 a map for resolving these attributes when processing the rest. -->
            <xsl:variable name="processsedElementsWithDirectoryIds" as="element()*">
                <xsl:apply-templates select="$childElementsWithDirectoryIds">
                    <xsl:with-param name="applicationTargetDir" as="xs:string" select="$applicationTargetDir" tunnel="true"/>
                    <xsl:with-param name="applicationTargetDirRel" as="xs:string" select="$applicationTargetDirRel" tunnel="true"/>
                    <xsl:with-param name="applicationSourceDir" as="xs:string" select="$applicationSourceDir" tunnel="true"/>
                    <xsl:with-param name="sourceProjectName" as="xs:string" select="$sourceProjectName" tunnel="true"/>
                </xsl:apply-templates>
            </xsl:variable>
            <xsl:sequence select="$processsedElementsWithDirectoryIds"/>

            <!-- Now process all other elements, using a map with directory identifiers for resolving these: -->
            <xsl:apply-templates select="$childElementsWithoutDirectoryIds">
                <xsl:with-param name="applicationTargetDir" as="xs:string" select="$applicationTargetDir" tunnel="true"/>
                <xsl:with-param name="applicationTargetDirRel" as="xs:string" select="$applicationTargetDirRel" tunnel="true"/>
                <xsl:with-param name="applicationSourceDir" as="xs:string" select="$applicationSourceDir" tunnel="true"/>
                <xsl:with-param name="sourceProjectName" as="xs:string" select="$sourceProjectName" tunnel="true"/>
                <xsl:with-param name="mappingDirectoryIdentifiers" as="map(xs:string, xs:string+)" select="yatcs:get-directory-identifiers-map($processsedElementsWithDirectoryIds)" tunnel="true"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

    <!-- ======================================================================= -->
    <!-- HANDLING SETUP: -->

    <xsl:template match="*:setup">
        <!-- Expands a standard <setup> element. 
            
             Supply the following tunnel parameters:
             - applicationTargetDir: The absolute application output directory. For instance: 
                 file:///C:/Data/Erik/work/Nictiz/new/art_decor/production-ada-instances/lab/3.0.0
             - applicationTargetDirRel: The relative application output directory. For instance: cio/1.0.0
             - sourceProjectName: The (default) source project name (used for copying schemas from). For instance: lab
             - addUsecaseToApplicationSourceDir: (optional) Whether to add the usecase name to the *source* directory computations. 
                 Default is true.
             - defaultSourceSubdir: The default value for the @source-subdir attribute (if any, can be empty).
             - parameters: The (standard) map with YATC parameters.
             
        -->
        <xsl:param name="applicationTargetDir" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="applicationTargetDirRel" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="applicationSourceDir" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="sourceProjectName" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="addUsecaseToApplicationSourceDir" as="xs:boolean" required="false" select="true()" tunnel="true"/>

        <xsl:variable name="usecaseName" as="xs:string?" select="if (string(@usecase) eq '#none') then () else xs:string(@usecase)"/>
        <xsl:variable name="usecaseTargetDir" as="xs:string" select="yatcs:href-concat(($applicationTargetDir, $usecaseName))"/>
        <xsl:variable name="usecaseTargetDirRel" as="xs:string" select="yatcs:href-concat(($applicationTargetDirRel, $usecaseName))"/>
        <xsl:variable name="sourceProjectName" as="xs:string" select="(@source-project-name, $sourceProjectName)[1]"/>
        <xsl:variable name="usecaseSourceDir" as="xs:string" select="if ($addUsecaseToApplicationSourceDir) then yatcs:href-concat(($applicationSourceDir, $usecaseName)) else $applicationSourceDir"/>

        <xsl:copy>
            <xsl:attribute name="_target-dir" select="$usecaseTargetDir"/>
            <xsl:attribute name="_target-dir-rel" select="$usecaseTargetDirRel"/>
            <xsl:attribute name="_source-dir" select="$usecaseSourceDir"/>
            <xsl:apply-templates select="@* | node()">
                <xsl:with-param name="usecaseTargetDir" as="xs:string" select="$usecaseTargetDir" tunnel="true"/>
                <xsl:with-param name="usecaseTargetDirRel" as="xs:string" select="$usecaseTargetDirRel" tunnel="true"/>
                <xsl:with-param name="usecaseSourceDir" as="xs:string" select="$usecaseSourceDir" tunnel="true"/>
                <xsl:with-param name="usecaseName" as="xs:string?" tunnel="true" select="$usecaseName"/>
                <xsl:with-param name="sourceProjectName" as="xs:string" select="$sourceProjectName"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:empty-root-directory">
        <xsl:param name="applicationTargetDirRel" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="applicationTargetDir" as="xs:string" required="true" tunnel="true"/>

        <xsl:variable name="targetSubdirName" as="xs:string" select="string(@target-subdir)"/>
        <xsl:copy>
            <xsl:attribute name="_target-dir-rel" select="yatcs:href-concat(($applicationTargetDirRel, $targetSubdirName))"/>
            <xsl:attribute name="_target-dir" select="yatcs:href-concat(($applicationTargetDir, $targetSubdirName))"/>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:setup/*:copy-data">
        <xsl:param name="usecaseTargetDirRel" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="usecaseTargetDir" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="usecaseSourceDir" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="defaultSourceSubdir" as="xs:string?" required="false" select="$yatcs:defaultCopyDataSourceSubdir" tunnel="true"/>

        <xsl:variable name="targetSubdirName" as="xs:string" select="(@target-subdir, $yatcs:defaultCopyDataTargetSubdir)[1]"/>
        <xsl:variable name="sourceSubdirName" as="xs:string?" select="(@source-subdir, $defaultSourceSubdir)[1]"/>
        <xsl:copy>
            <xsl:attribute name="_target-dir-rel" select="yatcs:href-concat(($usecaseTargetDirRel, $targetSubdirName))"/>
            <xsl:attribute name="_target-dir" select="yatcs:href-concat(($usecaseTargetDir, $targetSubdirName))"/>
            <xsl:attribute name="_source-dir" select="yatcs:href-concat(($usecaseSourceDir, $sourceSubdirName))"/>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:setup/*:copy-project-schemas">
        <xsl:param name="usecaseTargetDirRel" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="usecaseTargetDir" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="sourceProjectName" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="parameters" as="map(*)" required="true" tunnel="true"/>

        <xsl:variable name="doCopyAdaMeta" as="xs:boolean" select="yatcs:str2bln(@copy-ada-meta, $yatcs:defaultCopyAdaMeta)"/>
        <xsl:variable name="sourceProjectName" as="xs:string" select="(@source-project-name, $sourceProjectName)[1]"/>
        <xsl:variable name="subdirName" as="xs:string" select="(@target-subdir, $yatcs:defaultCopyProjectSchemasTargetSubdir)[1]"/>
        <xsl:variable name="containsIncludeElements" as="xs:boolean" select="exists(*:include)"/>
        <xsl:copy>
            <xsl:attribute name="source-project-name" select="$sourceProjectName"/>
            <xsl:attribute name="_source-dir" select="yatcs:href-concat(($parameters($yatcs:parnameProjectsBaseStorageDirectory), $sourceProjectName, 'schemas'))"/>
            <xsl:attribute name="_target-dir-rel" select="yatcs:href-concat(($usecaseTargetDirRel, $subdirName))"/>
            <xsl:attribute name="_target-dir" select="yatcs:href-concat(($usecaseTargetDir, $subdirName))"/>
            <xsl:apply-templates select="@* | node()"/>
            <xsl:if test="$doCopyAdaMeta and $containsIncludeElements">
                <!-- If we have to copy the ada_meta.xsd file, simply add an additional include to the list 
                     for this (in the right namespace, the same as its parent!)
                     If there were no include elements, we do not have to do this, because in that case *all* files are included. -->
                <xsl:element name="include" namespace="{namespace-uri()}">
                    <xsl:attribute name="pattern" select="'^ada_meta\.xsd$'"/>
                </xsl:element>

            </xsl:if>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:setup/*:empty-directory">
        <xsl:param name="usecaseTargetDirRel" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="usecaseTargetDir" as="xs:string" required="true" tunnel="true"/>

        <xsl:variable name="targetSubdirName" as="xs:string" select="string(@target-subdir)"/>
        <xsl:copy>
            <xsl:attribute name="_target-dir-rel" select="yatcs:href-concat(($usecaseTargetDirRel, $targetSubdirName))"/>
            <xsl:attribute name="_target-dir" select="yatcs:href-concat(($usecaseTargetDir, $targetSubdirName))"/>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:setup/*:copy-directory">
        <xsl:param name="usecaseTargetDirRel" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="usecaseTargetDir" as="xs:string" required="true" tunnel="true"/>

        <xsl:variable name="targetSubdirName" as="xs:string" select="string(@target-subdir)"/>

        <xsl:copy>
            <xsl:attribute name="_target-dir-rel" select="yatcs:href-concat(($usecaseTargetDirRel, $targetSubdirName))"/>
            <xsl:attribute name="_target-dir" select="yatcs:href-concat(($usecaseTargetDir, $targetSubdirName))"/>
            <!-- We want the expanded @directory value as source directory setting, so we expand things 
                 first into a variable before using it: -->
            <xsl:variable name="expandedContents" as="element()*">
                <contents>
                    <xsl:apply-templates select="@* | node()"/>
                </contents>
            </xsl:variable>
            <xsl:attribute name="_source-dir" select="$expandedContents/@directory"/>
            <xsl:sequence select="$expandedContents/(@* | node())"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*:setup/*:retrieve">
        <xsl:param name="usecaseTargetDirRel" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="usecaseTargetDir" as="xs:string" required="true" tunnel="true"/>

        <xsl:variable name="targetSubdirName" as="xs:string" select="(@target-subdir, $yatcs:defaultCopyDataTargetSubdir)[1]"/>
        <xsl:variable name="targetDir" as="xs:string" select="yatcs:href-concat(($usecaseTargetDir, $targetSubdirName))"/>
        <xsl:copy>
            <xsl:attribute name="_target-dir-rel" select="yatcs:href-concat(($usecaseTargetDirRel, $targetSubdirName))"/>
            <xsl:attribute name="_target-dir" select="$targetDir"/>
            <xsl:attribute name="_target-filename" select="yatcs:href-concat(($targetDir, @name))"/>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="yatcs:get-directory-identifiers-map" as="map(xs:string, xs:string+)">
        <!-- Creates a map with directory identifier to directory mapping, appropriate for use in expanding @directory attributes. 
             The value of each entry is a triple: The absolute and relative target directory names and the absolute source 
             directory name.
             Source directories are optional. If there isn't one, its value will be the empty string.
        -->
        <xsl:param name="elements" as="element()*"/>

        <xsl:map>
            <xsl:for-each select="$elements/descendant-or-self::*[exists(@directory-id) and exists(@_target-dir) and exists(@_target-dir-rel)]">
                <xsl:map-entry key="string(@directory-id)" select="(string(@_target-dir), string(@_target-dir-rel), string(@_source-dir))"/>
            </xsl:for-each>
        </xsl:map>
    </xsl:function>

    <!-- ======================================================================= -->
    <!-- HANDLING INCLUDE/EXCLUDE PATTERNS: -->
    
    <xsl:import href="handle-include-exclude-glob-pattern-attributes.xsl"/>

    <!-- ======================================================================= -->
    <!-- EXPAND ANY @href AND @directory: -->

    <xsl:template match="@href">
        <!-- The @href attribute is relative to the location of the data input file. 
             For consistency reasons (a @directory can also start with a #), a leading # will be removed/ignored.
        -->
        <xsl:variable name="href-raw" as="xs:string" select="string(.)"/>
        <xsl:variable name="href" as="xs:string" select="if (starts-with($href-raw, '#')) then substring($href-raw, 2) else $href-raw"/>
        <xsl:attribute name="{local-name()}" select="local:resolve-uri-against-data-file-location(.., $href)"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@directory">
        <!-- An @directory is relative to the application's output directory (unless it starts with an #, 
             then its relative to the data file location). Resolve this into an absolute name.
             
             Supply the following tunnel parameters:
             - applicationTargetDir: The absolute application output directory. For instance: 
                 file:///C:/Data/Erik/work/Nictiz/new/art_decor/production-ada-instances/lab/3.0.0
             - applicationTargetDirRel: The relative application output directory. For instance: cio/1.0.0
             - mappingDirectoryIdentifiers: (optional) The map with directory identifiers as produced by
                 yatcs:get-directory-identifiers-map(). Used for expanding directory identifier references
                 (for instance the @dirid part in <… directory="@dirid/something"/>)
        -->
        <xsl:param name="applicationTargetDir" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="applicationTargetDirRel" as="xs:string" required="true" tunnel="true"/>
        <xsl:param name="mappingDirectoryIdentifiers" as="map(xs:string, xs:string+)?" required="false" select="()" tunnel="true"/>

        <xsl:variable name="directory" as="xs:string" select="."/>

        <xsl:variable name="startsWithDirectoryReferenceDataFile" as="xs:boolean" select="starts-with($directory, $yatcs:directoryIdMarkerDataFile)"/>
        <xsl:variable name="startsWithDirectoryReferenceTarget" as="xs:boolean" select="starts-with($directory, $yatcs:directoryIdMarkerTarget)"/>
        <xsl:variable name="startsWithDirectoryReferenceSource" as="xs:boolean" select="starts-with($directory, $yatcs:directoryIdMarkerSource)"/>
        <xsl:variable name="startsWithDirectoryReference" as="xs:boolean" select="$startsWithDirectoryReferenceSource or $startsWithDirectoryReferenceTarget"/>

        <xsl:choose>

            <xsl:when test="$startsWithDirectoryReferenceDataFile">
                <xsl:attribute name="{local-name()}" select="local:resolve-uri-against-data-file-location(.., substring($directory, 2))"/>
                <!-- We don't create a relative filename because there isn't one. Relative filenames are for results and trigger
                     comparison operations. When you refer to a directory relative to the data file (like here) it is a 
                     constant/fixed thing and doesn’t need comparing.
                -->
            </xsl:when>

            <!-- We find a directory name with an identifier reference, but at an inappropriate location. Error. -->
            <xsl:when test="$startsWithDirectoryReference and empty($mappingDirectoryIdentifiers)">
                <xsl:call-template name="yatcs:raise-error">
                    <xsl:with-param name="msg-parts" select="('Directory identifier reference not allowed here: ', yatcs:q($directory))"/>
                </xsl:call-template>
            </xsl:when>

            <!-- A directory name with a target identifier reference. Resolve this. -->
            <xsl:when test="$startsWithDirectoryReferenceTarget and exists($mappingDirectoryIdentifiers)">
                <xsl:variable name="directoryIdentifier" as="xs:string" select="replace($directory, '^' || yatcs:str2regexp($yatcs:directoryIdMarkerTarget) || '(\c+).*$', '$1')"/>
                <xsl:variable name="directorySuffix" as="xs:string" select="replace($directory, '^' || yatcs:str2regexp($yatcs:directoryIdMarkerTarget) || '\c+/?(.*)$', '$1')"/>
                <xsl:choose>
                    <xsl:when test="map:contains($mappingDirectoryIdentifiers, $directoryIdentifier)">
                        <xsl:attribute name="{local-name()}" select="yatcs:href-concat(($mappingDirectoryIdentifiers($directoryIdentifier)[1], $directorySuffix))"/>
                        <xsl:attribute name="_{local-name()}-rel" select="yatcs:href-concat(($mappingDirectoryIdentifiers($directoryIdentifier)[2], $directorySuffix))"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="yatcs:raise-error">
                            <xsl:with-param name="msg-parts" select="('Directory identifier not found: ', yatcs:q($directoryIdentifier))"/>
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <!-- A directory name with a source identifier reference. Resolve this. -->
            <xsl:when test="$startsWithDirectoryReferenceSource and exists($mappingDirectoryIdentifiers)">
                <xsl:variable name="directoryIdentifier" as="xs:string" select="replace($directory, '^' || yatcs:str2regexp($yatcs:directoryIdMarkerSource) || '(\c+).*$', '$1')"/>
                <xsl:variable name="directorySuffix" as="xs:string" select="replace($directory, '^' || yatcs:str2regexp($yatcs:directoryIdMarkerSource) || '\c+/?(.*)$', '$1')"/>
                <xsl:choose>
                    <xsl:when test="map:contains($mappingDirectoryIdentifiers, $directoryIdentifier)">
                        <xsl:attribute name="{local-name()}" select="yatcs:href-concat(($mappingDirectoryIdentifiers($directoryIdentifier)[3], $directorySuffix))"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="yatcs:raise-error">
                            <xsl:with-param name="msg-parts" select="('Directory identifier not found: ', yatcs:q($directoryIdentifier))"/>
                        </xsl:call-template>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <!-- Absolute directory name, just copy (and the relative name is the same). -->
            <xsl:when test="yatcs:href-is-absolute(.)">
                <xsl:copy/>
                <xsl:attribute name="_{local-name()}-rel" select="."/>
            </xsl:when>

            <!-- Relative directory name without an identifier reference. Make absolute. -->
            <xsl:otherwise>
                <xsl:attribute name="{local-name()}" select="yatcs:href-concat(($applicationTargetDir, .))"/>
                <xsl:attribute name="_{local-name()}-rel" select="yatcs:href-concat(($applicationTargetDirRel, .))"/>
            </xsl:otherwise>

        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:resolve-uri-against-data-file-location" as="xs:string">
        <!-- Resolves a relative URI against the location of the data files (the location where it is specified).
             But since this can be created from includes (using xi:include href="..."/> elements), we need to process 
             any @xml:base attributes properly. -->
        <xsl:param name="parent-element" as="element()"/>
        <xsl:param name="uri" as="xs:string"/>

        <xsl:variable name="xmlBase" as="xs:string" select="(($parent-element/ancestor-or-self::*/@xml:base)[last()], $documentBaseUri)[1]"/>
        <xsl:sequence select="resolve-uri($uri, $xmlBase) => yatcs:href-canonical()"/>
    </xsl:function>

    <!-- ======================================================================= -->
    <!-- REMOVE SUPERFLUOUS STUFF: -->

    <xsl:template match="comment() | processing-instruction()">
        <!-- Remove... -->
    </xsl:template>

</xsl:stylesheet>

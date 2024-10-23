<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:local="#local.pqs_rzg_tvb" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" version="2.0" exclude-result-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       This is a library for getting information about the YATC system in general.
       
       It can, for instance, find out where certain directories are, what the name of the current repository and component is,
       etc. Please use these functions if you need this information somewhere, so *don't* hard-code it!
       
       Depends on:
       - href.mod.xsl
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
    <!-- GLOBAL SHARED DECLARATIONS: -->

    <xsl:variable name="yatcs:baseSystemAbbreviation" as="xs:string" select="'YATC'"/>

    <xsl:variable name="yatcs:repositoryNameInternal" as="xs:string" select="concat($yatcs:baseSystemAbbreviation, '-internal')"/>
    <xsl:variable name="yatcs:repositoryNamePublic" as="xs:string" select="concat($yatcs:baseSystemAbbreviation, '-public')"/>
    <xsl:variable name="yatcs:repositoryNameShared" as="xs:string" select="concat($yatcs:baseSystemAbbreviation, '-shared')"/>
    <xsl:variable name="yatcs:repositoryNameTools" as="xs:string" select="concat($yatcs:baseSystemAbbreviation, '-tools')"/>

    <xsl:variable name="yatcs:baseDirectoryUri" as="xs:string" select="yatcs:href-canonical(resolve-uri('../..', static-base-uri()))">
        <!-- The absolute base directory as a URI (so with file:// in front) of the YATC system 
             (the directory in which all repositories are checked-out/cloned). -->
    </xsl:variable>

    <xsl:variable name="yatcs:baseDriveRoot" as="xs:string">
        <!-- The drive root part of the file system URI. This is different for Windows native, WSL (Windows Subsystem for Linux) 
             and native Unix. Handy to have when creating absolute path parameter values.-->
        <xsl:choose>
            <!-- Windows file:///C:/... like URI: -->
            <xsl:when test="matches($yatcs:baseDirectoryUri, '^file:/+[a-zA-Z]:/')">
                <xsl:sequence select="replace($yatcs:baseDirectoryUri, '^(file:/+[a-zA-Z]:).*$', '$1')"/>
            </xsl:when>
            <!-- Windows WSL: -->
            <xsl:when test="matches($yatcs:baseDirectoryUri, '^file:/+mnt/[a-zA-Z]/')">
                <xsl:sequence select="replace($yatcs:baseDirectoryUri, '^(file:/+mnt/[a-zA-Z]).*$', '$1')"/>
            </xsl:when>
            <!-- Anything else, file system: -->
            <xsl:when test="matches($yatcs:baseDirectoryUri, 'file:/+')">
                <xsl:sequence select="'file://'"/>
            </xsl:when>
            <!-- Anything else, unrecognized… -->
            <xsl:otherwise>
                <xsl:sequence select="''"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <xsl:variable name="yatcs:repositoryNamesNoComponents" as="xs:string+" select="($yatcs:repositoryNameShared, $yatcs:repositoryNameTools)">
        <!-- These repositories have no components. -->
    </xsl:variable>

    <!-- Standard names for directories that are sometimes used to store temporary files in (for instance for debug purposes). 
         These files are (usually) ignored by Git through the .gitignore file. -->
    <xsl:variable name="yatcs:directoryNameTmp" as="xs:string" select="'tmp'"/>
    <xsl:variable name="yatcs:directoryNameBuild" as="xs:string" select="'build'"/>

    <!-- ======================================================================= -->

    <xsl:function name="yatcs:get-repository-name" as="xs:string">
        <!-- Returns the name of the YATC repository where $callerStaticBaseUri resides.
             For instance 'YATC-shared'. -->
        <xsl:param name="callerStaticBaseUri" as="xs:string">
            <!-- The static base URI of the calling code. The result will only be valid if this URI is inside the YATC system
                 (inside one of the YATC repositories). 
                 Remark: It *must* be a URI (so with file:// in front)!
            -->
        </xsl:param>

        <xsl:sequence select="string(local:get-remainder-base-uri-components($callerStaticBaseUri)[1])"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="yatcs:get-repository-directory-uri" as="xs:string">
        <!-- For location $callerStaticBaseUri: Returns the absolute directory name of the root directory of the YATC 
             repository as a URI (so with file:// in front).
             For instance: file:///C:/some/path/to/base/YATC-shared
        -->
        <xsl:param name="callerStaticBaseUri" as="xs:string">
            <!-- See: yatcs:get-repository-name() -->
        </xsl:param>

        <xsl:variable name="repositoryName" as="xs:string" select="yatcs:get-repository-name($callerStaticBaseUri)"/>
        <xsl:choose>
            <xsl:when test="$repositoryName eq ''">
                <xsl:sequence select="''"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:sequence select="yatcs:href-concat(($yatcs:baseDirectoryUri, $repositoryName))"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="yatcs:get-component-name" as="xs:string?">
        <!-- Returns the name of the component inside the YATC repository where $callerStaticBaseUri resides.
             For instance: 'ada-2-wiki'
             If the call was not made from inside a component, it returns ''.
             Remark: YATC-shared has no components, so this will always return ''.       
        -->
        <xsl:param name="callerStaticBaseUri" as="xs:string">
            <!-- See: yatcs:get-repository-name() -->
        </xsl:param>

        <xsl:choose>
            <xsl:when test="yatcs:get-repository-name($callerStaticBaseUri) = $yatcs:repositoryNamesNoComponents">
                <xsl:sequence select="''"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:sequence select="string(local:get-remainder-base-uri-components($callerStaticBaseUri)[2])"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="yatcs:get-component-directory-uri" as="xs:string">
        <!-- For location $callerStaticBaseUri: Returns the absolute directory name of the root directory of the YATC 
             component as a URI (so with file:// in front).
             For instance: file:///C:/some/path/to/base/YATC-internal/get-production-ada-instances
        -->
        <xsl:param name="callerStaticBaseUri" as="xs:string">
            <!-- See: yatcs:get-repository-name() -->
        </xsl:param>
        <xsl:variable name="componentName" as="xs:string" select="yatcs:get-component-name($callerStaticBaseUri)"/>
        <xsl:choose>
            <xsl:when test="$componentName eq ''">
                <xsl:sequence select="''"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:sequence select="yatcs:href-concat((yatcs:get-repository-directory-uri($callerStaticBaseUri), $componentName))"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- ======================================================================= -->
    <!-- SUPPORT CODE: -->

    <xsl:function name="local:get-remainder-base-uri-components" as="xs:string*">
        <!-- Returns the path-parts after $yatcs:baseDirectory and tokenizes these. -->
        <xsl:param name="callerStaticBaseUri" as="xs:string"/>

        <xsl:variable name="staticBaseUriCanonical" as="xs:string" select="yatcs:href-canonical($callerStaticBaseUri)"/>
        <xsl:variable name="baseUriRemainder" as="xs:string" select="substring-after($staticBaseUriCanonical, $yatcs:baseDirectoryUri)"/>
        <xsl:sequence select="tokenize($baseUriRemainder, '/')[.]"/>
    </xsl:function>

</xsl:stylesheet>

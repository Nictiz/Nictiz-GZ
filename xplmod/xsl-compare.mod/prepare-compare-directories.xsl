<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.nn4_xzk_jwb" xmlns:c="http://www.w3.org/ns/xproc-step" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
        Prepare the combine directories processing by turning the two lists of 
        directory contents into a single list of documents to compare.
        
        Input is the combined list with directory contents as produced in ../compare-directories.xpl
        
        Immediately catches some errors (different number of files, directories that do not exist, etc.)
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

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:mode on-no-match="fail"/>

    <xsl:include href="../../xslmod/general.mod.xsl"/>
    <xsl:include href="../../xslmod/href.mod.xsl"/>

    <!-- ======================================================================= -->
    <!-- PARAMETERS: -->

    <xsl:param name="compareFlags" as="xs:string" required="yes"/>

    <!-- ======================================================================= -->

    <xsl:variable name="uncomparableExtensions" as="xs:string+" select="('html', 'htm', 'txt', 'md')"/>

    <!-- The compareFlags as a sequence: -->
    <xsl:variable name="compareFlagsSequence" as="xs:string*" select="yatcs:str2seq($compareFlags)"/>

    <!-- Flags possible in $compareFlags: -->
    <xsl:variable name="compareFlagNoHexFilenames" as="xs:string" select="'no-hex-filenames'"/>
    <xsl:variable name="compareFlagNoUuidFilenames" as="xs:string" select="'no-uuid-filenames'"/>
    <xsl:variable name="compareFlagNoUuidContainingFilenames" as="xs:string" select="'no-uuid-containing-filenames'"/>

    <!-- And the same as boolean value: -->
    <xsl:variable name="flagNoHexFilenames" as="xs:boolean" select="$compareFlagNoHexFilenames = $compareFlagsSequence"/>
    <xsl:variable name="flagNoUuidFilenames" as="xs:boolean" select="$compareFlagNoUuidFilenames = $compareFlagsSequence"/>
    <xsl:variable name="flagNoUuidContainingFilenames" as="xs:boolean" select="$compareFlagNoUuidContainingFilenames = $compareFlagsSequence"/>

    <!-- Regular expressions: -->
    <xsl:variable name="regexpHexName" as="xs:string" select="'^[0-9a-fA-F]+$'"/>
    <xsl:variable name="regexpUuidContainingName" as="xs:string" select="'[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}'"/>
    <xsl:variable name="regexpUuidName" as="xs:string" select="'^' || $regexpUuidContainingName || '$'"/>

    <!-- ================================================================== -->

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="/compare-directories">

        <xsl:variable name="hrefDir1" as="xs:string" select="string(@href1)"/>
        <xsl:variable name="hrefDir2" as="xs:string" select="string(@href2)"/>
        <xsl:variable name="fileListDir1" as="element(c:file)*" select="c:directory[1]/c:file"/>
        <xsl:variable name="fileListDir2" as="element(c:file)*" select="c:directory[2]/c:file"/>

        <xsl:copy copy-namespaces="false">
            <xsl:copy-of select="@*"/>
            <xsl:attribute name="document-count" select="max((count($fileListDir1), count($fileListDir2)))"/>

            <!-- Catch some obvious error situations: -->
            <xsl:variable name="initialCheckMessages" as="element(message)*">
                <xsl:if test="exists(no-directory)">
                    <xsl:for-each select="no-directory">
                        <xsl:call-template name="local:create-message">
                            <xsl:with-param name="msg-parts" select="('Directory for comparison not found: ', yatcs:q(@href))"/>
                        </xsl:call-template>
                    </xsl:for-each>
                </xsl:if>
            </xsl:variable>

            <!-- If there are initial errors, immediately output these and stop. Otherwise prepare a document compare: -->
            <xsl:choose>
                <xsl:when test="exists($initialCheckMessages)">
                    <xsl:sequence select="$initialCheckMessages"/>
                </xsl:when>
                <xsl:otherwise>
                    <!-- Compare the existence of the files: -->
                    <xsl:call-template name="compare-file-lists">
                        <xsl:with-param name="fileListDir1" select="$fileListDir1"/>
                        <xsl:with-param name="fileListDir2" select="$fileListDir2"/>
                        <xsl:with-param name="baseDirName" select="'new'"/>
                    </xsl:call-template>
                    <xsl:call-template name="compare-file-lists">
                        <xsl:with-param name="fileListDir1" select="$fileListDir2"/>
                        <xsl:with-param name="fileListDir2" select="$fileListDir1"/>
                        <xsl:with-param name="baseDirName" select="'original'"/>
                    </xsl:call-template>
                    <!-- Compare the contents of files with matching names: -->
                    <xsl:for-each select="$fileListDir1 ! string(@name)">
                        <xsl:variable name="filename" as="xs:string" select="."/>
                        <xsl:if test="exists($fileListDir2[@name eq $filename])">
                            <xsl:variable name="href1" as="xs:string" select="yatcs:href-concat(($hrefDir1, $filename)) => yatcs:href-canonical()"/>
                            <xsl:variable name="href2" as="xs:string" select="yatcs:href-concat(($hrefDir2, $filename)) => yatcs:href-canonical()"/>
                            <xsl:choose>
                                <xsl:when test="local:is-comparable($filename)">
                                    <compare href1="{$href1}" href2="{$href2}"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <uncomparable href1="{$href1}" href2="{$href2}"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:otherwise>
            </xsl:choose>

        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="compare-file-lists">
        <xsl:param name="fileListDir1" as="element(c:file)*" required="true"/>
        <xsl:param name="fileListDir2" as="element(c:file)*" required="true"/>
        <xsl:param name="baseDirName" as="xs:string" required="true"/>

        <xsl:for-each select="$fileListDir1">
            <xsl:variable name="name" as="xs:string" select="@name"/>
            <xsl:choose>
                <xsl:when test="local:is-comparable-by-flag($name)">
                    <xsl:if test="empty($fileListDir2[@name eq $name])">
                        <xsl:call-template name="local:create-message">
                            <xsl:with-param name="msg-parts" select="('Document ', yatcs:q($name), ' present in ', $baseDirName, ' directory only')"/>
                        </xsl:call-template>
                    </xsl:if>
                </xsl:when>
                <xsl:otherwise>
                    <uncomparable in="{$baseDirName}" name="{$name}"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>

    <!-- ======================================================================= -->

    <xsl:template name="local:create-message">
        <xsl:param name="msg-parts" as="item()+" required="true"/>

        <message>
            <xsl:value-of select="yatcs:items2str($msg-parts)"/>
        </message>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:is-comparable" as="xs:boolean">
        <xsl:param name="href" as="xs:string"/>

        <xsl:variable name="extension" as="xs:string" select="yatcs:href-ext($href)"/>
        <xsl:sequence select="local:is-comparable-by-flag($href) and not($extension = $uncomparableExtensions)"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:is-comparable-by-flag" as="xs:boolean">
        <!-- Returns false when the file is not comparable because of the $compareFlags setting. -->
        <xsl:param name="href" as="xs:string"/>

        <xsl:variable name="name" as="xs:string" select="yatcs:href-name-noext($href)"/>

        <xsl:choose>
            <xsl:when test="$flagNoHexFilenames and matches($name, $regexpHexName)">
                <xsl:sequence select="false()"/>
            </xsl:when>
            <xsl:when test="$flagNoUuidFilenames and matches($name, $regexpUuidName)">
                <xsl:sequence select="false()"/>
            </xsl:when>
            <xsl:when test="$flagNoUuidContainingFilenames and matches($name, $regexpUuidContainingName)">
                <xsl:sequence select="false()"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:sequence select="true()"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

</xsl:stylesheet>

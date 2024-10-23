<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.ayw_fsw_bzb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       Processes a command line string into a map. 
       
       This map has several fixed entries, see the yatcs:key* declarations below.
       
       All flags (command line parts that start with a hyphen) are keys in the map. 
       If such a flag has additional information (after a colon), this is the value for the key. 
       
       The command arguments (the parts without a hyphen) are in the key $yatcs:keyArguments (as a sequence) 
       and their count in $yatcs:keyArgumentsCount. The arguments will also be their with their position as key. 
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

    <xsl:output method="json" encoding="UTF-8"/>

    <xsl:mode on-no-match="fail"/>

    <!-- ================================================================== -->
    <!-- PARAMETERS: -->

    <xsl:param name="commandLineArgumentsString" as="xs:string" required="yes"/>

    <xsl:param name="permissibleFlags" as="xs:string*" required="yes"/>

    <!-- ======================================================================= -->
    <!-- GLOBAL DECLARATIONS: -->

    <xsl:variable name="flagStartCharacter" as="xs:string" select="'-'">
        <!-- All flags on a command line start with this character. -->
    </xsl:variable>

    <xsl:variable name="flagInfoSeparator" as="xs:string" select="':'">
        <!-- Sometimes flags have additional information. This is separated with this character. For instance: -version:1.0-->
    </xsl:variable>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    <!-- Keys in the resulting map: -->
    <!-- WARNING: Make sure these declarations are the same as the static options with the same declared in ../yatc-cw.mod.xpl -->

    <xsl:variable name="yatcs:commandFlagHelp" as="xs:string" select="'-help'"/>

    <xsl:variable name="yatcs:keyError" as="xs:string" select="'_ERROR'">
        <!-- xs:boolean - True when some parsing error occurred. -->
    </xsl:variable>
    <xsl:variable name="yatcs:keyArguments" as="xs:string" select="'_ARGUMENTS'">
        <!-- xs:string* - Sequence with all the arguments. -->
    </xsl:variable>
    <xsl:variable name="yatcs:keyArgumentsCount" as="xs:string" select="'_ARGUMENTSCOUNT'">
        <!-- xs:integer - The number of arguments, numeric. -->
    </xsl:variable>
    <xsl:variable name="yatcs:keyHasHelpFlag" as="xs:string" select="'_HELP'">
        <!-- xs:boolean - Whether the -help flag was present. -->
    </xsl:variable>

    <!-- ======================================================================= -->

    <xsl:template match="/">

        <xsl:variable name="errorMap" as="map(*)" select="map{$yatcs:keyError: true()}"/>

        <!-- Unravel the command line: -->
        <xsl:variable name="commandParts" as="xs:string*" select="tokenize($commandLineArgumentsString, '\s+')[.]"/>
        <xsl:variable name="commandFlags" as="xs:string*" select="$commandParts[starts-with(., $flagStartCharacter)]"/>
        <xsl:variable name="commandArguments" as="xs:string*" select="$commandParts[not(starts-with(., $flagStartCharacter))]"/>

        <!-- We're going to create a map with, among others, the flags as keys. But, in theory, somebody could state a flag twice,
             which would cause an XSLT error. Therefore we create the map in a try/catch. When an error occurs, we return a map with 
             just a single error key. -->
        <xsl:variable name="basicCommandMap" as="map(*)">
            <xsl:try>

                <xsl:map>
                    <xsl:map-entry key="$yatcs:keyError" select="false()"/>

                    <!-- Register the arguments: -->
                    <xsl:map-entry key="$yatcs:keyArguments" select="$commandArguments"/>
                    <xsl:map-entry key="$yatcs:keyArgumentsCount" select="count($commandArguments)"/>
                    <xsl:for-each select="$commandArguments">
                        <xsl:map-entry key="position()" select="."/>
                    </xsl:for-each>

                    <!-- Register the flags: -->
                    <xsl:for-each select="$commandFlags">
                        <xsl:variable name="flag" as="xs:string" select="."/>
                        <xsl:variable name="flagHasInfo" as="xs:boolean" select="contains($flag, $flagInfoSeparator)"/>
                        <xsl:variable name="flagName" as="xs:string" select="if ($flagHasInfo) then substring-before($flag, $flagInfoSeparator) else $flag"/>
                        <xsl:variable name="flagInfo" as="xs:string?" select="if ($flagHasInfo) then substring-after($flag, $flagInfoSeparator) else ()"/>

                        <!-- Check if this flag is permissible (help is always permitted). If not, simply raise an error to get into the catch:  -->
                        <xsl:if test="not(($flagName eq $yatcs:commandFlagHelp) or ($flagName = $permissibleFlags))">
                            <xsl:sequence select="error((), '')"/>
                        </xsl:if>

                        <!-- Register the flag and add the special "has help flag" when it's -help: -->
                        <xsl:map-entry key="$flagName" select="$flagInfo"/>
                        <xsl:if test="$flagName eq $yatcs:commandFlagHelp">
                            <xsl:map-entry key="$yatcs:keyHasHelpFlag" select="true()"/>
                        </xsl:if>
                    </xsl:for-each>

                </xsl:map>

                <!-- Some error occurred during the map construction (most likely duplicate flags as keys or a non-permissible flag). 
                     Just return a simple map with only the error flag: -->
                <xsl:catch>
                    <xsl:sequence select="$errorMap"/>
                </xsl:catch>

            </xsl:try>
        </xsl:variable>

        <!-- If there is no key $yatcs:keyHasHelpFlag, it means no help was requested. Register this explicitly so 
             there is always a $yatcs:keyHasHelpFlag key in the map: -->
        <xsl:try>
            <xsl:sequence select="map:merge(($basicCommandMap, if (map:contains($basicCommandMap, $yatcs:keyHasHelpFlag)) then () else map{$yatcs:keyHasHelpFlag: false()}))"/>
            <xsl:catch>
                <xsl:sequence select="$errorMap"/>
            </xsl:catch>
        </xsl:try>
        
    </xsl:template>

</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.brk_fv3_dwbxx" exclude-result-prefixes="#all">
    <!-- ================================================================== -->
    <!-- 
       This is a library for just expanding the YATC parameters system in text. 
       The parameters system is documented in ../doc/parameters-system.md
       
       Depends on:
       - general.mod.xsl
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

    <xsl:function name="yatcs:expand-text" as="xs:string">
        <!-- This function expands parameter references in a string by examining it for ${parameterName} or 
             {$parameterName} constructs.
             - If a referenced parameter has multiple values, only the first one is used.
             - If a referenced parameter does not exist, the ${...} or {$...} construct is left unchanged.
             - If a reference parameter contains references to other parameters these are expanded also. A circular
               reference results in an error.
             - Escaping a reference (to stop expansion) is done by doubling the open curly brace: ${{ or {{$
        -->
        <xsl:param name="parameters" as="element(yatcs:parameters)">
            <!-- The set of parameters as computed by yatcs:get-combined-parameters() -->
        </xsl:param>
        <xsl:param name="text" as="xs:string">
            <!-- The text in which to expand the parameter references -->
        </xsl:param>
        <xsl:param name="mustExist" as="xs:boolean">
            <!-- If true, the parameter must exist, otherwise an error is raised. If false, any non-existent
                 parameter is substituted with the empty string. -->
        </xsl:param>
        <xsl:param name="expandUserFriendly" as="xs:boolean">
            <!-- If true, perform some optimizations in, for instance, file names. This makes their display more user-friendly.
                 Meant for use in substitution in text/documentation. Do *not* use this when substituting for code/configurations! -->
        </xsl:param>

        <xsl:sequence select="local:expand-text($parameters, $text, (), $mustExist, $expandUserFriendly)"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="yatcs:expand-text" as="xs:string">
        <!-- For compatibility reasons. Two argument version of yatcs:expand-text#3 that always raises an error 
             on non-existent parameters.
        -->
        <xsl:param name="parameters" as="element(yatcs:parameters)">
            <!-- The set of parameters as computed by yatcs:get-combined-parameters() -->
        </xsl:param>
        <xsl:param name="text" as="xs:string">
            <!-- The text in which to expand the parameter references -->
        </xsl:param>

        <xsl:sequence select="yatcs:expand-text($parameters, $text, true(), false())"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:expand-text" as="xs:string">
        <!-- This function does the actual text expansion for yatcs:expand-text(). It has an additional parameter that 
             holds all the parameters visited in the expansion to check for circular references.
        -->
        <xsl:param name="parameters" as="element(yatcs:parameters)"/>
        <xsl:param name="text" as="xs:string"/>
        <xsl:param name="visitedParameters" as="xs:string*"/>
        <xsl:param name="mustExist" as="xs:boolean"/>
        <xsl:param name="expandUserFriendly" as="xs:boolean"/>

        <xsl:variable name="substitutedParts" as="xs:string*">

            <!-- First we check for parts with doubled curly braces, like ${{ and {{$. In those cases the doubled curly brace
                must be replaced by a single one. No parameter substitution must take place: -->
            <xsl:analyze-string select="$text" regex="\$\{{\{{|\{{\{{\$">
                <xsl:matching-substring>
                    <xsl:choose>
                        <xsl:when test=". eq '${{'">
                            <xsl:sequence select="'${'"/>
                        </xsl:when>
                        <xsl:when test=". eq '{{$'">
                            <xsl:sequence select="'{$'"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <!-- Should not occur... -->
                            <xsl:sequence select="."/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:matching-substring>

                <!-- For all other parts of the string we check for ${...} and {$...} constructions and perform
                    parameter substitution: -->
                <xsl:non-matching-substring>
                    <xsl:analyze-string select="." regex="\$\{{(\S+?)\}}|\{{\$(\S+?)\}}">
                        <xsl:matching-substring>
                            <xsl:variable name="parameterName" as="xs:string" select="if (regex-group(1) ne '') then regex-group(1) else regex-group(2)"/>
                            <xsl:variable name="parameter" as="element(yatcs:parameter)?" select="$parameters/yatcs:parameter[@name eq $parameterName][1]"/>
                            <xsl:variable name="parameterValue" as="xs:string" select="string($parameter/yatcs:value[1])"/>
                            <xsl:choose>
                                <!-- Check for a circular reference. If so, raise an error: -->
                                <xsl:when test="$parameterName = $visitedParameters">
                                    <xsl:call-template name="yatcs:raise-error">
                                        <xsl:with-param name="msg-parts" select="('Circular parameter reference: ', yatcs:q($parameterName))"/>
                                    </xsl:call-template>
                                </xsl:when>
                                <!-- If this is a reference to an existing parameter, expand its value here. 
                                     This is a recursive operation, because the value we're expanding may again 
                                     contain parameter references... -->
                                <xsl:when test="exists($parameter)">
                                    <xsl:variable name="valueToExpand" as="xs:string" select="if ($expandUserFriendly) then local:makeValueUserFriendly($parameterValue) else $parameterValue"/>
                                    <xsl:sequence select="local:expand-text($parameters, $valueToExpand, ($visitedParameters, $parameterName), $mustExist, $expandUserFriendly)"/>
                                </xsl:when>
                                <!-- The parameter does not exist: -->
                                <xsl:when test="$mustExist">
                                    <xsl:call-template name="yatcs:raise-error">
                                        <xsl:with-param name="msg-parts" select="('Referenced parameter ', yatcs:q($parameterName), ' not found')"/>
                                    </xsl:call-template>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:sequence select="''"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:matching-substring>
                        <xsl:non-matching-substring>
                            <xsl:sequence select="."/>
                        </xsl:non-matching-substring>
                    </xsl:analyze-string>
                </xsl:non-matching-substring>

            </xsl:analyze-string>
        </xsl:variable>
        <xsl:sequence select="string-join($substitutedParts)"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="local:makeValueUserFriendly" as="xs:string">
        <xsl:param name="value" as="xs:string"/>

        <xsl:choose>
            <xsl:when test="starts-with($value, 'file:/')">
                <xsl:choose>
                    <xsl:when test="contains($value, '/YATC-')">
                        <!-- This seems to be a path inside the YATC code. Strip off everything before this 
                             (because this is disk-layout dependent and not interesting here) -->
                        <xsl:sequence select="replace($value, '^.*/(YATC-.*)$', '$1')"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <!-- Strip of the file:/ protocol stuff: -->
                        <xsl:sequence select="replace($value, '^file:/+', '')"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:sequence select="$value"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

</xsl:stylesheet>

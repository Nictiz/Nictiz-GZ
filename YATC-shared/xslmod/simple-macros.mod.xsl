<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:local="#local.oxn_n4k_bzb" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" exclude-result-prefixes="#all" expand-text="true">
    <!-- ================================================================== -->
    <!-- 
       Support code for simple macro expansion in strings, e.g. $NAME
       To stop a macro from expanding, double the $ character.
       
       What is expanded exactly is in a map formatted as map{macro: expansion}, e.g. map{'$NAME': 'thenameofthething'}
       
       All macros *must* start with the yatcs:simpleMacroStart character!
       
       Depends on:
       - general.mod.xsl
  -->
    <!-- ================================================================== -->
    <!-- GLOBAL DECLARATIONS: -->

    <xsl:variable name="yatcs:simpleMacroStartCharacter" as="xs:string" select="'$'"/>

    <!-- ======================================================================= -->

    <xsl:function name="yatcs:expand-simple-macros" as="xs:string">
        <!-- Expands simple macro's in a string with values. All macros *must* start with the $yatcs:simpleMacroStartCharacter, for instance: $DATE. 
             The substitution values are in a map. The keys must be the macro strings (starting with the $yatcs:simpleMacroStartCharacter character). 
             For instance: map{ '$DATE': '2023-04-04', '$TIME': '16:04:35'}
        -->
        <xsl:param name="in" as="xs:string">
            <!-- The string to convert. -->
        </xsl:param>
        <xsl:param name="macrosMap" as="map(xs:string, xs:string)">
            <!-- The map with the macro/substitution values. -->
        </xsl:param>
        <xsl:param name="filenameSafe" as="xs:boolean">
            <!-- Whether to make substitutions "filename safe", replacing all invalid characters for a file/directory name with an underscore. 
                 Which macros are done filename-safe is determined by parameter $filenameSafeMacros.
                 Use this when replacing macros in file/directory name strings. -->
        </xsl:param>
        <xsl:param name="filenameSafeMacros" as="xs:string*">
            <!-- The macro names (all starting with $yatcs:simpleMacroStartCharacter) for which filename-safe expansion must take place.
                 Will only take effect if $filenameSafe is true.
                 If this parameter is (), *all* macro expansion is done filename-safe. -->
        </xsl:param>

        <xsl:sequence select="local:expand-simple-macros($in, $macrosMap, $filenameSafe, $filenameSafeMacros, ())"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="yatcs:expand-simple-macros" as="xs:string">
        <!-- Simplified version of yatcs:expand-simple-macros#4. Here for compatibility reasons. Will pas $filenameSafeMacros as (), thereby making
             all macro expansion filename-safe (when $filenameSafe is true).
        -->
        <xsl:param name="in" as="xs:string"/>
        <xsl:param name="macrosMap" as="map(xs:string, xs:string)"/>
        <xsl:param name="filenameSafe" as="xs:boolean"/>

        <xsl:sequence select="local:expand-simple-macros($in, $macrosMap, $filenameSafe, (), ())"/>
    </xsl:function>
    
    <!-- ======================================================================= -->
    
    <xsl:function name="local:expand-simple-macros" as="xs:string">
        <!-- Local variant of yatcs:expand-simple-macros. This is necessary to check for recursion.
        -->
        <xsl:param name="in" as="xs:string"/>
        <xsl:param name="macrosMap" as="map(xs:string, xs:string)"/>
        <xsl:param name="filenameSafe" as="xs:boolean"/>
        <xsl:param name="filenameSafeMacros" as="xs:string*"/>
        <xsl:param name="visitedMacros" as="xs:string*" />
        
        <xsl:choose>
            <xsl:when test="not(contains($in, $yatcs:simpleMacroStartCharacter)) or (map:size($macrosMap) eq 0)">
                <!-- Nothing to do: -->
                <xsl:sequence select="$in"/>
            </xsl:when>
            <xsl:otherwise>
                <!-- Turn all the macros into a regular expression. Since we have to deal with the $$macro variant, 
                     we create a regular expression for this also. -->
                <xsl:variable name="regexpAllMacros" as="xs:string" select="'(' || string-join(for $key in map:keys($macrosMap) return yatcs:str2regexp($key, false()), '|') || ')'"/>
                <xsl:variable name="regexpAllMacrosNoExpand" as="xs:string" select="yatcs:str2regexp($yatcs:simpleMacroStartCharacter, false()) || $regexpAllMacros"/>
                
                <!-- Now go and substitute the macros: -->
                <xsl:variable name="outParts" as="xs:string*">
                    <!-- First we check for macros that do not expand ($$macro): -->
                    <xsl:analyze-string select="$in" regex="{$regexpAllMacrosNoExpand}">
                        <xsl:matching-substring>
                            <!-- We found $$macro. Turn this into a single $:-->
                            <xsl:sequence select="substring(., 2)"/>
                        </xsl:matching-substring>
                        <xsl:non-matching-substring>
                            <!-- A part of the string that does not contain $$macro. Go and substitute any $macro: -->
                            <xsl:analyze-string select="." regex="{$regexpAllMacros}">
                                <xsl:matching-substring>
                                    <!-- We found a macro, compute its substitution value: -->
                                    <xsl:variable name="macro" as="xs:string" select="."/>
                                    <xsl:if test="$macro = $visitedMacros">
                                        <xsl:call-template name="yatcs:raise-error">
                                            <xsl:with-param name="msg-parts" select="'Recursive macro chain detected: ', string-join(($visitedMacros, $macro), ' =&gt; ')"/>
                                        </xsl:call-template>
                                    </xsl:if>
                                    <xsl:variable name="substitutionRaw" as="xs:string" select="$macrosMap($macro)"/>
                                    <xsl:variable name="expandFilenameSafe" as="xs:boolean" select="$filenameSafe and (empty($filenameSafeMacros) or ($macro = $filenameSafeMacros))"/>
                                    <xsl:variable name="substitution" as="xs:string" select="if ($expandFilenameSafe) then yatcs:str2filename-safe($substitutionRaw, '_') else $substitutionRaw"/>
                                    <!-- If this contains other (potential) macros, recurse. Otherwise we're done. -->
                                    <xsl:choose>
                                        <xsl:when test="contains($substitution, $yatcs:simpleMacroStartCharacter)">
                                            <xsl:sequence select="local:expand-simple-macros($substitution, $macrosMap, $filenameSafe, $filenameSafeMacros, ($visitedMacros, $macro))"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:sequence select="$substitution"/>
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
                <xsl:sequence select="string-join($outParts)"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>
    
</xsl:stylesheet>

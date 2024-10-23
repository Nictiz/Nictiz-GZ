<?xml version="1.0" encoding="UTF-8"?>

<?yatc-distribution-provenance href="C:/Data/Erik/work/Nictiz/new/YATC-shared/xslmod/href.mod.xsl"?>
<?yatc-distribution-info name="VZVZ-MedMij" timestamp="2024-01-29T11:45:25.52+01:00" version="0.1"?>
<!-- == Provenance: C:/Data/Erik/work/Nictiz/new/YATC-shared/xslmod/href.mod.xsl == -->
<!-- == Distribution: VZVZ-MedMij; 0.1; 2024-01-29T11:45:25.52+01:00 == -->
<xsl:stylesheet version="2.0"
                exclude-result-prefixes="#all"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:yatcs="https://nictiz.nl/ns/YATC-shared"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:local="#local.href.mod.xsl">
   <!-- ================================================================== -->
   <!-- 
       This is a generic library for working with file and directory names (href-s). 
       
       Its origin is the open source project https://common.xtpxlib.org/. 
       The namespace was changed for convenience reasons (so everything is in the YATC-shared namespace).
       Because of the external origin, some YATC naming conventions are not in use.
       
       Documentation (which uses the original namespace prefix xtlc) can be found here:  
       https://common.xtpxlib.org/2_XSLT_Modules.html#href.mod.xsl
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
   <!-- GLOBAL CONSTANTS: -->
   <xsl:variable name="yatcs:protocol-file"
                 as="xs:string"
                 select="'file'">
      <!--~ File protocol specifier. -->
   </xsl:variable>
   <!-- ================================================================== -->
   <!-- BASIC FUNCTIONS:  -->
   <xsl:function name="yatcs:href-concat"
                 as="xs:string">
      <!--~ 
      Performs a safe concatenation of href components: 
      
      * Translates all backslashes into slashes
      * Makes sure that all components are separated with a single slash
      * If somewhere in the list is an absolute path, the concatenation stops.
      
      Examples:
      * `yatcs:href-concat(('a', 'b', 'c'))` ==> `'a/b/c'`
      * `yatcs:href-concat(('a', '/b', 'c'))` ==> `'/b/c'`
		-->
      <xsl:param name="href-path-components"
                 as="xs:string*">
         <!--~ The path components to concatenate into a full href. -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="empty($href-path-components)">
            <xsl:sequence select="''"/>
         </xsl:when>
         <xsl:otherwise>
            <!-- Take the last path in the list and translate all backslashes to slashes: -->
            <xsl:variable name="current-href"
                          as="xs:string"
                          select="translate($href-path-components[last()], '\', '/')"/>
            <xsl:choose>
               <xsl:when test="yatcs:href-is-absolute($current-href)">
                  <xsl:sequence select="$current-href"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:variable name="prefix"
                                as="xs:string"
                                select="yatcs:href-concat(remove($href-path-components, count($href-path-components)))"/>
                  <xsl:sequence select="if ($prefix eq '' or ends-with($prefix, '/')) then concat($prefix, $current-href) else concat($prefix, '/', $current-href)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="yatcs:href-is-absolute"
                 as="xs:boolean">
      <!--~ 
      Returns `true` if the href is considered absolute.
      
      An href is considered absolute when it starts with a `/` or `\`, contains a protocol specifier (e.g. `file://`) or
      starts with a Windows drive letter (e.g. `C:`).
    -->
      <xsl:param name="href"
                 as="xs:string">
         <!--~ href to work on. -->
      </xsl:param>
      <xsl:sequence select="starts-with($href, '/') or starts-with($href, '\') or contains($href, ':/') or matches($href, '^[a-zA-Z]:')"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="yatcs:href-name"
                 as="xs:string">
      <!--~ 
      Returns the (file)name part of an href. 
    
      Examples:
      * `yatcs:href-name('a/b/c')` ==> `'c'`
      * `yatcs:href-name('c')` ==> `'c'`
    -->
      <xsl:param name="href"
                 as="xs:string">
         <!--~ href to work on. -->
      </xsl:param>
      <xsl:sequence select="replace($href, '.*[/\\]([^/\\]+)$', '$1')"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="yatcs:href-noext"
                 as="xs:string">
      <!--~ 
      Returns the complete href path without its extension.
    
      Examples:
      - `yatcs:href-noext('a/b/c.xml')` ==> `'a/b/c'`
      - `yatcs:href-noext('a/b/c')` ==> `'a/b/c'`      
    -->
      <xsl:param name="href"
                 as="xs:string">
         <!--~ href to work on. -->
      </xsl:param>
      <xsl:sequence select="replace($href, '\.[^\.]+$', '')"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="yatcs:href-name-noext"
                 as="xs:string">
      <!--~ 
      Returns the (file)name part of an href without its extension. 
    
      Examples:
      * `yatcs:href-name-noext('a/b/c.xml')` ==> `'c'`
      * `yatcs:href-name-noext('a/b/c')` ==> `'c'`   
    -->
      <xsl:param name="href"
                 as="xs:string">
         <!--~ href to work on. -->
      </xsl:param>
      <xsl:sequence select="yatcs:href-noext(yatcs:href-name($href))"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="yatcs:href-ext"
                 as="xs:string">
      <!--~ 
      Returns the extension part of an href. 
    
      Examples:
      * `yatcs:href-ext('a/b/c.xml')` ==> `'xml'`
      * `yatcs:href-ext('a/b/c')` ==> `''`
    -->
      <xsl:param name="href"
                 as="xs:string">
         <!--~ href to work on. -->
      </xsl:param>
      <xsl:variable name="name-only"
                    as="xs:string"
                    select="yatcs:href-name($href)"/>
      <xsl:choose>
         <xsl:when test="contains($name-only, '.')">
            <xsl:sequence select="replace($name-only, '.*\.([^\.]+)$', '$1')"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:sequence select="''"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="yatcs:href-path"
                 as="xs:string">
      <!--~ 
      Returns the path part of an href.
    
      Examples:
      * `yatcs:href-path('a/b/c')` ==> `'a/b'`
      * `yatcs:href-path('c')` ==> `''`
    -->
      <xsl:param name="href"
                 as="xs:string">
         <!--~ href to work on. -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="matches($href, '[/\\]')">
            <xsl:sequence select="replace($href, '(.*)[/\\][^/\\]+$', '$1')"/>
         </xsl:when>
         <xsl:otherwise>
            <!-- No slash or backslash in name, so no base path: -->
            <xsl:sequence select="''"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="yatcs:href-result-doc"
                 as="xs:string">
      <!--~ 
      Transforms an href into something `xsl:result-document/@href` can use. 
      
      `xsl:result-document/@href` needs a `file://` in front and has some strict rules about the 
      formatting. The input to this function *must* be an absolute href! 
    -->
      <xsl:param name="href"
                 as="xs:string">
         <!--~ href to work on. Must be absolute! -->
      </xsl:param>
      <xsl:sequence select="yatcs:href-protocol-add($href, $yatcs:protocol-file, true())"/>
   </xsl:function>
   <!-- ================================================================== -->
   <!-- CANONICALIZATION OF HREFs: -->
   <xsl:function name="yatcs:href-canonical"
                 as="xs:string">
      <!--~ 
      Makes an href canonical (remove any .. and . directory specifiers).
      
      Examples:
      * `href-canonical('a/b/../c')` ==> `'a/c'`
    -->
      <xsl:param name="href"
                 as="xs:string">
         <!--~ href to work on. -->
      </xsl:param>
      <!-- Split the href into parts: -->
      <xsl:variable name="protocol"
                    as="xs:string"
                    select="yatcs:href-protocol($href)"/>
      <xsl:variable name="href-no-protocol"
                    as="xs:string"
                    select="yatcs:href-protocol-remove($href)"/>
      <xsl:variable name="href-start-slash"
                    as="xs:string?"
                    select="if (starts-with($href-no-protocol, '/')) then '/' else ()"/>
      <xsl:variable name="href-components"
                    as="xs:string*"
                    select="tokenize($href-no-protocol, '/')[.]"/>
      <!-- Assemble it together again: -->
      <xsl:variable name="href-canonical-filename"
                    as="xs:string"
                    select="$href-start-slash || string-join(local:href-canonical-process-components($href-components, 0), '/')"/>
      <xsl:sequence select="yatcs:href-protocol-add($href-canonical-filename, $protocol, false())"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="local:href-canonical-process-components"
                 as="xs:string*">
      <!-- Helper function for yatcs:href-canonical -->
      <xsl:param name="href-components-unprocessed"
                 as="xs:string*"/>
      <xsl:param name="parent-directory-marker-count"
                 as="xs:integer"/>
      <!-- Get the last href component to process here and get the remainder of the components: -->
      <xsl:variable name="component-to-process"
                    as="xs:string?"
                    select="$href-components-unprocessed[last()]"/>
      <xsl:variable name="remainder-components"
                    as="xs:string*"
                    select="subsequence($href-components-unprocessed, 1, count($href-components-unprocessed) - 1)"/>
      <xsl:choose>
         <!-- No input, no output: -->
         <xsl:when test="empty($component-to-process)">
            <xsl:sequence select="()"/>
         </xsl:when>
         <!-- On a parent directory marker (..) we output the remainder and increase the $parent-directory-marker-count. This will cause the
        next name-component of the remainders to be removed:-->
         <xsl:when test="$component-to-process eq '..'">
            <xsl:sequence select="local:href-canonical-process-components($remainder-components, $parent-directory-marker-count + 1)"/>
         </xsl:when>
         <!-- Ignore any current directory (.) markers: -->
         <xsl:when test="$component-to-process eq '.'">
            <xsl:sequence select="local:href-canonical-process-components($remainder-components, $parent-directory-marker-count)"/>
         </xsl:when>
         <!-- Check if $parent-directory-marker-count is >= 0. If so, do not take the current component into account: -->
         <xsl:when test="$parent-directory-marker-count gt 0">
            <xsl:sequence select="local:href-canonical-process-components($remainder-components, $parent-directory-marker-count - 1)"/>
         </xsl:when>
         <!-- Normal directory name and no $parent-directory-marker-count. This must be part of the output: -->
         <xsl:otherwise>
            <!-- If it's a drive letter, make sure its upper-case (in rare circumstances we get a lower-case one, 
                    which will screw up comparisons and such...) -->
            <xsl:variable name="component-to-process-2"
                          as="xs:string"
                          select="if (matches($component-to-process, '^[a-z]:$')) then upper-case($component-to-process) else $component-to-process"/>
            <xsl:sequence select="(local:href-canonical-process-components($remainder-components, 0), $component-to-process-2)"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- ================================================================== -->
   <!-- RELATIVE HREFs: -->
   <xsl:function name="yatcs:href-relative"
                 as="xs:string">
      <!--~ 
      Computes a relative href from one document to another.
      
      Examples:
      * `href-relative('a/b/c/from.xml', 'a/b/to.xml')` ==> `'../to.xml'`
      * `href-relative('a/b/c/from.xml', 'a/b/d/to.xml')` ==> `'../d/to.xml'`      
    -->
      <xsl:param name="from-href"
                 as="xs:string">
         <!--~ href (of a document) of the starting point.  -->
      </xsl:param>
      <xsl:param name="to-href"
                 as="xs:string">
         <!--~ href (of a document) of the target. -->
      </xsl:param>
      <xsl:sequence select="yatcs:href-relative-from-path(yatcs:href-path($from-href), $to-href)"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="yatcs:href-relative-from-path"
                 as="xs:string">
      <!--~
      Computes a relative href from a directory path to a document.
      
      Examples:
      * `href-relative-from-path('a/b/c', 'a/b/to.xml')` ==> `'../to.xml'`
      * `href-relative-from-path('a/b/c', 'a/b/d/to.xml')` ==> `'../d/to.xml'`            
    -->
      <xsl:param name="from-href-path"
                 as="xs:string">
         <!--~ href (of a directory) of the starting point. -->
      </xsl:param>
      <xsl:param name="to-href"
                 as="xs:string">
         <!--~ href (of a document) of the target. -->
      </xsl:param>
      <!-- Get all the bits and pieces: -->
      <xsl:variable name="from-href-path-canonical"
                    as="xs:string"
                    select="yatcs:href-canonical($from-href-path)"/>
      <xsl:variable name="from-protocol"
                    as="xs:string"
                    select="yatcs:href-protocol($from-href-path-canonical, $yatcs:protocol-file)"/>
      <xsl:variable name="from-no-protocol"
                    as="xs:string"
                    select="yatcs:href-protocol-remove($from-href-path-canonical)"/>
      <xsl:variable name="from-components-no-filename"
                    as="xs:string*"
                    select="tokenize($from-no-protocol, '/')[. ne '']"/>
      <xsl:variable name="to-href-canonical"
                    as="xs:string"
                    select="yatcs:href-canonical($to-href)"/>
      <xsl:variable name="to-protocol"
                    as="xs:string"
                    select="yatcs:href-protocol($to-href-canonical, $yatcs:protocol-file)"/>
      <xsl:variable name="to-no-protocol"
                    as="xs:string"
                    select="yatcs:href-protocol-remove($to-href-canonical)"/>
      <xsl:variable name="to-components"
                    as="xs:string*"
                    select="tokenize($to-no-protocol, '/')[. ne '']"/>
      <xsl:variable name="to-components-no-filename"
                    as="xs:string*"
                    select="subsequence($to-components, 1, count($to-components) - 1)"/>
      <xsl:variable name="to-filename"
                    as="xs:string"
                    select="$to-components[last()]"/>
      <!-- Now find it out: -->
      <xsl:choose>
         <!-- Unequal protocols or no from-href/to-href means there is no relative path... -->
         <xsl:when test="empty($to-components-no-filename) or (lower-case($from-protocol) ne lower-case($to-protocol))">
            <xsl:sequence select="$to-href-canonical"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:sequence select="yatcs:href-concat((local:relative-href-components-compare($from-components-no-filename, $to-components-no-filename), $to-filename))"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="local:relative-href-components-compare"
                 as="xs:string*">
      <!-- Local helper function for computing relative paths. -->
      <xsl:param name="from-components"
                 as="xs:string*"/>
      <xsl:param name="to-components"
                 as="xs:string*"/>
      <xsl:choose>
         <xsl:when test="$from-components[1] eq $to-components[1]">
            <xsl:sequence select="local:relative-href-components-compare(subsequence($from-components, 2), subsequence($to-components, 2))"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:sequence select="(for $p in (1 to count($from-components)) return '..', $to-components)"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- ================================================================== -->
   <!-- PROTOCOL RELATED FUNCTIONS: -->
   <xsl:variable name="local:protocol-match-regexp"
                 as="xs:string"
                 select="'^[a-z]+://'"/>
   <xsl:variable name="local:protocol-file-special"
                 as="xs:string"
                 select="concat($yatcs:protocol-file, ':/')"/>
   <xsl:function name="yatcs:href-protocol-present"
                 as="xs:boolean">
      <!--~ Returns true when an href has a protocol specifier (e.g. `file://` or `http://`). -->
      <xsl:param name="href"
                 as="xs:string">
         <!--~ href to work on. -->
      </xsl:param>
      <!-- Usually a protocol is something that ends with ://, e.g. http://, but for the file protocol we also encounter file:/ (single slash).
      We have to adjust for this.-->
      <xsl:sequence select="starts-with($href, $local:protocol-file-special) or matches($href, $local:protocol-match-regexp)"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="yatcs:href-protocol-remove"
                 as="xs:string">
      <!--~ 
      Removes the protocol part from an href.  
    
      Examples:
      * `yatcs:protocol-remove('file:///a/b/c')` ==> `'/a/b/c'`
      
      Weird exceptions:
      - `yatcs:protocol-remove('file:/a/b/c')` ==> `'/a/b/c'`
      - `yatcs:protocol-remove('file:/C:/a/b/c')` ==> `'C:/a/b/c'`
    -->
      <xsl:param name="href"
                 as="xs:string">
         <!--~ href to work on. -->
      </xsl:param>
      <xsl:variable name="protocol-windows-special"
                    as="xs:string"
                    select="concat('^', $local:protocol-file-special, '[a-zA-Z]:/')"/>
      <!-- First remove any protocol specifier: -->
      <xsl:variable name="ref-0"
                    as="xs:string"
                    select="translate($href, '\', '/')"/>
      <xsl:variable name="ref-1"
                    as="xs:string">
         <xsl:choose>
            <!-- Normal case, anything starting with protocol:// -->
            <xsl:when test="matches($ref-0, $local:protocol-match-regexp)">
               <xsl:sequence select="replace($href, $local:protocol-match-regexp, '')"/>
            </xsl:when>
            <!-- Windows file:/ exception, single slash, drive letter (file:/C:/bla/bleh):  -->
            <xsl:when test="matches($ref-0, $protocol-windows-special)">
               <xsl:sequence select="substring-after($ref-0, $local:protocol-file-special)"/>
            </xsl:when>
            <!-- Unix file:/ exception, single slash but absolute path (file:/home/beheer): -->
            <xsl:when test="starts-with($ref-0, $local:protocol-file-special)">
               <xsl:sequence select="concat('/', substring-after($ref-0, $local:protocol-file-special))"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$ref-0"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- Check for a Windows absolute path with a slash in front. That must be removed: -->
      <xsl:sequence select="if (matches($ref-1, '^/[a-zA-Z]:/')) then substring($ref-1, 2) else $ref-1"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="yatcs:href-protocol-add"
                 as="xs:string">
      <!--~ Adds a protocol specifier (written without the trailing `://`, e.g. `http`) to an href. -->
      <xsl:param name="href"
                 as="xs:string">
         <!--~ href to work on. -->
      </xsl:param>
      <xsl:param name="protocol"
                 as="xs:string">
         <!--~ The protocol to add, without a leading `://` part (e.g. just `file` or `http`). -->
      </xsl:param>
      <xsl:param name="force"
                 as="xs:boolean">
         <!--~ When `true` an existing protocol is removed first. When `false`, a reference with an existing protocol is left unchanged.  -->
      </xsl:param>
      <xsl:variable name="ref-1"
                    as="xs:string"
                    select="if ($force) then yatcs:href-protocol-remove($href) else translate($href, '\', '/')"/>
      <xsl:choose>
         <!-- When $force is false, do not add a protocol when one is present already: -->
         <xsl:when test="not($force) and yatcs:href-protocol-present($ref-1)">
            <xsl:sequence select="$ref-1"/>
         </xsl:when>
         <!-- When this is a Windows file href, make sure to add an extra / : -->
         <xsl:when test="($protocol eq $yatcs:protocol-file) and matches($ref-1, '^[a-zA-Z]:/')">
            <xsl:sequence select="concat($protocol, ':///', $ref-1)"/>
         </xsl:when>
         <xsl:when test="($protocol ne '')">
            <xsl:sequence select="concat($protocol, '://', $ref-1)"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:sequence select="$ref-1"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="yatcs:href-protocol"
                 as="xs:string">
      <!--~ 
      Returns the protocol part of an href (without the `://`). 
    
      Examples:
      * `yatcs:href-protocol('http://…')` ==> `'http'`
    -->
      <xsl:param name="href"
                 as="xs:string">
         <!--~ href to work on. -->
      </xsl:param>
      <xsl:sequence select="yatcs:href-protocol($href, '')"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="yatcs:href-protocol"
                 as="xs:string">
      <!--~ 
      Returns the protocol part of an href (without the `://`) or a default value when none present. 
    
      Examples:
      * `yatcs:href-protocol('http://…', 'file')` ==> `'http'`
      * `yatcs:href-protocol('/a/b/c', 'file')` ==> `'file'`
    -->
      <xsl:param name="href"
                 as="xs:string">
         <!--~ href to work on. -->
      </xsl:param>
      <xsl:param name="default-protocol"
                 as="xs:string">
         <!--~ Default protocol to return when $ref contains none. -->
      </xsl:param>
      <xsl:choose>
         <xsl:when test="yatcs:href-protocol-present($href)">
            <xsl:sequence select="replace($href, '(^[a-z]+):/.*$', '$1')"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:sequence select="$default-protocol"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="yatcs:href-add-encoding"
                 as="xs:string">
      <!--~ 
      Percent encodes all "strange" characters (`%xx`). Any existing percentage encodings will be kept as is.
    -->
      <xsl:param name="href"
                 as="xs:string">
         <!--~ href to work on. -->
      </xsl:param>
      <xsl:variable name="protocol"
                    as="xs:string"
                    select="yatcs:href-protocol($href)"/>
      <xsl:variable name="href-no-protocol"
                    as="xs:string"
                    select="yatcs:href-protocol-remove($href)"/>
      <xsl:variable name="href-parts"
                    as="xs:string*"
                    select="tokenize($href-no-protocol, '/')"/>
      <xsl:variable name="href-parts-uri"
                    as="xs:string*">
         <xsl:for-each select="$href-parts">
            <xsl:choose>
               <xsl:when test="(position() eq 1) and matches(., '^[a-zA-Z]:$')">
                  <!-- Windows drive letter, just keep: -->
                  <xsl:sequence select="."/>
               </xsl:when>
               <xsl:otherwise>
                  <!-- Encode the part: -->
                  <xsl:variable name="href-part-parts"
                                as="xs:string*">
                     <xsl:analyze-string select="."
                                         regex="%[0-9][0-9]">
                        <xsl:matching-substring>
                           <xsl:sequence select="."/>
                        </xsl:matching-substring>
                        <xsl:non-matching-substring>
                           <xsl:sequence select="encode-for-uri(.)"/>
                        </xsl:non-matching-substring>
                     </xsl:analyze-string>
                  </xsl:variable>
                  <xsl:sequence select="string-join($href-part-parts, '')"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:for-each>
      </xsl:variable>
      <xsl:sequence select="yatcs:href-protocol-add(string-join($href-parts-uri, '/'), $protocol, false())"/>
   </xsl:function>
   <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
   <xsl:function name="yatcs:href-decode-uri"
                 as="xs:string">
      <!--~ Reverse function of encode-fo-uri(). Translates percent encodings (`%xx`) into their actual characters. -->
      <xsl:param name="href"
                 as="xs:string">
         <!--~ href to work on. -->
      </xsl:param>
      <xsl:variable name="result-fragments"
                    as="xs:string*">
         <xsl:analyze-string select="$href"
                             regex="%[a-fA-F0-9]{{2}}">
            <xsl:matching-substring>
               <xsl:variable name="char-code"
                             as="xs:integer"
                             select="(local:hex-char2int(substring(., 2, 1)) * 16) + local:hex-char2int(substring(., 3, 1))"/>
               <xsl:sequence select="codepoints-to-string($char-code)"/>
            </xsl:matching-substring>
            <xsl:non-matching-substring>
               <xsl:sequence select="."/>
            </xsl:non-matching-substring>
         </xsl:analyze-string>
      </xsl:variable>
      <xsl:sequence select="string-join($result-fragments, '')"/>
   </xsl:function>
   <xsl:variable name="local:charcode-0"
                 as="xs:integer"
                 select="string-to-codepoints('0')"/>
   <xsl:variable name="local:charcode-9"
                 as="xs:integer"
                 select="string-to-codepoints('9')"/>
   <xsl:variable name="local:charcode-a"
                 as="xs:integer"
                 select="string-to-codepoints('a')"/>
   <xsl:function name="local:hex-char2int"
                 as="xs:integer">
      <xsl:param name="char"
                 as="xs:string">
         <!-- Assumed to be exactly one character long and hex (a-f0-9) -->
      </xsl:param>
      <xsl:variable name="char-code"
                    as="xs:integer"
                    select="string-to-codepoints(lower-case(substring($char, 1, 1)))"/>
      <xsl:choose>
         <xsl:when test="($char-code ge $local:charcode-0) and ($char-code le $local:charcode-9)">
            <xsl:sequence select="$char-code - $local:charcode-0"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:sequence select="$char-code - $local:charcode-a + 10"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:function>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/ada_2_fhir-r4/mp/9.3.0/fhir-xsd/R4-sch/claim.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.3.0; 2024-04-09T18:20:47.77+02:00 == -->
<axsl:stylesheet version="2.0"
                 xmlns:axsl="http://www.w3.org/1999/XSL/Transform"
                 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                 xmlns:iso="http://purl.oclc.org/dsdl/schematron"
                 xmlns:f="http://hl7.org/fhir"
                 xmlns:h="http://www.w3.org/1999/xhtml"
                 xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                 xmlns:saxon="http://saxon.sf.net/"
                 xmlns:xs="http://www.w3.org/2001/XMLSchema"
                 xmlns:schold="http://www.ascc.net/xml/schematron"
                 xmlns:xhtml="http://www.w3.org/1999/xhtml">
   <!--Implementers: please note that overriding process-prolog or process-root is 
    the preferred method for meta-stylesheets to use where possible. -->
   <axsl:param name="archiveDirParameter"/>
   <axsl:param name="archiveNameParameter"/>
   <axsl:param name="fileNameParameter"/>
   <axsl:param name="fileDirParameter"/>
   <axsl:variable name="document-uri">
      <axsl:value-of select="document-uri(/)"/>
   </axsl:variable>
   <!--PHASES-->
   <!--PROLOG-->
   <axsl:output method="xml"
                omit-xml-declaration="no"
                standalone="yes"
                indent="yes"
                xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
   <!--XSD TYPES FOR XSLT2-->
   <!--KEYS AND FUNCTIONS-->
   <!--DEFAULT RULES-->
   <!--MODE: SCHEMATRON-SELECT-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <axsl:template match="*"
                  mode="schematron-select-full-path">
      <axsl:apply-templates select="."
                            mode="schematron-get-full-path"/>
   </axsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <axsl:template match="*"
                  mode="schematron-get-full-path">
      <axsl:apply-templates select="parent::*"
                            mode="schematron-get-full-path"/>
      <axsl:text>/</axsl:text>
      <axsl:choose>
         <axsl:when test="namespace-uri()=''">
            <axsl:value-of select="name()"/>
         </axsl:when>
         <axsl:otherwise>
            <axsl:text>*:</axsl:text>
            <axsl:value-of select="local-name()"/>
            <axsl:text>[namespace-uri()='</axsl:text>
            <axsl:value-of select="namespace-uri()"/>
            <axsl:text>']</axsl:text>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:variable name="preceding"
                     select="count(preceding-sibling::*[local-name()=local-name(current())                                   and namespace-uri() = namespace-uri(current())])"/>
      <axsl:text>[</axsl:text>
      <axsl:value-of select="1+ $preceding"/>
      <axsl:text>]</axsl:text>
   </axsl:template>
   <axsl:template match="@*"
                  mode="schematron-get-full-path">
      <axsl:apply-templates select="parent::*"
                            mode="schematron-get-full-path"/>
      <axsl:text>/</axsl:text>
      <axsl:choose>
         <axsl:when test="namespace-uri()=''">@
<axsl:value-of select="name()"/>
         </axsl:when>
         <axsl:otherwise>
            <axsl:text>@*[local-name()='</axsl:text>
            <axsl:value-of select="local-name()"/>
            <axsl:text>' and namespace-uri()='</axsl:text>
            <axsl:value-of select="namespace-uri()"/>
            <axsl:text>']</axsl:text>
         </axsl:otherwise>
      </axsl:choose>
   </axsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-2-->
   <!--This mode can be used to generate prefixed XPath for humans-->
   <axsl:template match="node() | @*"
                  mode="schematron-get-full-path-2">
      <axsl:for-each select="ancestor-or-self::*">
         <axsl:text>/</axsl:text>
         <axsl:value-of select="name(.)"/>
         <axsl:if test="preceding-sibling::*[name(.)=name(current())]">
            <axsl:text>[</axsl:text>
            <axsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <axsl:text>]</axsl:text>
         </axsl:if>
      </axsl:for-each>
      <axsl:if test="not(self::*)">
         <axsl:text/>/@
<axsl:value-of select="name(.)"/>
      </axsl:if>
   </axsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-3-->
   <!--This mode can be used to generate prefixed XPath for humans 
	(Top-level element has index)-->
   <axsl:template match="node() | @*"
                  mode="schematron-get-full-path-3">
      <axsl:for-each select="ancestor-or-self::*">
         <axsl:text>/</axsl:text>
         <axsl:value-of select="name(.)"/>
         <axsl:if test="parent::*">
            <axsl:text>[</axsl:text>
            <axsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <axsl:text>]</axsl:text>
         </axsl:if>
      </axsl:for-each>
      <axsl:if test="not(self::*)">
         <axsl:text/>/@
<axsl:value-of select="name(.)"/>
      </axsl:if>
   </axsl:template>
   <!--MODE: GENERATE-ID-FROM-PATH -->
   <axsl:template match="/"
                  mode="generate-id-from-path"/>
   <axsl:template match="text()"
                  mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*"
                            mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.text-', 1+count(preceding-sibling::text()), '-')"/>
   </axsl:template>
   <axsl:template match="comment()"
                  mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*"
                            mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.comment-', 1+count(preceding-sibling::comment()), '-')"/>
   </axsl:template>
   <axsl:template match="processing-instruction()"
                  mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*"
                            mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.processing-instruction-', 1+count(preceding-sibling::processing-instruction()), '-')"/>
   </axsl:template>
   <axsl:template match="@*"
                  mode="generate-id-from-path">
      <axsl:apply-templates select="parent::*"
                            mode="generate-id-from-path"/>
      <axsl:value-of select="concat('.@', name())"/>
   </axsl:template>
   <axsl:template match="*"
                  mode="generate-id-from-path"
                  priority="-0.5">
      <axsl:apply-templates select="parent::*"
                            mode="generate-id-from-path"/>
      <axsl:text>.</axsl:text>
      <axsl:value-of select="concat('.',name(),'-',1+count(preceding-sibling::*[name()=name(current())]),'-')"/>
   </axsl:template>
   <!--MODE: GENERATE-ID-2 -->
   <axsl:template match="/"
                  mode="generate-id-2">U</axsl:template>
   <axsl:template match="*"
                  mode="generate-id-2"
                  priority="2">
      <axsl:text>U</axsl:text>
      <axsl:number level="multiple"
                   count="*"/>
   </axsl:template>
   <axsl:template match="node()"
                  mode="generate-id-2">
      <axsl:text>U.</axsl:text>
      <axsl:number level="multiple"
                   count="*"/>
      <axsl:text>n</axsl:text>
      <axsl:number count="node()"/>
   </axsl:template>
   <axsl:template match="@*"
                  mode="generate-id-2">
      <axsl:text>U.</axsl:text>
      <axsl:number level="multiple"
                   count="*"/>
      <axsl:text>_</axsl:text>
      <axsl:value-of select="string-length(local-name(.))"/>
      <axsl:text>_</axsl:text>
      <axsl:value-of select="translate(name(),':','.')"/>
   </axsl:template>
   <!--Strip characters-->
   <axsl:template match="text()"
                  priority="-1"/>
   <!--SCHEMA SETUP-->
   <axsl:template match="/">
      <svrl:schematron-output title=""
                              schemaVersion=""
                              xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
         <axsl:comment>
            <axsl:value-of select="$archiveDirParameter"/>   
		 
<axsl:value-of select="$archiveNameParameter"/>  
		 
<axsl:value-of select="$fileNameParameter"/>  
		 
<axsl:value-of select="$fileDirParameter"/>
         </axsl:comment>
         <svrl:ns-prefix-in-attribute-values uri="http://hl7.org/fhir"
                                             prefix="f"/>
         <svrl:ns-prefix-in-attribute-values uri="http://www.w3.org/1999/xhtml"
                                             prefix="h"/>
         <svrl:active-pattern>
            <axsl:attribute name="document">
               <axsl:value-of select="document-uri(/)"/>
            </axsl:attribute>
            <axsl:attribute name="name">Global</axsl:attribute>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/"
                               mode="M2"/>
         <svrl:active-pattern>
            <axsl:attribute name="document">
               <axsl:value-of select="document-uri(/)"/>
            </axsl:attribute>
            <axsl:attribute name="name">Global 1</axsl:attribute>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/"
                               mode="M3"/>
         <svrl:active-pattern>
            <axsl:attribute name="document">
               <axsl:value-of select="document-uri(/)"/>
            </axsl:attribute>
            <axsl:attribute name="name">Claim</axsl:attribute>
            <axsl:apply-templates/>
         </svrl:active-pattern>
         <axsl:apply-templates select="/"
                               mode="M4"/>
      </svrl:schematron-output>
   </axsl:template>
   <!--SCHEMATRON PATTERNS-->
   <!--PATTERN Global-->
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Global</svrl:text>
   <!--RULE -->
   <axsl:template match="f:extension"
                  priority="1001"
                  mode="M2">
      <svrl:fired-rule context="f:extension"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ext-1: Must have either extensions or value[x], not both</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M2"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:modifierExtension"
                  priority="1000"
                  mode="M2">
      <svrl:fired-rule context="f:modifierExtension"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ext-1: Must have either extensions or value[x], not both</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M2"/>
   </axsl:template>
   <axsl:template match="text()"
                  priority="-1"
                  mode="M2"/>
   <axsl:template match="@*|node()"
                  priority="-2"
                  mode="M2">
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M2"/>
   </axsl:template>
   <!--PATTERN Global 1-->
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Global 1</svrl:text>
   <!--RULE -->
   <axsl:template match="f:*"
                  priority="1000"
                  mode="M3">
      <svrl:fired-rule context="f:*"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="@value|f:*|h:div"/>
         <axsl:otherwise>
            <svrl:failed-assert test="@value|f:*|h:div"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>global-1: All FHIR elements must have a @value or children</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M3"/>
   </axsl:template>
   <axsl:template match="text()"
                  priority="-1"
                  mode="M3"/>
   <axsl:template match="@*|node()"
                  priority="-2"
                  mode="M3">
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M3"/>
   </axsl:template>
   <!--PATTERN Claim-->
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Claim</svrl:text>
   <!--RULE -->
   <axsl:template match="f:Claim"
                  priority="1086"
                  mode="M4">
      <svrl:fired-rule context="f:Claim"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(parent::f:contained and f:contained)"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(parent::f:contained and f:contained)"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dom-2: If the resource is contained in another resource, it SHALL NOT contain nested Resources</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dom-4: If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(for $id in f:contained/*/f:id/@value return $id[not(parent::*/descendant::f:reference/@value=concat('#', $id/*/id/@value) or descendant::f:reference[@value='#'])]))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(for $id in f:contained/*/f:id/@value return $id[not(parent::*/descendant::f:reference/@value=concat('#', $id/*/id/@value) or descendant::f:reference[@value='#'])]))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dom-3: If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:contained/*/f:meta/f:security))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:contained/*/f:meta/f:security))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>dom-5: If a resource is contained in another resource, it SHALL NOT have a security label</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:text/h:div"
                  priority="1085"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:text/h:div"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(descendant-or-self::*[not(local-name(.)=('a', 'abbr', 'acronym', 'b', 'big', 'blockquote', 'br', 'caption', 'cite', 'code', 'col', 'colgroup', 'dd', 'dfn', 'div', 'dl', 'dt', 'em', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'hr', 'i', 'img', 'li', 'ol', 'p', 'pre', 'q', 'samp', 'small', 'span', 'strong', 'sub', 'sup', 'table', 'tbody', 'td', 'tfoot', 'th', 'thead', 'tr', 'tt', 'ul', 'var'))]) and not(descendant-or-self::*/@*[not(name(.)=('abbr', 'accesskey', 'align', 'alt', 'axis', 'bgcolor', 'border', 'cellhalign', 'cellpadding', 'cellspacing', 'cellvalign', 'char', 'charoff', 'charset', 'cite', 'class', 'colspan', 'compact', 'coords', 'dir', 'frame', 'headers', 'height', 'href', 'hreflang', 'hspace', 'id', 'lang', 'longdesc', 'name', 'nowrap', 'rel', 'rev', 'rowspan', 'rules', 'scope', 'shape', 'span', 'src', 'start', 'style', 'summary', 'tabindex', 'title', 'type', 'valign', 'value', 'vspace', 'width'))])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(descendant-or-self::*[not(local-name(.)=('a', 'abbr', 'acronym', 'b', 'big', 'blockquote', 'br', 'caption', 'cite', 'code', 'col', 'colgroup', 'dd', 'dfn', 'div', 'dl', 'dt', 'em', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'hr', 'i', 'img', 'li', 'ol', 'p', 'pre', 'q', 'samp', 'small', 'span', 'strong', 'sub', 'sup', 'table', 'tbody', 'td', 'tfoot', 'th', 'thead', 'tr', 'tt', 'ul', 'var'))]) and not(descendant-or-self::*/@*[not(name(.)=('abbr', 'accesskey', 'align', 'alt', 'axis', 'bgcolor', 'border', 'cellhalign', 'cellpadding', 'cellspacing', 'cellvalign', 'char', 'charoff', 'charset', 'cite', 'class', 'colspan', 'compact', 'coords', 'dir', 'frame', 'headers', 'height', 'href', 'hreflang', 'hspace', 'id', 'lang', 'longdesc', 'name', 'nowrap', 'rel', 'rev', 'rowspan', 'rules', 'scope', 'shape', 'span', 'src', 'start', 'style', 'summary', 'tabindex', 'title', 'type', 'valign', 'value', 'vspace', 'width'))])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>txt-1: The narrative SHALL contain only the basic html formatting elements and attributes described in chapters 7-11 (except section 4 of chapter 9) and 15 of the HTML 4.0 standard, &lt;a&gt; elements (either name or href), images and internally contained style attributes</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="descendant::text()[normalize-space(.)!=''] or descendant::h:img[@src]"/>
         <axsl:otherwise>
            <svrl:failed-assert test="descendant::text()[normalize-space(.)!=''] or descendant::h:img[@src]"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>txt-2: The narrative SHALL have some non-whitespace content</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:identifier/f:period"
                  priority="1084"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:identifier/f:assigner"
                  priority="1083"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:patient"
                  priority="1082"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:patient"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:patient/f:identifier/f:period"
                  priority="1081"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:patient/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:patient/f:identifier/f:assigner"
                  priority="1080"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:patient/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:billablePeriod"
                  priority="1079"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:billablePeriod"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:enterer"
                  priority="1078"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:enterer"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:enterer/f:identifier/f:period"
                  priority="1077"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:enterer/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:enterer/f:identifier/f:assigner"
                  priority="1076"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:enterer/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:insurer"
                  priority="1075"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:insurer"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:insurer/f:identifier/f:period"
                  priority="1074"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:insurer/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:insurer/f:identifier//f:assigner"
                  priority="1073"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:insurer/f:identifier//f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:provider"
                  priority="1072"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:provider"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:provider/f:identifier/f:period"
                  priority="1071"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:provider/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:provider/f:identifier/f:assigner"
                  priority="1070"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:provider/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:related/f:claim"
                  priority="1069"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:related/f:claim"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:related/f:claim/f:identifier/f:period"
                  priority="1068"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:related/f:claim/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:related/f:claim/f:identifier/f:assigner"
                  priority="1067"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:related/f:claim/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:related/f:reference/f:period"
                  priority="1066"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:related/f:reference/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:related/f:reference/f:assigner"
                  priority="1065"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:related/f:reference/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:prescription"
                  priority="1064"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:prescription"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:prescription/f:identifier/f:period"
                  priority="1063"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:prescription/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:prescription/f:identifier/f:assigner"
                  priority="1062"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:prescription/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:originalPrescription"
                  priority="1061"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:originalPrescription"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:originalPrescription/f:identifier/f:period"
                  priority="1060"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:originalPrescription/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:originalPrescription/f:identifier/f:assigner"
                  priority="1059"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:originalPrescription/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:payee/f:party"
                  priority="1058"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:payee/f:party"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:payee/f:party/f:identifier/f:period"
                  priority="1057"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:payee/f:party/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:payee/f:party/f:identifier/f:assigner"
                  priority="1056"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:payee/f:party/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:referral"
                  priority="1055"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:referral"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:referral/f:identifier/f:period"
                  priority="1054"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:referral/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:referral/f:identifier/f:assigner"
                  priority="1053"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:referral/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:facility"
                  priority="1052"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:facility"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:facility/f:identifier/f:period"
                  priority="1051"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:facility/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:facility/f:identifier/f:assigner"
                  priority="1050"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:facility/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:careTeam/f:provider"
                  priority="1049"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:careTeam/f:provider"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:careTeam/f:provider/f:identifier/f:period"
                  priority="1048"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:careTeam/f:provider/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:careTeam/f:provider/f:identifier/f:assigner"
                  priority="1047"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:careTeam/f:provider/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:supportingInfo/f:timingPeriod"
                  priority="1046"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:supportingInfo/f:timingPeriod"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:supportingInfo/f:valueQuantity"
                  priority="1045"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:supportingInfo/f:valueQuantity"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:code)) or exists(f:system)"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:code)) or exists(f:system)"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>qty-3: If a code for the unit is present, the system SHALL also be present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:supportingInfo/f:valueAttachment"
                  priority="1044"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:supportingInfo/f:valueAttachment"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:data)) or exists(f:contentType)"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:data)) or exists(f:contentType)"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>att-1: If the Attachment has data, it SHALL have a contentType</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:supportingInfo/f:valueReference"
                  priority="1043"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:supportingInfo/f:valueReference"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:supportingInfo/f:valueReference/f:identifier/f:period"
                  priority="1042"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:supportingInfo/f:valueReference/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:supportingInfo/f:valueReference/f:identifier/f:assigner"
                  priority="1041"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:supportingInfo/f:valueReference/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:diagnosis/f:diagnosisReference"
                  priority="1040"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:diagnosis/f:diagnosisReference"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:diagnosis/f:diagnosisReference/f:identifier/f:period"
                  priority="1039"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:diagnosis/f:diagnosisReference/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:diagnosis/f:diagnosisReference/f:identifier/f:assigner"
                  priority="1038"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:diagnosis/f:diagnosisReference/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:procedure/f:procedureReference"
                  priority="1037"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:procedure/f:procedureReference"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:procedure/f:procedureReference/f:identifier/f:period"
                  priority="1036"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:procedure/f:procedureReference/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:procedure/f:procedureReference/f:identifier/f:assigner"
                  priority="1035"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:procedure/f:procedureReference/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:procedure/f:udi"
                  priority="1034"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:procedure/f:udi"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:procedure/f:udi/f:identifier/f:period"
                  priority="1033"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:procedure/f:udi/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:procedure/f:udi/f:identifier/f:assigner"
                  priority="1032"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:procedure/f:udi/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:insurance/f:identifier/f:period"
                  priority="1031"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:insurance/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:insurance/f:identifier/f:assigner"
                  priority="1030"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:insurance/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:insurance/f:coverage"
                  priority="1029"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:insurance/f:coverage"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:insurance/f:coverage/f:identifier/f:period"
                  priority="1028"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:insurance/f:coverage/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:insurance/f:coverage/f:identifier/f:assigner"
                  priority="1027"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:insurance/f:coverage/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:insurance/f:claimResponse"
                  priority="1026"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:insurance/f:claimResponse"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:insurance/f:claimResponse/f:identifier/f:period"
                  priority="1025"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:insurance/f:claimResponse/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:insurance/f:claimResponse/f:identifier/f:assigner"
                  priority="1024"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:insurance/f:claimResponse/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:accident/f:locationAddress/f:period"
                  priority="1023"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:accident/f:locationAddress/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:accident/f:locationReference"
                  priority="1022"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:accident/f:locationReference"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:accident/f:locationReference/f:identifier/f:period"
                  priority="1021"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:accident/f:locationReference/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:accident/f:locationReference/f:identifier/f:assigner"
                  priority="1020"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:accident/f:locationReference/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:servicedPeriod"
                  priority="1019"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:servicedPeriod"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:locationAddress/f:period"
                  priority="1018"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:locationAddress/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:locationReference"
                  priority="1017"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:locationReference"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:locationReference/f:identifier/f:period"
                  priority="1016"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:locationReference/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:locationReference/f:identifier/f:assigner"
                  priority="1015"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:locationReference/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:quantity"
                  priority="1014"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:quantity"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:code)) or exists(f:system)"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:code)) or exists(f:system)"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>qty-3: If a code for the unit is present, the system SHALL also be present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:udi"
                  priority="1013"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:udi"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:udi/f:identifier/f:period"
                  priority="1012"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:udi/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:udi/f:identifier/f:assigner"
                  priority="1011"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:udi/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:encounter"
                  priority="1010"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:encounter"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:encounter/f:identifier/f:period"
                  priority="1009"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:encounter/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:encounter/f:identifier/f:assigner"
                  priority="1008"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:encounter/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:detail/f:quantity"
                  priority="1007"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:detail/f:quantity"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:code)) or exists(f:system)"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:code)) or exists(f:system)"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>qty-3: If a code for the unit is present, the system SHALL also be present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:detail/f:udi"
                  priority="1006"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:detail/f:udi"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:detail/f:udi/f:identifier/f:period"
                  priority="1005"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:detail/f:udi/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:detail/f:udi/f:identifier/f:assigner"
                  priority="1004"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:detail/f:udi/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:detail/f:subDetail/f:quantity"
                  priority="1003"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:detail/f:subDetail/f:quantity"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:code)) or exists(f:system)"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:code)) or exists(f:system)"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>qty-3: If a code for the unit is present, the system SHALL also be present</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:detail/f:subDetail/f:udi"
                  priority="1002"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:detail/f:subDetail/f:udi"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:detail/f:subDetail/f:udi/f:identifier/f:period"
                  priority="1001"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:detail/f:subDetail/f:udi/f:identifier/f:period"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(exists(f:start/@value)) or not(exists(f:end/@value)) or (xs:dateTime(f:start/@value) &lt;= xs:dateTime(f:end/@value))"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>per-1: If present, start SHALL have a lower value than end</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <!--RULE -->
   <axsl:template match="f:Claim/f:item/f:detail/f:subDetail/f:udi/f:identifier/f:assigner"
                  priority="1000"
                  mode="M4">
      <svrl:fired-rule context="f:Claim/f:item/f:detail/f:subDetail/f:udi/f:identifier/f:assigner"
                       xmlns:svrl="http://purl.oclc.org/dsdl/svrl"/>
      <!--ASSERT -->
      <axsl:choose>
         <axsl:when test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"/>
         <axsl:otherwise>
            <svrl:failed-assert test="not(starts-with(f:reference/@value, '#')) or exists(ancestor::*[self::f:entry or self::f:parameter]/f:resource/f:*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')]|/*/f:contained/f:*[f:id/@value=substring-after(current()/f:reference/@value, '#')])"
                                xmlns:svrl="http://purl.oclc.org/dsdl/svrl">
               <axsl:attribute name="location">
                  <axsl:apply-templates select="."
                                        mode="schematron-select-full-path"/>
               </axsl:attribute>
               <svrl:text>ref-1: SHALL have a contained resource if a local reference is provided</svrl:text>
            </svrl:failed-assert>
         </axsl:otherwise>
      </axsl:choose>
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
   <axsl:template match="text()"
                  priority="-1"
                  mode="M4"/>
   <axsl:template match="@*|node()"
                  priority="-2"
                  mode="M4">
      <axsl:apply-templates select="*|comment()|processing-instruction()"
                            mode="M4"/>
   </axsl:template>
</axsl:stylesheet>
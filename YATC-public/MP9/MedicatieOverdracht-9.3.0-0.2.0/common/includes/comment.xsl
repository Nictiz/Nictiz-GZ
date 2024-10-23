<?xml version="1.0" encoding="UTF-8"?>

<!-- == Provenance: HL7-mappings/util/comment.xsl == -->
<!-- == Distribution: VZVZ-MedicatieOverdracht-9.3.0; 0.2.0; 2024-03-14T08:34:46.14+01:00 == -->
<xsl:stylesheet exclude-result-prefixes="xs"
                version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:nf="http://www.nictiz.nl/functions"
                xmlns:functx="http://www.functx.com"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl">
   <xd:doc>
      <xd:desc>Contains generic comment template</xd:desc>
   </xd:doc>
   <xd:doc>
      <xd:desc> copy an element with all of it's contents in comments </xd:desc>
      <xd:param name="element"/>
   </xd:doc>
   <xsl:template name="copyElementInComment">
      <xsl:param name="element"/>
      <xsl:text disable-output-escaping="yes">
                       &lt;!--</xsl:text>
      <xsl:for-each select="$element">
         <xsl:call-template name="copyWithoutComments"/>
      </xsl:for-each>
      <xsl:text disable-output-escaping="yes">--&gt;
</xsl:text>
   </xsl:template>
   <xd:doc>
      <xd:desc> copy without comments </xd:desc>
   </xd:doc>
   <xsl:template name="copyWithoutComments">
      <xsl:copy>
         <xsl:for-each select="@* | *">
            <xsl:call-template name="copyWithoutComments"/>
         </xsl:for-each>
      </xsl:copy>
   </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" version="3.0" exclude-inline-prefixes="#all">
    
    <!-- ================================================================== -->
    <!--
        This is a very simple test script to check whether Morgana actually works and can find the Saxon processor. 
    -->
    <!-- ================================================================== -->
    
    <p:output port="result" primary="true" sequence="false" content-types="xml" serialization="map{'method': 'xml', 'indent': true()}"/>

    <p:xslt>
        <p:with-input port="source">
            <TESTMORGANA>This is a test to see whether Morgana functions correct and can find the Saxon processor. If this output appears and has a timestamp attribute, all is ok!</TESTMORGANA>
        </p:with-input>
        <p:with-input port="stylesheet">
            <xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
                <xsl:mode on-no-match="shallow-copy"/>
                <xsl:template match="/*">
                    <xsl:copy>
                        <!-- Just add a timestamp attribute to show Saxon was active... -->
                        <xsl:attribute name="timestamp" select="current-dateTime()"/>
                        <xsl:apply-templates select="@* | node()"/>
                    </xsl:copy>
                </xsl:template>
            </xsl:stylesheet>
        </p:with-input>
    </p:xslt>

</p:declare-step>

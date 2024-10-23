<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:local="#local.jtc_qbt_jzb" exclude-result-prefixes="#all" expand-text="true">
    <!-- ======================================================================= -->
    <!-- 
       Reorganizes the list of includes into a master and include section, and de-duplicates the includes.
       
       Input is the output of create-master-list.xsl.
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

    <xsl:mode on-no-match="shallow-skip"/>

    <!-- ================================================================== -->

    <xsl:template match="/*">
        <xsl:copy>
            <xsl:copy-of select="@*"/>

            <!-- Split off the master files: -->
            <masters>
                <xsl:for-each select="/*/master">
                    <document master="true">
                        <xsl:copy-of select="@*"/>
                    </document>
                </xsl:for-each>
            </masters>

            <!-- Split off and de-duplicate (on source href) the includes. Take care not to mention a master that is included as an include: -->
            <xsl:variable name="masters-href-source" as="xs:string*" select="(/*/master/@href-source ! string(.)) => distinct-values()"/>
            <includes>
                <xsl:for-each-group select="/*/master//include" group-by="string(@href-source)">
                    <xsl:for-each select="current-group()[1]">
                        <xsl:if test="not(@href-source = $masters-href-source)">
                            <document master="false">
                                <xsl:copy-of select="@*"/>
                            </document>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:for-each-group>
            </includes>

        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>

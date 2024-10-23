<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" exclude-result-prefixes="#all" expand-text="false" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:hl7="urn:hl7-org:v3" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:nf="http://www.nictiz.nl/functions" xmlns:html="http://www.w3.org/1999/xhtml" xmlns:yatcs="https://nictiz.nl/ns/YATC-shared" xmlns:nwf="http://www.nictiz.nl/wiki-functions" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:local="#local.2023020714593479383060100" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <!-- ================================================================== -->
    <!--
         This XSL was created to facilitate mapping from ADA xml to wiki table(s) 
         http://nictiz.nl/fhir/StructureDefinition/zib-MedicationAdministrationAgreement. 
         The HL7 V3 interaction contains both logistical information and therapeutic information.
 
         History:
         2018-06-12 version 0.1 AW Initial version as ADA2test-wiki-table.xsl
         2019-07-30 version 0.2 AH Moved to more consolidated location, renamed to adainstance_2_wikitable.xsl
    -->
    <!-- ================================================================== -->
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
    <!-- ================================================================== -->

    <xsl:import href="wiki-functions.xsl"/>

    <xsl:output name="html" method="html" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes"/>

    <xsl:output method="text" encoding="UTF-16"/>
    <xsl:output name="html" method="html"/>

    <!-- ======================================================================= -->

    <xsl:param name="projectPrefix" select="(//@prefix)[1]"/>
    <xsl:param name="adaReleaseFile" select="document(concat('../../projects/', replace($projectPrefix, '-$', ''), '/definitions/', $projectPrefix, 'ada-release.xml'))"/>
    <xsl:param name="transactionId" select="(//@transactionRef)[1]"/>

    <xsl:param name="communityName" as="xs:string?"/>
    <xsl:param name="communityLabels" as="xs:string*"/>

    <xsl:param name="tabelKopNiveau" select="'2'"/>

    <xsl:variable name="tabelKopMarker">
        <xsl:choose>
            <xsl:when test="$tabelKopNiveau castable as xs:integer and xs:integer($tabelKopNiveau) gt 2">
                <xsl:value-of select="                         string-join(for $i in (1 to xs:integer($tabelKopNiveau))                         return                             '=', '')"/>
            </xsl:when>
            <xsl:otherwise>
                <!-- Could error out, but what gives ... just use the original default -->
                <xsl:text>==</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <!-- donkerblauw -->
    <xsl:variable name="tabelkop-achtergrond-kleur">#1F497D</xsl:variable>
    <xsl:variable name="tabelkop-font-kleur">white</xsl:variable>
    <!-- grijzig -->
    <xsl:variable name="element-achtergrond-kleur">#E3E3E3</xsl:variable>
    <xsl:variable name="elementwaarde-achtergrond-kleur">white</xsl:variable>

    <!-- collectie van ada instances of searchset.xml waarin geen adaxml element voorkomt
        Als param adaWorkingSetDirectory niet leeg is, neem dan aan dat we een hele inputmap moeten converteren en negeer standaard input 
        Als param adaWorkingSetDirectory wel leeg is, neem dan aan dat we de standaard input moeten converteren
    -->
    <xsl:variable name="this" select="if (string-length($adaWorkingSetDirectory) gt 0) then yatcs:get-ada-files()//(adaxml/data/* | //Bundle/entry/resource/*) else (adaxml/data/* | //Bundle/entry/resource/*)" as="element()*"/>
    
    <!-- ================================================================== -->

    <xsl:template match="/">
        <!--  -->
        <xsl:text>
__NUMBEREDHEADINGS__
{{IssueBox|Deze pagina is nog in bewerking}}
[[Bestand:Nictiz_logo_PO_rechts_rgb.png |link=https://www.nictiz.nl/|rechts|Naar nictiz.nl]]

=Addenda voor inhoudelijke gegevens=
==Overzicht van scenario's==

</xsl:text>
        <!--<xsl:value-of select="concat('&lt;section begin=scenarioset /&gt;')"/>-->
        <xsl:for-each select="$this">
            <xsl:sort select="lower-case(@id)"/>
            <xsl:value-of select="concat('&lt;section begin=', @id, ' /&gt;')"/>
            <xsl:text>
</xsl:text>
            <xsl:choose>
                <xsl:when test="string-length(@title) gt 0">
                    <xsl:text>===</xsl:text>
                    <xsl:value-of select="normalize-space(@title)"/>
                    <xsl:text>===
</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>===Scenarioset===
</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="." mode="wiki"/>
            <xsl:value-of select="concat('&lt;section end=', @id, ' /&gt;')"/>
        </xsl:for-each>
        <!--<xsl:value-of select="concat('&lt;section end=scenarioset /&gt;')"/>-->
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="adaxml/data/* | Bundle/entry/resource/*" mode="wiki">
        <!--  -->
        <xsl:variable name="ada-id" select="@id"/>
        <xsl:variable name="patient" select=".//*[local-name() = 'patient']"/>
        <!-- standaard zib Patient NL, standaard JGZ BDS patient, standaard zib Patient EN -->
        <xsl:variable name="patient-achternaam" select="($patient/naamgegevens/geslachtsnaam/achternaam/@value | //r003_persoonsgegevens[1]/geslachtsnaam[1]/@value | $patient/name_information//last_name/@value)[1]"/>
        <xsl:variable name="tabel" as="element()">
            <tabellen>
                <!-- Een tabel per top-level group -->
                <xsl:for-each select="./*">
                    <!-- If this ada element has an @id, let's put it in the group name and add an anchor in a span html element -->
                    <xsl:if test="nf:get-concept-type(.) eq 'group'">
                        <xsl:variable name="groepNaam" as="xs:string*">
                            <!--<xsl:choose>
                                <xsl:when test="@id[string-length(normalize-space()) gt 0]">
                                    <xsl:value-of select="concat('&lt;span id=&quot;', normalize-space(@id), '&quot; title=&quot;Intern ID = ', normalize-space(@id), '&quot;&gt;', nf:element-name(.), '&lt;/span&gt;')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="nf:element-name(.)"/>
                                </xsl:otherwise>
                            </xsl:choose>-->
                            <xsl:value-of select="nf:element-name(.)"/>
                        </xsl:variable>
                        <tabel type="{./local-name()}" title="{string-join($groepNaam, ' - ')}">
                            <xsl:if test="@id[string-length(normalize-space()) gt 0]">
                                <xsl:attribute name="id" select="normalize-space(@id)"/>
                            </xsl:if>
                            <xsl:if test="ancestor-or-self::*[@app][1]/@id[string-length(normalize-space()) gt 0]">
                                <xsl:attribute name="instance-id" select="normalize-space(ancestor-or-self::*[@app][1]/@id)"/>
                            </xsl:if>
                            <!-- een tabelrij (gegevenselement of groep) per onderliggend dataset concept -->
                            <xsl:apply-templates select="./*" mode="maak-tabel-rij"/>
                        </tabel>
                    </xsl:if>
                </xsl:for-each>
            </tabellen>
        </xsl:variable>
        <xsl:variable name="transactie-shortname" select="./@shortName"/>
        <xsl:for-each select="$tabel/tabel">
            <xsl:text>
</xsl:text>
            <xsl:value-of select="$tabelKopMarker"/>
            <xsl:value-of select="./@title"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="$patient-achternaam"/>
            <xsl:value-of select="$tabelKopMarker"/>
            <xsl:text>
</xsl:text>
            <!-- als er meer dan 1 instance in wordt gestuurd moeten we een uniekmaker hebben in het adaId. Uit compatibiliteitsoverwegingen 
                met bestaand gebruik zoals JGZ van sectie id's doen we dat niet als er gewoon 1 instance ingestuurd wordt -->
            <xsl:choose>
                <xsl:when test="count($this) gt 1">
                    <xsl:value-of select="concat('&lt;section begin=', replace(normalize-space(concat(@type, '_', $ada-id, '_', $patient-achternaam)), '\s', ''), ' /&gt;')"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="concat('&lt;section begin=', replace(normalize-space(concat(@type, '_', $patient-achternaam)), '\s', ''), ' /&gt;')"/>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="." mode="wiki"/>
            <xsl:choose>
                <xsl:when test="count($this) gt 1">
                    <xsl:value-of select="concat('&lt;section end=', replace(normalize-space(concat(@type, '_', $ada-id, '_', $patient-achternaam)), '\s', ''), ' /&gt;')"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="concat('&lt;section end=', replace(normalize-space(concat(@type, '_', $patient-achternaam)), '\s', ''), ' /&gt;')"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="tabel-default" match="*" mode="maak-tabel">
        <!-- Creates a nested 'tabel' from which it is easy to generate wiki or other documentation. 
            This way the processing to make a table is separated from specific wiki-stuff. 
            Other ways to output this table (csv? html?) is then easier to create. -->
        <xsl:param name="in" select=".">
            <!-- The ada group element which contents are first rendered in this nested 'tabel'. -->
        </xsl:param>
        <xsl:param name="appendToTitle" as="xs:string?">
            <!-- Optional. String to append to title of Table -->
        </xsl:param>
        <xsl:for-each select="$in">
            <!-- If this ada element has an @id, let's put it in the title. 20210223 AH: deactivated that because it leads to endless discussions
                with vendors expecting these ids to be in the data, which is a possibility but more often than not, it is only aimed for our own html linkage -->
            <xsl:variable name="tabelNaam" as="xs:string*">
                <xsl:choose>
                    <xsl:when test="@id[string-length(normalize-space()) gt 0]">
                        <xsl:value-of select="concat('&lt;span id=&#34;', normalize-space(@id), '&#34; title=&#34;Intern ID = ', normalize-space(@id), '&#34;&gt;', nf:element-name(.), '&lt;/span&gt;')"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="nf:element-name(.)"/>
                    </xsl:otherwise>
                </xsl:choose>
                <!--<xsl:if test="@id[string-length(normalize-space()) gt 0]">
                    <xsl:value-of select="concat(' met id: ''', @id, '''')"/>
                </xsl:if>-->
                <xsl:if test="$appendToTitle">
                    <xsl:value-of select="$appendToTitle"/>
                </xsl:if>
            </xsl:variable>
            <tabel type="{local-name()}" title="{string-join($tabelNaam, ' - ')}">
                <xsl:if test="@id[string-length(normalize-space()) gt 0]">
                    <xsl:attribute name="id" select="normalize-space(@id)"/>
                </xsl:if>
                <!-- if $in is an element instead of a group (usually this means a top-level concept in the dataset is an element),
                    than make a table row for this concept as well -->
                <xsl:if test="not(*) and (@value | @code | @nullFlavor)">
                    <xsl:apply-templates select="." mode="maak-tabel-rij">
                        <xsl:with-param name="level" select="xs:integer(1)"/>
                    </xsl:apply-templates>
                </xsl:if>
                <xsl:apply-templates select="*" mode="maak-tabel-rij">
                    <xsl:with-param name="level" select="xs:integer(1)"/>
                </xsl:apply-templates>
            </tabel>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="tabel-default-dekkingsgraad" match="*[not(ends-with(local-name(), '-start'))]" mode="maak-tabel-dekkingsgraad">
        <!-- Creates a nested 'tabel' from which it is easy to generate wiki or other documentation This way the processing to make a table is separated from specific wiki-stuff. Other ways to output this table (csv?) is then easier to create. -->
        <xsl:param name="in" select=".">
            <!-- The ada group element which contents are rendered in the nested 'tabel'. This is typically an empty ada xml which contains all possible elements (but was not instantiated with content data). -->
        </xsl:param>
        <xsl:param name="adaxml-element" as="element()*">
            <!-- The collection of ada element containing test data -->
        </xsl:param>
        <xsl:variable name="local-element-name" select="local-name($in)"/>
        <xsl:for-each select="$in">
            <tabel type="{$local-element-name}" title="{nf:element-name(.)}">
                <xsl:apply-templates select="./*[not(ends-with(local-name(), '-start'))]" mode="maak-tabel-rij-dekkingsgraad">
                    <xsl:with-param name="level" select="xs:integer(1)"/>
                    <xsl:with-param name="adaxml-element" select="$adaxml-element[local-name() = $local-element-name]/*"/>
                </xsl:apply-templates>
            </tabel>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="gegevenselement[lower-case(@naam) = 'adaextension'][not(@waarde) or string-length(@waarde) = 0]" mode="doWikiRow"><!-- Do not output empty adaextension elements. Helps to make dekkingsgraad table more focussed. -->
        <!-- do not output empty adaextension elements -->
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="tabel" mode="wiki">
        <!-- Actually creates wiki from a table that was generated before, see template with mode 'maak-tabel' -->
        <xsl:param name="current-table" select=".">
            <!-- The table to create a wiki table from -->
        </xsl:param>
        <xsl:param name="widthGegevenselement">
            <!-- Breedte (percentage) van de kolom voor de naam van het gegevenselement --> 25</xsl:param>
        <xsl:variable name="tabel-diepte" select="max($current-table//*[not(*)]/count(ancestor-or-self::*))"/>

        <xsl:for-each select="$current-table">
            <xsl:call-template name="startWikiTable">
                <xsl:with-param name="tabel-diepte" select="$tabel-diepte"/>
                <xsl:with-param name="title">
                    <xsl:choose>
                        <xsl:when test="@id[string-length(normalize-space()) gt 0]">
                            <!--<xsl:value-of select="concat('&lt;span id=&#34;', normalize-space(@id), '&#34; title=&#34;Intern ID = ', normalize-space(@id), '&#34;&gt;', @title, '&lt;/span&gt;')"/>-->
                            <xsl:value-of select="concat('&lt;span id=&#34;', normalize-space(@instance-id), '_', normalize-space(@id), '&#34;&gt;&lt;span id=&#34;', normalize-space(@id), '&#34; title=&#34;Intern ID = ', normalize-space(@id), '&#34;&gt;', @title, '&lt;/span&gt;&lt;/span&gt;')"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="@title"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:with-param>
                <xsl:with-param name="widthGegevenselement" select="$widthGegevenselement"/>
            </xsl:call-template>
            <xsl:apply-templates select="*" mode="doWikiRow">
                <xsl:with-param name="tabel-diepte" select="$tabel-diepte"/>
            </xsl:apply-templates>
            <!-- end wiki table -->
            <xsl:text>
|}</xsl:text>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="gegevenselementWikiRow" match="gegevenselement" mode="doWikiRow">
        <!-- Outputs a table row for a data element -->
        <xsl:param name="tabel-diepte">
            <!-- Depth of the table --> </xsl:param>
        <xsl:param name="backgroundcolor" as="xs:string">
            <!-- The background color for the waarde of this row, defaults to global $elementwaarde-achtergrond-kleur -->
            <xsl:choose>
                <xsl:when test="@backgroundColour">
                    <xsl:value-of select="@backgroundColour"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$elementwaarde-achtergrond-kleur"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:param>
        <xsl:param name="fontcolor" as="xs:string?">
            <!-- The background color for the waarde of this row, defaults to wiki default -->
            <xsl:if test="@fontColour">
                <xsl:value-of select="@fontColour"/>
            </xsl:if>
        </xsl:param>
        <xsl:variable name="waarde" select="string-join(nwf:replace-string-for-wiki-table(@waarde), '')" as="xs:string?"/>
        <xsl:variable name="level" select="@level" as="xs:integer?"/>
        <xsl:variable name="elementNaam" select="@naam" as="xs:string?"/>
        <xsl:variable name="reference" select="@reference" as="xs:string?"/>
        <xsl:text>
|-style="vertical-align:top; background-color: </xsl:text>
        <xsl:value-of select="$element-achtergrond-kleur"/>
        <xsl:text>;"</xsl:text>
        <xsl:choose>
            <xsl:when test="$level lt $tabel-diepte - 1">
                <xsl:text>
|colspan="</xsl:text>
                <xsl:value-of select="$tabel-diepte - $level"/>
                <xsl:text>"|</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>
||</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:value-of select="$elementNaam"/>
        <xsl:text>
|style="background-color: </xsl:text>
        <xsl:value-of select="$backgroundcolor"/>
        <xsl:if test="$fontcolor">
            <xsl:text>; color: </xsl:text>
            <xsl:value-of select="$tabelkop-font-kleur"/>
        </xsl:if>
        <xsl:text>;"|</xsl:text>
        <!--<xsl:choose>
            <xsl:when test="string-length($reference) gt 0">
                <xsl:value-of select="nwf:maak-waarde-met-wiki-reference(ancestor::tabellen, $waarde, $reference)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$waarde"/>
            </xsl:otherwise>
        </xsl:choose>-->
        <xsl:value-of select="$waarde"/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="groep" name="handleWikiRow4Group" mode="doWikiRow">
        <!-- Outputs a table row for a group of data elements -->
        <xsl:param name="tabel-diepte">
            <!-- Depth of the table --> </xsl:param>
        <xsl:param name="backgroundcolor" as="xs:string">
            <!-- The background color for this row, defaults to global $element-achtergrond-kleur -->
            <xsl:choose>
                <xsl:when test="@backgroundColour">
                    <xsl:value-of select="@backgroundColour"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$element-achtergrond-kleur"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:param>
        <xsl:param name="fontcolor" as="xs:string?">
            <!-- The background color for this row, defaults to wiki default -->
            <xsl:if test="@fontColour">
                <xsl:value-of select="@fontColour"/>
            </xsl:if>
        </xsl:param>
        <xsl:variable name="elementNaam" select="@naam"/>
        <xsl:variable name="level" select="@level" as="xs:integer"/>
        <xsl:variable name="waarde" select="@waarde"/>
        <xsl:text>
|-style="vertical-align:top; background-color: </xsl:text>
        <xsl:value-of select="$backgroundcolor"/>
        <xsl:if test="$fontcolor">
            <xsl:text>; color: </xsl:text>
            <xsl:value-of select="$tabelkop-font-kleur"/>
        </xsl:if>
        <xsl:text>;"  
|colspan="</xsl:text>
        <xsl:choose>
            <xsl:when test="$waarde">
                <xsl:value-of select="$tabel-diepte - ($level)"/>
                <xsl:text>"|</xsl:text>
                <xsl:value-of select="$elementNaam"/>
                <xsl:text>
|style="background-color: </xsl:text>
                <xsl:value-of select="$backgroundcolor"/>
                <xsl:text>;"|</xsl:text>
                <xsl:value-of select="concat('''''', $waarde, '''''')"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$tabel-diepte - ($level - 1)"/>
                <xsl:text>"|</xsl:text>
                <xsl:value-of select="$elementNaam"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:variable name="numberOfUnderlyingRows" as="xs:integer" select="1 + count(.//*[not(lower-case(@naam) = 'adaextension' and (not(@waarde) or string-length(@waarde) = 0))]) + count(.//*[local-name() eq 'groep'])"/>
        <xsl:if test="$numberOfUnderlyingRows gt 1">
            <xsl:text>
|-style="vertical-align:top; background-color: </xsl:text>
            <!-- do not override the background color for the underlying rows in this column -->
            <xsl:value-of select="$element-achtergrond-kleur"/>
            <xsl:text>;"</xsl:text>
            <xsl:text>
|rowspan="</xsl:text>
            <!-- Amount of rows for this group. Do not count the empty adaextension elements, they will not be outputted in the table -->
            <xsl:value-of select="$numberOfUnderlyingRows"/>
            <xsl:text>"|</xsl:text>

            <!-- nu de elementen/groepen in deze groep -->
            <xsl:apply-templates select="*" mode="doWikiRow">
                <xsl:with-param name="level" select="$level"/>
                <xsl:with-param name="tabel-diepte" select="$tabel-diepte"/>
            </xsl:apply-templates>

        </xsl:if>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="startWikiTable">
        <!--  -->
        <xsl:param name="title" select="nf:element-name(.)">
            <!-- Titel van de tabel -->
        </xsl:param>
        <xsl:param name="tabel-diepte">
            <!-- Tabel diepte, aantal kolommen -->
        </xsl:param>
        <xsl:param name="widthGegevenselement" as="xs:integer?">
            <!-- Breedte (percentage) van de kolom voor de naam van het gegevenselement --> 25</xsl:param>
        <xsl:text>
{| class="wikitable" width="85%"
|style="background-color: </xsl:text>
        <xsl:value-of select="$tabelkop-achtergrond-kleur"/>
        <xsl:text>; color: </xsl:text>
        <xsl:value-of select="$tabelkop-font-kleur"/>
        <xsl:text>; font-weight: bold; text-align:center;"  colspan="</xsl:text>
        <xsl:value-of select="$tabel-diepte"/>
        <xsl:text>" | </xsl:text>
        <xsl:value-of select="$title"/>
        <xsl:text>
|-style="background-color: </xsl:text>
        <xsl:value-of select="$tabelkop-achtergrond-kleur"/>
        <xsl:text>; color: </xsl:text>
        <xsl:value-of select="$tabelkop-font-kleur"/>
        <xsl:text>; text-align:left;" 
|colspan="</xsl:text>
        <xsl:value-of select="$tabel-diepte - 1"/>
        <xsl:text>" width="</xsl:text>
        <xsl:value-of select="$widthGegevenselement"/>
        <xsl:text>%"| Gegevenselement
|| Waarde
</xsl:text>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*" mode="maak-tabel-rij">
        <!-- Creates a wiki table row -->
        <xsl:param name="level" select="xs:integer(1)" as="xs:integer">
            <!-- The indent level in the table - starts with 1 -->
        </xsl:param>
        <xsl:param name="element-name" select="nf:element-name(.)" as="xs:string?">
            <!-- Optional param to override the default element name -->
        </xsl:param>
        <xsl:param name="value-domain" select="nf:get-concept-value-domain(., 'type')" as="xs:string?">
            <!-- Optional param to override the value domain. Is retrieved from ada-release file by default. -->
        </xsl:param>
        <xsl:variable name="concept-type" select="nf:get-concept-type(.)"/>

        <xsl:choose>
            <xsl:when test="$concept-type eq 'group'">
                <!-- If this ada element has an @id, let's put it in the group name and add an anchor in a span html element -->
                <xsl:variable name="groepNaam" as="xs:string*">
                    <xsl:choose>
                        <xsl:when test="@id[string-length(normalize-space()) gt 0]">
                            <xsl:value-of select="concat('&lt;span id=&#34;', normalize-space(@id), '&#34; title=&#34;Intern ID = ', normalize-space(@id), '&#34;&gt;', $element-name, ' ', normalize-space(@id), '&lt;/span&gt;')"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$element-name"/>
                        </xsl:otherwise>
                    </xsl:choose>
                    <!--<xsl:value-of select="$element-name"/>
                    <xsl:if test="@id[string-length(normalize-space()) gt 0]">
                        <xsl:value-of select="concat(' met id: ''&lt;span id=&quot;', normalize-space(@id), '&quot;&gt;', normalize-space(@id), '&lt;/span&gt;''')"/>
                    </xsl:if>-->
                </xsl:variable>
                <groep conceptId="{@conceptId}" level="{$level}" naam="{string-join($groepNaam, ' - ')}">
                    <xsl:if test="@id[string-length(normalize-space()) gt 0]">
                        <xsl:attribute name="id" select="normalize-space(@id)"/>
                    </xsl:if>
                    <xsl:apply-templates select="*" mode="maak-tabel-rij">
                        <xsl:with-param name="level" select="xs:integer($level + 1)"/>
                    </xsl:apply-templates>
                </groep>
            </xsl:when>
            <xsl:otherwise>
                <!-- item -->
                <xsl:element name="gegevenselement" namespace="">
                    <xsl:attribute name="conceptId" select="@conceptId"/>
                    <xsl:attribute name="level" select="$level"/>
                    <xsl:attribute name="naam" select="$element-name"/>
                    <xsl:attribute name="waarde" select="nf:maak-waarde-basedon-valuedomain(., $value-domain, false(), true())"/>
                    <xsl:if test="$value-domain = 'reference'">
                        <xsl:attribute name="reference" select="@value"/>
                    </xsl:if>
                    <xsl:if test="@id[string-length(normalize-space()) gt 0]">
                        <xsl:attribute name="id" select="normalize-space(@id)"/>
                    </xsl:if>
                </xsl:element>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*[not(ends-with(local-name(), '-start'))]" mode="maak-tabel-rij-dekkingsgraad">
        <!-- tabel rij for dekkingsgraad -->
        <xsl:param name="level" select="xs:integer(1)" as="xs:integer">
            <!-- The indent level in the table - starts with 1 -->
        </xsl:param>
        <xsl:param name="element-name" select="nf:element-name(.)" as="xs:string?">
            <!-- Optional param to override the default element name -->
        </xsl:param>
        <xsl:param name="adaxml-element" as="element()*">
            <!--  -->
        </xsl:param>
        <xsl:variable name="local-element-name" select="local-name(.)"/>
        <xsl:variable name="concept-type" select="nf:get-concept-type(.)"/>
        <xsl:variable name="value-domain" select="nf:get-concept-value-domain(., 'type')"/>

        <xsl:choose>
            <xsl:when test="$concept-type eq 'group'">
                <groep level="{$level}" naam="{$element-name}">
                    <xsl:apply-templates select="./*" mode="maak-tabel-rij-dekkingsgraad">
                        <xsl:with-param name="level" select="xs:integer($level + 1)"/>
                        <xsl:with-param name="adaxml-element" select="                                 (if ($adaxml-element[local-name() = $local-element-name]) then                                     $adaxml-element[local-name() = $local-element-name]                                 else                                     $adaxml-element/*[local-name() = $local-element-name])/*"/>
                    </xsl:apply-templates>
                </groep>
            </xsl:when>
            <xsl:otherwise>
                <!-- item -->
                <xsl:variable name="adaxml-item" select="                         if ($adaxml-element[local-name() = $local-element-name]) then                             $adaxml-element[local-name() = $local-element-name]                         else                             $adaxml-element/*[local-name() = $local-element-name]"/>
                <xsl:element name="gegevenselement" namespace="">
                    <xsl:attribute name="level" select="$level"/>
                    <xsl:attribute name="naam" select="$element-name"/>
                    <xsl:variable name="waarde" as="xs:string*">
                        <xsl:choose>
                            <xsl:when test="@datatype = 'reference'">referentie, zie bouwstenen</xsl:when>
                            <xsl:otherwise>
                                <!-- only add unique entries -->
                                <xsl:for-each-group select="$adaxml-item" group-by="nf:getGroupingKeyDefault(.)">
                                    <xsl:text>
</xsl:text>
                                    <xsl:value-of select="nf:maak-waarde-basedon-valuedomain(., $value-domain, false(), true())"/>
                                    <xsl:text>
</xsl:text>
                                </xsl:for-each-group>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    <xsl:attribute name="waarde" select="string-join($waarde, '')"/>

                </xsl:element>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="tabel-simpel" name="makeTabelSimple" mode="wiki">
        <!-- Overview tables for scenario groups. Also creates a section around the table. -->
        <xsl:param name="in" select=".">
            <!-- The overview simple table (tabel-simpel) to be converted to wiki table, defaults to context. expexts an xml structure like this: 
            <tabel type="overview" title="Scenario's" main-scenario="1" extraText="some extra text directly above the table, ín the section">
                <koprij>
                    <kopkolom type="Scenario" waarde="Scenario"/>
                    <kopkolom type="Beschrijving" waarde="Beschrijving"/>
                    <kopkolom type="MBH id" waarde="MBH id"/>
                    <kopkolom type="MA id" waarde="MA id"/>
                </koprij>
                <rij>
                    <kolom type="Scenario" waarde="1.1"/>
                    <kolom type="Beschrijving" waarde="Medicatievoorschrift met een medicatieafspraak gebruiksperiode ingangsdatum en einddatum"/>
                    <kolom type="MBH id" waarde="MBH_910_start_eind"/>
                    <kolom type="MA id" waarde="MBH_910_start_eind_MA"/>
                </rij>
                <rij>
                    <kolom type="Scenario" waarde="1.2"/>
                    <kolom type="Beschrijving" waarde="&lt;div&gt;&lt;span style=&#34;font-family: sans-serif; font-size: 14px; background-color: #ffffff;&#34;&gt;Medicatievoorschrift met een medicatieafspraak gebruiksperiode ingangsdatum en duur (weken)&lt;/span&gt;&lt;/div&gt;"/>
                    <kolom type="MBH id" waarde="MBH_910_start_duur"/>
                    <kolom type="MA id" waarde="MBH_910_start_duur_MA"/>
                </rij>
            </tabel>
         --> </xsl:param>

        <xsl:variable name="sectionName" select="string-join(('overview', @subtype, @main-scenario), '-')"/>

        <xsl:for-each select="$in">
            <xsl:text>
=== Scenarioset </xsl:text>
            <xsl:value-of select="@main-scenario"/>
            <xsl:text>===
</xsl:text>
            <xsl:value-of select="concat('&lt;section begin=', $sectionName, ' /&gt;')"/>
            <xsl:value-of select="@extraText"/>

            <xsl:text>
{| class="wikitable"
|-style="background-color: #1F497D;; color: white; text-align:left;"</xsl:text>
            <xsl:for-each select="koprij">
                <xsl:text>
| </xsl:text>
                <xsl:value-of select="string-join(nwf:replace-string-for-wiki-table(kopkolom/@waarde), '|| ')"/>
            </xsl:for-each>
            <xsl:for-each select="rij">
                <xsl:text>
|-style="vertical-align:top;|style="background-color: white;"
|</xsl:text>
                <xsl:value-of select="string-join(nwf:replace-string-for-wiki-table(kolom/@waarde), '|| ')"/>
            </xsl:for-each>
            <xsl:text>
|}
</xsl:text>
            <xsl:value-of select="concat('&lt;section end=', $sectionName, ' /&gt;')"/>
        </xsl:for-each>

    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:element-code-waarde" as="xs:string?">
        <!-- Creates value string for an ada element which has value domain 'code' -->
        <xsl:param name="code-in" as="element()?">
            <!-- The ada element which has value domain 'code' --> </xsl:param>
        <xsl:choose>
            <xsl:when test="$code-in[@originalText | @displayName | @codeSystem | @code | @codeSystemName]">
                <xsl:for-each select="$code-in[@originalText | @displayName | @codeSystem | @code | @codeSystemName]">
                    <xsl:variable name="oid-codesystem" select="@codeSystem"/>
                    <xsl:variable name="waarde" as="xs:string*">
                        <xsl:value-of select="normalize-space(concat(@displayName, ' (code = ''', ./@code))"/>
                        <xsl:if test="string-length(@codeSystem) gt 0">' in codeSystem '</xsl:if>
                        <xsl:choose>
                            <xsl:when test="@codeSystemName">
                                <xsl:value-of select="@codeSystemName"/>
                            </xsl:when>
                            <xsl:when test="$oidMap[@oid = $oid-codesystem][@displayName]">
                                <xsl:text>&lt;span title="</xsl:text>
                                <xsl:value-of select="@codeSystem"/>
                                <xsl:text>"&gt;</xsl:text>
                                <xsl:value-of select="$oidMap[@oid = $oid-codesystem]/@displayName"/>
                                <xsl:text>&lt;/span&gt;</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="@codeSystem"/>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:value-of select="''')'"/>
                        <xsl:if test="string-length(@originalText) gt 0">
                            <xsl:value-of select="concat(': ', @originalText)"/>
                        </xsl:if>
                    </xsl:variable>
                    <xsl:value-of select="normalize-space(string-join($waarde, ''))"/>
                </xsl:for-each>                
            </xsl:when>
            <xsl:otherwise>
                <!-- fallback on @value, which is the only thing there when there is a conceptList without valueset -->
                <xsl:value-of select="$code-in/@value"/>
            </xsl:otherwise>
        </xsl:choose>
     </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:element-name" as="xs:string?">
        <!-- Create a wiki friendly element name -->
        <xsl:param name="current-element" as="element()?">
            <!-- The element for which to make the name -->
        </xsl:param>
        <xsl:variable name="local-name" select="$current-element/local-name()"/>
        <xsl:variable name="name">
            <xsl:choose>
                <xsl:when test="substring($local-name, string-length($local-name), 1) = 'q'">
                    <xsl:value-of select="concat(substring($local-name, 1, string-length($local-name) - 1), '?')"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$local-name"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:value-of select="translate(nf:first-cap($name), '_', ' ')"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:first-cap" as="xs:string?">
        <!--  -->
        <xsl:param name="in" as="xs:string?">
            <!--  -->
        </xsl:param>
        <xsl:value-of select="concat(upper-case(substring($in, 1, 1)), substring($in, 2))"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:element-ordinal-waarde" as="xs:string?">
        <!-- Creates a nice string for an ordinal type -->
        <xsl:param name="ordinal-in" as="element()?">
            <!-- input ada element of type ordinal -->
        </xsl:param>
        <xsl:for-each select="$ordinal-in[@ordinal | @originalText | @displayName | @codeSystem | @code | @codeSystemName]">
            <xsl:variable name="oid-codesystem" select="@codeSystem"/>
            <xsl:variable name="waarde" as="xs:string*">
                <xsl:value-of select="normalize-space(concat(./@originalText, ' ', ./@displayName))"/>
                <xsl:if test="@code">
                    <xsl:value-of select="concat(' (code = ''', ./@code, ''' in codeSystem ''')"/>
                    <xsl:choose>
                        <xsl:when test="./@codeSystemName">
                            <xsl:value-of select="./@codeSystemName"/>
                        </xsl:when>
                        <xsl:when test="$oidMap[@oid = $oid-codesystem][@displayName]">
                            <xsl:text>&lt;span title="</xsl:text>
                            <xsl:value-of select="@codeSystem"/>
                            <xsl:text>"&gt;</xsl:text>
                            <xsl:value-of select="$oidMap[@oid = $oid-codesystem]/@displayName"/>
                            <xsl:text>&lt;/span&gt;</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="./@codeSystem"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:if>
                <xsl:value-of select="concat(' (ordinal = ''', ./@ordinal, ''')')"/>
            </xsl:variable>
            <xsl:value-of select="normalize-space(string-join($waarde, ''))"/>
        </xsl:for-each>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:element-waarde" as="xs:string?">
        <!-- Outputs a human readable string for an element of type quantity (waarde + eenheid) -->
        <xsl:param name="waarde">
            <!-- The value -->
        </xsl:param>
        <xsl:param name="eenheid">
            <!-- The unit -->
        </xsl:param>
        <xsl:choose>
            <xsl:when test="$eenheid and $waarde castable as xs:double">
                <xsl:value-of select="concat($waarde, ' ', nwf:unit-string($waarde, $eenheid))"/>
            </xsl:when>
            <xsl:when test="string-length($eenheid) gt 0 and string-length($waarde) = 0">
                <xsl:value-of select="normalize-space(string-join($eenheid, ' '))"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="nf:first-cap(normalize-space(string-join($waarde, ' ')))"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:get-concept-type" as="xs:string?">
        <!-- Returns the concept type, like group or item -->
        <xsl:param name="currentConcept" as="element()+">
            <!-- The concept for which to determin the concept type -->
        </xsl:param>
        <xsl:variable name="releaseConceptType" select="nwf:get-concept-from-release-file($transactionId, $currentConcept/@conceptId)/@type"/>

        <!-- if the element is not in the release, we can still make a good guess based on ada input -->
        <xsl:variable name="concept-type" as="xs:string?">
            <xsl:choose>
                <xsl:when test="string-length($releaseConceptType) gt 0">
                    <xsl:value-of select="$releaseConceptType"/>
                </xsl:when>
                <xsl:when test="$currentConcept/*">group</xsl:when>
                <xsl:when test="$currentConcept[self::adaextension]">group</xsl:when>
                <xsl:when test="$currentConcept[not(*)][@value | @code | @nullFlavor]">item</xsl:when>
            </xsl:choose>
        </xsl:variable>
        
        <!-- Example:
            WARNING: Concept without @conceptId. Guessed type 'item': /adaxml[1]/data[1]/beschikbaarstellen_medicatiegegevens[1]/medicamenteuze_behandeling[2]/medicatiegebruik[1]/gebruik_indicator[1]
        -->
        <xsl:if test="empty($currentConcept/@conceptId) and not($currentConcept[self::adaextension])">
            <xsl:variable name="path" as="xs:string*">
                <xsl:for-each select="$currentConcept/ancestor-or-self::*">
                    <xsl:variable name="ln" select="local-name()"/>
                    <xsl:value-of select="concat(local-name(), '[', count(preceding-sibling::*[local-name() = $ln]) + 1, ']')"/>
                </xsl:for-each>
            </xsl:variable>
            <xsl:message>WARNING: Concept without @conceptId. Guessed type '<xsl:value-of select="$concept-type"/>': /<xsl:value-of select="string-join($path, '/')"/></xsl:message>
        </xsl:if>
        
        <xsl:value-of select="$concept-type"/>

    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:get-concept-value-domain" as="xs:string?">
        <!-- Finds valuedomain @type or @originaltype of a concept in ada release file. -->
        <xsl:param name="currentConcept" as="element()?">
            <!-- The current ada concept, must have @conceptId to find the corresponding concept in ada release file -->
        </xsl:param>
        <xsl:param name="attributeToReturn" as="xs:string?">
            <!-- The attribute to return, currently supported: type and originaltype. Defaults to type. -->
        </xsl:param>
        <xsl:if test="$currentConcept">
            <xsl:variable name="adaReleaseConcept" select="nwf:get-concept-from-release-file($transactionId, $currentConcept/@conceptId)"/>
            <xsl:choose>
                <xsl:when test="upper-case(normalize-space($attributeToReturn)) = 'ORIGINALTYPE'">
                    <xsl:value-of select="$adaReleaseConcept/valueDomain/@originaltype"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <!-- @type reference is no longer used in ada release files, so let's add it here, so we know when to make a hyperlink in wiki -->
                        <xsl:when test="$adaReleaseConcept[valueDomain/@type = 'string' and contains]">reference</xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$adaReleaseConcept/valueDomain/@type"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:getGroupingKeyDefault" as="xs:string?">
        <!--  -->
        <xsl:param name="in" as="element()?">
            <!--  -->
        </xsl:param>
        <xsl:value-of select="normalize-space(upper-case(concat(string-join($in//@value, ''), string-join($in//@root, ''), string-join($in//@code, ''), string-join($in//@codeSystem, ''), string-join($in//@nullFlavor, ''))))"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nf:maak-waarde-basedon-valuedomain" as="xs:string*">
        <!-- Creates a value string based on the value domain (datatype) from the ada release file -->
        <xsl:param name="in" as="element()?">
            <!-- The xml element (dataset concept) from ada this concerns -->
        </xsl:param>
        <xsl:param name="value-domain" as="xs:string?">
            <!-- The value domain of this dataset concept -->
        </xsl:param>
        <xsl:param name="output0time" as="xs:boolean?">
            <!-- boolean to either output the time smaller than or equal to 00:00:29 or not. Default = false = do not output the zero-time; boolean to either output the time greater than or equal to 23:59:00 or not. Default = true = do output the end-time -->
        </xsl:param>
        <xsl:param name="outputEndtime" as="xs:boolean?">
            <!-- whether or not a time of 23:59 should be outputted in the text. Defaults to true(). -->
        </xsl:param>
        <xsl:variable name="output" as="xs:string*">
            <xsl:choose>
                <xsl:when test="$value-domain = ('string', 'text')">
                    <!-- let's check if there is a date in here -->
                    <xsl:choose>
                        <xsl:when test="substring($in/@value, 1, 10) castable as xs:date">
                            <xsl:value-of select="nf:formatDate($in/@value)"/>
                            <xsl:value-of select="concat(' ', nf:formatTime(nf:getTime($in/@value), $output0time))"/>
                        </xsl:when>
                        <xsl:when test="(not($in/@value) or string-length($in/@value) = 0) and $in/@nullFlavor">
                            <xsl:value-of select="concat('NullFlavor: ', $in/@nullFlavor)"/>
                        </xsl:when>
                        <xsl:when test="nf:get-concept-value-domain($in, 'originaltype') = ('date', 'datetime')">
                            <!--converted to string to support things like T-500D or other syntaxes-->
                            <xsl:value-of select="normalize-space(string-join(nf:formatTDate($in/@value, $output0time, $outputEndtime), ''))"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <!-- okay, we surrender, this is really a normal string -->
                            <xsl:value-of select="$in/@value"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:when test="$value-domain = ('complex')">
                    <xsl:choose>
                        <xsl:when test="$in[@datatype != 'complex']/@datatype">
                            <xsl:value-of select="nf:maak-waarde-basedon-valuedomain($in, $in/@datatype, $output0time, $outputEndtime)"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:message>Encountered a concept (<xsl:value-of select="$in/local-name()"/> which has value <xsl:value-of select="$in/@value"/>) in an ada instance with datatype complex. Please make the datatype specific.</xsl:message>
                            <xsl:value-of select="$in/@value"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:when test="$value-domain = ('count', 'decimal')">
                    <xsl:value-of select="$in/@value"/>
                </xsl:when>
                <xsl:when test="$value-domain = ('boolean')">
                    <xsl:choose>
                        <xsl:when test="lower-case($in/@value) = ('true', 'waar', 'ja')">Ja</xsl:when>
                        <xsl:when test="lower-case($in/@value) = ('false', 'onwaar', 'nee')">Nee</xsl:when>
                        <xsl:when test="$in/@nullFlavor">
                            <xsl:value-of select="concat('NullFlavor: ', $in/@nullFlavor)"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$in/@value"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:when test="$value-domain = ('quantity', 'duration')">
                    <xsl:choose>
                        <xsl:when test="string-length($in/concat(@value, @unit)) gt 0">
                            <xsl:value-of select="nf:element-waarde($in/@value, $in/@unit)"/>
                        </xsl:when>
                        <xsl:when test="$in/@nullFlavor">
                            <xsl:value-of select="concat('NullFlavor: ', $in/@nullFlavor)"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="nf:element-waarde($in/@value, $in/@unit)"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:when test="$value-domain eq 'code'">
                    <xsl:value-of select="nf:element-code-waarde($in)"/>
                </xsl:when>
                <xsl:when test="$value-domain eq 'identifier'">
                    <xsl:choose>
                        <xsl:when test="$in/@root">
                            <xsl:value-of select="concat($in/@value, ' (in identificerend systeem: ')"/>
                            <xsl:choose>
                                <xsl:when test="$oidMap[@oid = $in/@root][@displayName]">
                                    <xsl:value-of select="$oidMap[@oid = $in/@root]/@displayName"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="$in/@root"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="$in/@value"/>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:if test="$in/@root">
                        <xsl:value-of select="')'"/>
                    </xsl:if>
                </xsl:when>
                <xsl:when test="$value-domain = ('date', 'datetime')">
                    <xsl:choose>
                        <xsl:when test="substring($in/@value, 1, 10) castable as xs:date">
                            <xsl:value-of select="nf:formatDate($in/@value)"/>
                            <xsl:value-of select="concat(' ', nf:formatTime(nf:getTime($in/@value), $output0time))"/>
                        </xsl:when>
                        <xsl:when test="(not($in/@value) or string-length($in/@value) = 0) and $in/@nullFlavor">
                            <xsl:value-of select="concat('NullFlavor: ', $in/@nullFlavor)"/>
                        </xsl:when>
                        <!-- Support for partial dates, only yyyy and yyyy-mm,
                            output those 'as is', since 1999-feb does not look better than 1999-02 -->
                        <xsl:when test="matches($in/@value, '^[\d]{4}(-\d\d)?$')">
                            <xsl:value-of select="$in/@value"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <!-- not a date, probably a legacy T-string of some sort -->
                            <!-- the non-legacy T-date is handled in string datatype -->
                            <xsl:variable name="separated-pipe" select="tokenize($in/@value, '\|')" as="xs:string*"/>
                            <xsl:choose>
                                <xsl:when test="upper-case($separated-pipe[1]) = ('T', 'CURRENTDATE') and count($separated-pipe) ge 3">
                                    <!-- T|-|P150D -->
                                    <xsl:variable name="correction" select="replace($separated-pipe[3], 'P', '')"/>
                                    <xsl:variable name="correction-timequantity" select="replace($correction, '[a-zA-Z\s]+', '')"/>
                                    <xsl:variable name="correction-timeunit" select="replace($correction, '[0-9\s]+', '')"/>
                                    <xsl:value-of select="string-join($separated-pipe[position() lt 3], ' ')"/>
                                    <xsl:value-of select="concat(' ', $correction-timequantity, ' ')"/>
                                    <xsl:choose>
                                        <xsl:when test="$correction-timeunit eq 'D'">dagen</xsl:when>
                                        <xsl:otherwise>Not yet supported time unit: "<xsl:value-of select="$correction-timeunit"/>"</xsl:otherwise>
                                    </xsl:choose>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="$in/@value"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:when test="$value-domain eq 'ordinal'">
                    <xsl:value-of select="nf:element-ordinal-waarde($in)"/>
                </xsl:when>
                <xsl:when test="$value-domain = ('reference')">
                    <!-- Als je references aanlegt met de ADA forms, zijn er internal en external references -->
                    <!-- internal: link id is as-is te vinden -->
                    <!-- external: link id bestaat uit ada instance id + '#' + element id -->
                    <xsl:variable name="adaId" select="substring-before($in/@value, '#')" as="xs:string?"/>
                    <xsl:variable name="adaElementId" select="replace($in/@value, '^.*#(.*)', '$1')" as="xs:string"/>
                    
                    <xsl:variable name="targetElement" select="if (string-length($adaId) gt 0) then ($this/descendant-or-self::*[@id = $adaId]//*[@id = $adaElementId])[1] else ($this/descendant-or-self::*[@id = $in/@value])[1]" as="element()?"/>
                    
                    <xsl:if test="empty($targetElement)">
                        <xsl:message terminate="no">WARNING: ADA instance "<xsl:value-of select="$in/ancestor::*[@title]/@id"/>" contains unresolved reference to <xsl:value-of select="local-name($in)"/> "<xsl:value-of select="$in/@value"/>"</xsl:message>
                    </xsl:if>
                    
                    <!--<xsl:value-of select="concat('Zie ', $in/local-name(), ' met id: ''', $in/@value, '''')"/>-->
                    <xsl:choose>
                        <!-- gebeurt bijv in BgZ en andere projecten als de inputdata alleen een identifier van een patient of zorgverlener heeft -->
                        <xsl:when test="empty($targetElement) and $in/@root">
                            <xsl:value-of select="nf:maak-waarde-basedon-valuedomain($in, 'identifier', $output0time, $outputEndtime)"/>
                        </xsl:when>
                        <!-- waarschijnlijk is dit overcompleet, maar je weet nooit -->
                        <xsl:when test="empty($targetElement) and $in/@unit">
                            <xsl:value-of select="nf:maak-waarde-basedon-valuedomain($in, 'quantity', $output0time, $outputEndtime)"/>
                        </xsl:when>
                        <!-- waarschijnlijk is dit overcompleet, maar je weet nooit -->
                        <xsl:when test="empty($targetElement) and $in/@ordinal">
                            <xsl:value-of select="nf:maak-waarde-basedon-valuedomain($in, 'ordinal', $output0time, $outputEndtime)"/>
                        </xsl:when>
                        <!-- waarschijnlijk is dit overcompleet, maar je weet nooit -->
                        <xsl:when test="empty($targetElement) and $in/@code">
                            <xsl:value-of select="nf:maak-waarde-basedon-valuedomain($in, 'code', $output0time, $outputEndtime)"/>
                        </xsl:when>
                        <!-- waarschijnlijk is dit overcompleet, maar je weet nooit -->
                        <xsl:when test="empty($targetElement)">
                            <xsl:value-of select="nf:maak-waarde-basedon-valuedomain($in, 'string', $output0time, $outputEndtime)"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="concat('Zie [[#', replace($in/@value, '#', '_'), '|', nf:element-name($targetElement), ': ', $targetElement/@id, ']]')"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$in/@value"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:value-of select="normalize-space(string-join($output, ''))"/>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nwf:get-concept-community-data" as="xs:string*">
        <!-- Finds community label contenst for the given communityName and communityLabel. -->
        <xsl:param name="adaConceptId" as="xs:string?">
            <!-- The current ada concept id to find the corresponding concept in ada release file -->
        </xsl:param>
        <xsl:param name="communityName" as="xs:string?">
            <!-- The name of the community in which to find the appropriate data label. -->
        </xsl:param>
        <xsl:param name="communityLabel" as="xs:string?">
            <!-- The name of the community label in which to find the appropriate data. -->
        </xsl:param>
        <xsl:if test="$adaConceptId">
            <xsl:variable name="adaReleaseConcept" select="nwf:get-concept-from-release-file($transactionId, $adaConceptId)"/>
            <xsl:variable name="communityData" select="$adaReleaseConcept/community[@name = $communityName]/data[@type = $communityLabel]"/>
            <xsl:variable name="serializedString" as="xs:string*">
                <xsl:apply-templates select="$communityData/node()" mode="serialize"/>
            </xsl:variable>
            <xsl:value-of select="string-join($serializedString, '')"/>
        </xsl:if>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nwf:maak-waarde-met-wiki-reference" as="xs:string?">
        <!-- Updates the input $waarde to include a wiki internal hyperlink using the $reference -->
        <xsl:param name="tabellen">
            <!-- Contains the table variable, which has all tables to be outputted, needed to resolve the reference. The assumption is the table title is a wiki heading on the same wiki page, which can be used to refer to -->
        </xsl:param>
        <xsl:param name="waarde" as="xs:string?">
            <!-- Optional. Input for value of gegevenselement, may or may not contain the reference. If it contains the reference string, the hyperlink is set on that, otherwise the hyperlink is set on the whole string. -->
        </xsl:param>
        <xsl:param name="reference" as="xs:string?">
            <!-- Optional. Input for the hyperlink to be created. If empty the $waarde is simply returned. -->
        </xsl:param>

        <xsl:choose>
            <xsl:when test="string-length($waarde) gt 0 and string-length($reference) gt 0">
                <!-- old way of referencing using heading -->
                <!--<xsl:value-of select="replace($waarde, $reference, concat('[[#', iri-to-uri($tabellen/tabel[@id = $reference][1]/@title), '|', $reference, ']]'))"/>-->
                <!-- new way of referencing using id -->
                <xsl:value-of select="concat('[[#', $waarde, '|', $reference, ']]')"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$waarde"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:function name="nwf:replace-string-for-wiki-table" as="xs:string*">
        <!--  Replaces contents of a string so that it is rendered correctly in a wiki table cell  -->
        <xsl:param name="in" as="xs:string*">
            <!-- The string to be placed in the table cell -->
        </xsl:param>

        <xsl:for-each select="$in">
            <xsl:choose>
                <!-- Check if html (datatype = text), if this is html we expect to start with a <div/> element
                    https://www.mediawiki.org/wiki/Help:Tables -->
                <xsl:when test="starts-with(., '&lt;div')">
                    <xsl:variable name="replaceNonBreakingSpaces" select="replace(., '&amp;nbsp;', '&amp;#160;')"/>
                    <xsl:variable name="closeBRtags" select="replace($replaceNonBreakingSpaces, '&lt;br(\sstyle=&#34;[^&#34;]*&#34;\s*)?/?&gt;', '&lt;br$1/&gt;')"/>
                    <xsl:variable name="htmlNodes">
                        <xsl:apply-templates select="parse-xml(concat('&lt;div&gt;', $closeBRtags, '&lt;/div&gt;'))" mode="html2wiki"/>
                    </xsl:variable>
                    <xsl:value-of select="serialize($htmlNodes/div/node())"/>
                </xsl:when>
                <xsl:otherwise>
                    <!-- replace carriage return &#xA with html <br/>, otherwise wiki renders it as next line and table structure is lost -->
                    <xsl:value-of select="replace(., '&#xA;', '&lt;br/&gt;')"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:function>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="table" mode="html2wiki">
        <!-- Prunes table from colgroup, thead, tbody and tfoot elements. Result is a table with with tr elements in the right order (first thead, then tobody, then tfoot), 
            potentially preceded by a caption. Note that by elimnating colgroup, we could be throwing away useful column info. 
            If that really becomes an issue we should extend the logic here to be colgroup aware. 
            See https://www.mediawiki.org/wiki/Help:Tables for reference. -->
        <xsl:copy>
            <xsl:apply-templates select="(@* | node()) except (thead | tbody | tfoot | tr | colgroup)" mode="#current"/>
            <xsl:apply-templates select="thead/tr" mode="#current"/>
            <xsl:apply-templates select="tbody/tr | tr" mode="#current"/>
            <xsl:apply-templates select="tfoot/tr" mode="#current"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@* | node()" mode="html2wiki">
        <!--  Prunes table from colgroup, thead, tbody and tfoot elements. 
            Result is a table with with tr elements in the right order (first thead, then tobody, then tfoot), potentially preceded by a caption. 
            Note that by elimnating colgroup, we could be throwing away useful column info. If that really becomes an issue we should extend the logic here to be colgroup aware. 
            See https://www.mediawiki.org/wiki/Help:Tables for reference. -->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" mode="#current"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="gegevenselement | groep" mode="AddCommunityStuff">
        <!-- Template to add additional community stuff -->
        <xsl:variable name="in" select="."/>
        <xsl:copy>
            <!-- copy existing attributes -->
            <xsl:apply-templates select="@*" mode="AddCommunityStuff"/>
            <xsl:for-each select="$communityLabels">
                <xsl:attribute name="{string-join(($communityName, .), '_')}">
                    <xsl:value-of select="nwf:get-concept-community-data($in/@conceptId, $communityName, .)"/>
                </xsl:attribute>
            </xsl:for-each>
            <xsl:apply-templates select="*" mode="AddCommunityStuff"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@* | node()" mode="AddCommunityStuff">
        <!-- Basis copy template for adding community stuff to the 'in-between' tabel -->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" mode="AddCommunityStuff"/>
        </xsl:copy>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="*" mode="serialize">
        <!-- Serialize possible xml input into attribute value by escaping special xml characters. -->
        <xsl:text>&lt;</xsl:text>
        <xsl:value-of select="local-name()"/>
        <xsl:apply-templates select="@*" mode="serialize"/>
        <xsl:choose>
            <xsl:when test="node()">
                <xsl:text>&gt;</xsl:text>
                <xsl:apply-templates mode="serialize"/>
                <xsl:text>&lt;/</xsl:text>
                <xsl:value-of select="name()"/>
                <xsl:text>&gt;</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text> /&gt;</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="@*" mode="serialize">
        <!-- Serialize possible xml attribute input into attribute name/values as they would look in xml. -->
        <xsl:text>

</xsl:text>
        <xsl:value-of select="name()"/>
        <xsl:text>="</xsl:text>
        <xsl:value-of select="."/>
        <xsl:text>"</xsl:text>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="text()" mode="serialize">
        <!-- Serialize possible text xml input into text. -->
        <xsl:value-of select="."/>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeHTMLhead">
        <!-- Makes the html/head default part for the html output tables -->
        <xsl:param name="title" as="xs:string?">
            <!-- param for the HTML title, has a default if not given. --> Addenda voor inhoudelijke gegevens voor het kwalificatieteam</xsl:param>
        <head xmlns="http://www.w3.org/1999/xhtml">
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>
                <xsl:value-of select="$title"/>
            </title>
            <link href="assets/decor.css" rel="stylesheet" type="text/css"/>
            <link href="assets/css/retrieve-template.css" rel="stylesheet" type="text/css"/>
            <script type="text/javascript">
                window.treeTableCollapsed = true;
                window.treeTableStringCollapse = 'Inklappen';
                window.treeTableStringExpand = 'Uitklappen';
                window.treeTableColumn = 0;</script>
            <script src="assets/scripts/jquery-1.11.1.min.js" type="text/javascript"/>
            <script src="assets/scripts/jquery.treetable.js" type="text/javascript"/>
            <script src="assets/scripts/retrieve-transaction.js" type="text/javascript"/>
        </head>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template match="groep | gegevenselement" name="doHtmlRow" mode="doHtmlRow">
        <!-- Outputs HTML row -->
        <xsl:param name="in" select=".">
            <!-- The item to be outputted, either a group or a data element -->
        </xsl:param>
        <xsl:param name="parentId">
            <!-- The parentId this row belongs to -->
        </xsl:param>
        <xsl:for-each select="$in">
            <xsl:choose>
                <xsl:when test="local-name() = 'groep'">
                    <xsl:variable name="groupId" select="concat($parentId, @naam, '-', position())"/>
                    <tr data-tt-id="{$groupId}">
                        <xsl:if test="$parentId">
                            <xsl:attribute name="data-tt-parent-id" select="$parentId"/>
                        </xsl:if>
                        <td class="togglertreetable">
                            <xsl:call-template name="makeTdClass">
                                <xsl:with-param name="bgColor" select="@kwalificatie_Verplichtingskleur"/>
                            </xsl:call-template>
                            <xsl:if test="string-length(@waarde) = 0 and string-length(@kwalificatie_Toelichting) = 0 and string-length(@kwalificatie_Synoniemen) = 0">
                                <xsl:attribute name="colspan">2</xsl:attribute>
                            </xsl:if>
                            <xsl:value-of select="@naam"/>
                            <xsl:if test="string-length(@comment) gt 0">
                                <xsl:value-of disable-output-escaping="yes" select="concat(' &lt;i&gt;', @comment, '&lt;/i&gt;')"/>
                            </xsl:if>
                            <!--            <xsl:choose>
                                <xsl:when test="string-length(@waarde) = 0 and (string-length(@kwalificatie_Toelichting) gt 0 or string-length(@kwalificatie_Synoniemen) gt 0)">
                                   <xsl:value-of select="@naam"/>
                                    <xsl:if test="string-length(@comment) gt 0">
                                        <xsl:value-of disable-output-escaping="yes" select="concat(' &lt;i&gt;', @comment, '&lt;/i&gt;')"/>
                                    </xsl:if>
                                    <xsl:if test="string-length(@kwalificatie_Toelichting) gt 0">
                                        <xsl:value-of disable-output-escaping="yes" select="concat(' &lt;p&gt;&lt;i&gt;', @kwalificatie_Toelichting, '&lt;/i&gt;&lt;/p&gt;')"/></xsl:if>
                                    <xsl:if test="string-length(@kwalificatie_Synoniemen) gt 0">
                                        <xsl:value-of disable-output-escaping="yes" select="concat(' &lt;p&gt;&lt;b&gt;', @kwalificatie_Synoniemen, '&lt;/b&gt;&lt;/p&gt;')"/></xsl:if>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="@naam"/>
                                    <xsl:if test="string-length(@comment) gt 0">
                                        <xsl:value-of disable-output-escaping="yes" select="concat(' &lt;i&gt;', @comment, '&lt;/i&gt;')"/>
                                    </xsl:if>
                                </xsl:otherwise>
                            </xsl:choose> -->
                        </td>
                        <xsl:if test="string-length(@waarde) gt 0 or string-length(@kwalificatie_Toelichting) gt 0 or string-length(@kwalificatie_Synoniemen) gt 0">
                            <td class="togglertreetable">
                                <xsl:call-template name="makeTdClass">
                                    <xsl:with-param name="bgColor" select="@kwalificatie_Verplichtingskleur"/>
                                </xsl:call-template>
                                <xsl:if test="string-length(@waarde) gt 0">
                                    <xsl:value-of disable-output-escaping="yes" select="concat(' &lt;p&gt;', ' &lt;i&gt;')"/>
                                    <xsl:value-of select="@waarde"/>
                                    <xsl:value-of disable-output-escaping="yes" select="concat('&lt;/i&gt;', '&lt;/p&gt;')"/>
                                </xsl:if>
                                <xsl:if test="string-length(@kwalificatie_Toelichting) gt 0">
                                    <xsl:value-of disable-output-escaping="yes" select="concat(' &lt;p&gt;&lt;i&gt;', @kwalificatie_Toelichting, '&lt;/i&gt;&lt;/p&gt;')"/>
                                </xsl:if>
                                <xsl:if test="string-length(@kwalificatie_Synoniemen) gt 0">
                                    <xsl:value-of disable-output-escaping="yes" select="concat(' &lt;p&gt;&lt;b&gt;', @kwalificatie_Synoniemen, '&lt;/b&gt;&lt;/p&gt;')"/>
                                </xsl:if>
                            </td>
                        </xsl:if>
                    </tr>
                    <xsl:apply-templates select="*" mode="doHtmlRow">
                        <xsl:with-param name="parentId" select="$groupId"/>
                    </xsl:apply-templates>
                </xsl:when>
                <xsl:when test="local-name() = 'gegevenselement'">
                    <tr data-tt-id="{@naam}" xmlns="http://www.w3.org/1999/xhtml">
                        <xsl:if test="$parentId">
                            <xsl:attribute name="data-tt-parent-id" select="$parentId"/>
                        </xsl:if>
                        <td class="togglertreetable">
                            <xsl:call-template name="makeTdClass">
                                <xsl:with-param name="bgColor" select="@kwalificatie_Verplichtingskleur"/>
                            </xsl:call-template>
                            <xsl:value-of select="@naam"/>
                        </td>
                        <td class="withBorder">
                            <xsl:call-template name="makeTdClass">
                                <xsl:with-param name="bgColor" select="@kwalificatie_Verplichtingskleur"/>
                                <xsl:with-param name="defaultClass">withBorder</xsl:with-param>
                            </xsl:call-template>
                            <xsl:choose>
                                <xsl:when test="string-length(@kwalificatie_Toelichting) gt 0">
                                    <xsl:value-of disable-output-escaping="yes" select="' &lt;p&gt;'"/>
                                    <xsl:value-of select="@waarde"/>
                                    <xsl:value-of disable-output-escaping="yes" select="'&lt;/p&gt;'"/>
                                    <xsl:value-of disable-output-escaping="yes" select="concat(' &lt;p&gt;&lt;i&gt;', @kwalificatie_Toelichting, '&lt;/i&gt;&lt;/p&gt;')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="@waarde"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                    </tr>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

    <xsl:template name="makeTdClass">
        <!-- Helper template for class attribute in table data cell -->
        <xsl:param name="bgColor" as="xs:string?" select="@kwalificatie_Verplichtingskleur">
            <!-- The background colour to be used -->
        </xsl:param>
        <xsl:param name="defaultClass" as="xs:string?">
            <!-- The default contents of the class, defaults to togglertreetable --> togglertreetable</xsl:param>
        <xsl:attribute name="class">
            <xsl:choose>
                <xsl:when test="$bgColor = 'Geel'">withBorder bgYellow</xsl:when>
                <xsl:when test="$bgColor = 'Blauw'">withBorder bgBlue</xsl:when>
                <xsl:when test="$bgColor = 'Rood'">withBorder bgRed</xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$defaultClass"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
    </xsl:template>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
    
    <xsl:function name="nwf:get-concept-from-release-file" as="element(concept)*">
        <xsl:param name="transactionId" as="xs:string?"/>
        <xsl:param name="conceptId" as="xs:string?"/>
        
        <xsl:sequence select="$adaReleaseFile/ada/applications/application/views/view[@transactionId eq $transactionId]/dataset[1]//concept[@id = $conceptId]"/>
    </xsl:function>
</xsl:stylesheet>

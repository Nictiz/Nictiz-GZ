<?xml version="1.0" encoding="UTF-8"?>
<!-- Deze stylesheet zet hl7 instances van JGZ DOB berichten om naar templates geschikt voor het uploaden naar de kwalificatie server. Onno Gieling, 30-10-2022 -->
<xsl:stylesheet exclude-result-prefixes="#all" xmlns="urn:hl7-org:v3" xmlns:nf="http://www.nictiz.nl/functions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:f="http://hl7.org/fhir" xmlns:hl7="urn:hl7-org:v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <!--<xsl:template match="//concept[inherit[starts-with(@ref, '2.16.840.1.113883.2.4.3.11.60.56')][not(@ref  = //concept/@id)]]">
        
    </xsl:template>-->

    <!-- Voeg de definitie van de variabelen toe -->
    <xsl:template match="hl7:ControlActProcess">

        <xsl:copy>
            
            <xsl:apply-templates select="@*"/>
            {
            let $gCREATIONDATETIME-dt           := current-dateTime()
            let $gPatientDOB-dt                 := $gCREATIONDATETIME-dt - xs:yearMonthDuration('P14Y') - xs:yearMonthDuration('P2M')
            
            let $gCREATIONDATETIME              := format-dateTime($gCREATIONDATETIME-dt, '[Y0001][M01][D01][H01][m01][s01]')
            let $gSENDDATE                      := format-dateTime($gCREATIONDATETIME-dt, '[Y0001][M01][D01]')
            let $gPatientDOB                    := format-dateTime($gPatientDOB-dt,'[Y0001][M01][D01]')
            let $gREQUESTDATE                   := $gSENDDATE
            let $gRESPSTART                     := format-dateTime($gPatientDOB-dt + xs:yearMonthDuration('P3Y') + xs:yearMonthDuration('P9M'),'[Y0001][M01][D01]')
            let $gRESPEND                       := $gREQUESTDATE
            let $gPDFDATE                       := $gRESPEND
            let $gRvpToestemmingClient          := format-dateTime($gPatientDOB-dt + xs:yearMonthDuration('P14Y'),'[Y0001][M01][D01]')
            let $gContactNeo                    := format-dateTime($gPatientDOB-dt + xs:dayTimeDuration('P3D'),'[Y0001][M01][D01]')
            let $gContact2Wekentm6Maanden       := format-dateTime($gPatientDOB-dt + xs:yearMonthDuration('P3M'),'[Y0001][M01][D01]')
            let $gContact12tm18JaarInloop       := format-dateTime($gPatientDOB-dt + xs:yearMonthDuration('P13Y') + xs:yearMonthDuration('P8M'),'[Y0001][M01][D01]')
            let $gContact12tm18JaarTelefonisch  := $gCREATIONDATETIME-dt - xs:yearMonthDuration('P3M')
            let $gContact12tm18JaarFaceToFace   := $gCREATIONDATETIME-dt - xs:yearMonthDuration('P2M')
            let $gPneuVaccinatie-1              := format-dateTime($gPatientDOB-dt + xs:yearMonthDuration('P3M'),'[Y0001][M01][D01]')
            let $gAfnameSPP                     := format-dateTime($gPatientDOB-dt + xs:yearMonthDuration('P13Y'),'[Y0001][M01][D01]')
            return (
            <xsl:apply-templates select="node()"/>
            )
            }
        </xsl:copy>
    </xsl:template>

    <!-- Replace the values with the variables -->
    <!-- OID en ID van het bericht -->
    <xsl:template match="//hl7:REPC_IN902120NL03/hl7:id">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="extension">{$messageId}</xsl:attribute>
            <xsl:attribute name="root">{$messageIdRoot}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- aanmaak datum -->
    <xsl:template match="//hl7:REPC_IN902120NL03/hl7:creationTime">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">{$gCREATIONDATETIME}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- Organisatie ID -->
    <xsl:template match="//hl7:authorOrPerformer/hl7:participant/hl7:AssignedDevice/hl7:Organization/hl7:id">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="extension">{$organizationId}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="//hl7:authorOrPerformer/hl7:participant/hl7:AssignedDevice/hl7:Organization/hl7:name">
        <xsl:copy><xsl:apply-templates select="@*"/>{$organizationName}</xsl:copy>
    </xsl:template>
    <!-- Request date. Hetzelfde als de senddate -->
    <xsl:template match="//hl7:CareProvisionRequest[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.100.10000']/hl7:author/hl7:time">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">{$gREQUESTDATE}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- Organisatie ID -->
    <xsl:template match="//hl7:assignedEntity[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.100.122']/hl7:id">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="extension">{$organizationId}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- OID van de organisatie voor bij het dossier nummer -->
    <xsl:template match="//hl7:careProvisionEvent/hl7:id">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="root">2.16.528.1.1007.3.3.{if ($organizationId castable as xs:integer) then string(xs:integer($organizationId)) else '1111'}.999.2</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- Tijdstip van verzending -->
    <xsl:template match="//hl7:careProvisionEvent/hl7:effectiveTime/hl7:high">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">{$gSENDDATE}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- geboorte datum -->
    <xsl:template match="//hl7:birthTime">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">{$gPatientDOB}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- Datum bestand -->
    <xsl:template match="//hl7:appendage/hl7:document/hl7:effectiveTime">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">{$gPDFDATE}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- tijdstip van de eerste RVP toestemming van de client -->
    <xsl:template match="(//hl7:consentEvent/hl7:author[hl7:responsibleParty/hl7:code/@code = '01']/hl7:time)[1]">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">{$gRvpToestemmingClient}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- tijdstip Neonatale gehoorscreening -->
    <xsl:template match="//hl7:encounter[hl7:code/@code = '35']/hl7:effectiveTime">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">{$gContactNeo}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- tijdstip contactmoment 6 weken t/m 8 maanden -->
    <xsl:template match="//hl7:encounter[hl7:code/@code = '37']/hl7:effectiveTime">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">{$gContact2Wekentm6Maanden}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- tijdstip contactmoment 12 t/m 18 jaar, inloopspreekuur -->
    <xsl:template match="//hl7:encounter[hl7:id/@extension = '3'][hl7:code/@code = '41']/hl7:effectiveTime">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">{$gContact12tm18JaarInloop}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- tijdstip contactmoment 12 t/m 18 jaar, telefonisch -->
    <xsl:template match="//hl7:encounter[hl7:id/@extension = '4'][hl7:code/@code = '41']/hl7:effectiveTime">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">{$gContact12tm18JaarTelefonisch}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- tijdstip contactmoment 12 t/m 18 jaar, face-to-face -->
    <xsl:template match="//hl7:encounter[hl7:id/@extension = '5'][hl7:code/@code = '41']/hl7:effectiveTime">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">{$gContact12tm18JaarFaceToFace}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- tijdstip contactmoment 12 t/m 18 jaar -->
    <xsl:template match="//hl7:observation[hl7:code/@code = '1345']/hl7:effectiveTime">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">{$gAfnameSPP}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- tijdstip van de eerst Pneu vaccinatie -->
    <xsl:template match="(//hl7:substanceAdministration[hl7:templateId/@root = '2.16.840.1.113883.2.4.6.10.100.116'][hl7:consumable/hl7:medication/hl7:administrableMedicine/hl7:code/@code = '08']/hl7:effectiveTime)[1]">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">{$gPneuVaccinatie-1}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="//hl7:subjectOf/hl7:careStatus[hl7:code/@code = '1197']/hl7:effectiveTime">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">{$gRESPSTART}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="//hl7:subjectOf/hl7:careStatus[hl7:code/@code = '487']/hl7:effectiveTime">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:attribute name="value">{$gRESPEND}</xsl:attribute>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- Add pipesymbol required by the kwalificatie server. -->
    <xsl:template match="//hl7:ControlActProcess/hl7:authorOrPerformer">
        <authorOrPerformer>
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates select="./*"/>
        </authorOrPerformer> | 
    </xsl:template>

    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>





</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<schema queryBinding="xslt2"
        xmlns="http://purl.oclc.org/dsdl/schematron">
   <title>Schematron file for transaction Kernset Geboortezorg 2.3 (2.16.840.1.113883.2.4.3.11.60.90.77.4.2437 2016-11-22T08:24:02)</title>
   <ns uri="urn:hl7-org:v3"
       prefix="hl7"/>
   <ns uri="urn:hl7-org:v3"
       prefix="cda"/>
   <ns uri="http://www.w3.org/2001/XMLSchema-instance"
       prefix="xsi"/>
   <ns uri="http://www.w3.org/2001/XMLSchema"
       prefix="xs"/>
   <!-- Add extra namespaces -->
   <ns uri="urn:nictiz-nl:v3/peri"
       prefix="peri"/>
   <ns uri="http://art-decor.org/ns/decor"
       prefix="decor"/>
   <ns uri="urn:hl7-org:sdtc"
       prefix="sdtc"/>
   <ns uri="http://www.w3.org/XML/1998/namespace"
       prefix="xml"/>
   <ns uri="urn:oid:1.3.6.1.4.1.19376.1.3.2"
       prefix="lab"/>
   <ns uri="urn:hl7-nl:v3"
       prefix="hl7nl"/>
   <ns uri="urn:urn:nictiz-nl:v3/nfu"
       prefix="nfu"/>
   <ns uri="urn:ihe:pharm:medication"
       prefix="pharm"/>
   <!-- Include realm specific schematron -->
   <!-- Include datatype abstract schematrons -->
   <pattern>
      <include href="include/DTr1_AD.sch"/>
      <include href="include/DTr1_AD.CA.sch"/>
      <include href="include/DTr1_AD.CA.BASIC.sch"/>
      <include href="include/DTr1_AD.DE.sch"/>
      <include href="include/DTr1_AD.EPSOS.sch"/>
      <include href="include/DTr1_AD.IPS.sch"/>
      <include href="include/DTr1_AD.NL.sch"/>
      <include href="include/DTr1_ADXP.sch"/>
      <include href="include/DTr1_ANY.sch"/>
      <include href="include/DTr1_BIN.sch"/>
      <include href="include/DTr1_BL.sch"/>
      <include href="include/DTr1_BN.sch"/>
      <include href="include/DTr1_BXIT_IVL_PQ.sch"/>
      <include href="include/DTr1_CD.sch"/>
      <include href="include/DTr1_CD.EPSOS.sch"/>
      <include href="include/DTr1_CD.IPS.sch"/>
      <include href="include/DTr1_CD.SDTC.sch"/>
      <include href="include/DTr1_CE.sch"/>
      <include href="include/DTr1_CE.EPSOS.sch"/>
      <include href="include/DTr1_CE.IPS.sch"/>
      <include href="include/DTr1_CO.sch"/>
      <include href="include/DTr1_CO.EPSOS.sch"/>
      <include href="include/DTr1_CR.sch"/>
      <include href="include/DTr1_CS.sch"/>
      <include href="include/DTr1_CS.LANG.sch"/>
      <include href="include/DTr1_CV.sch"/>
      <include href="include/DTr1_CV.EPSOS.sch"/>
      <include href="include/DTr1_CV.IPS.sch"/>
      <include href="include/DTr1_ED.sch"/>
      <include href="include/DTr1_EIVL.event.sch"/>
      <include href="include/DTr1_EIVL_TS.sch"/>
      <include href="include/DTr1_EN.sch"/>
      <include href="include/DTr1_ENXP.sch"/>
      <include href="include/DTr1_GLIST.sch"/>
      <include href="include/DTr1_GLIST_PQ.sch"/>
      <include href="include/DTr1_GLIST_TS.sch"/>
      <include href="include/DTr1_hl7nl-INT.sch"/>
      <include href="include/DTr1_hl7nl-IVL_QTY.sch"/>
      <include href="include/DTr1_hl7nl-IVL_TS.sch"/>
      <include href="include/DTr1_hl7nl-PIVL_TS.sch"/>
      <include href="include/DTr1_hl7nl-PQ.sch"/>
      <include href="include/DTr1_hl7nl-QSET_QTY.sch"/>
      <include href="include/DTr1_hl7nl-RTO.sch"/>
      <include href="include/DTr1_hl7nl-TS.sch"/>
      <include href="include/DTr1_II.sch"/>
      <include href="include/DTr1_II.AT.ATU.sch"/>
      <include href="include/DTr1_II.AT.BLZ.sch"/>
      <include href="include/DTr1_II.AT.DVR.sch"/>
      <include href="include/DTr1_II.AT.KTONR.sch"/>
      <include href="include/DTr1_II.EPSOS.sch"/>
      <include href="include/DTr1_II.NL.AGB.sch"/>
      <include href="include/DTr1_II.NL.BIG.sch"/>
      <include href="include/DTr1_II.NL.BSN.sch"/>
      <include href="include/DTr1_II.NL.URA.sch"/>
      <include href="include/DTr1_II.NL.UZI.sch"/>
      <include href="include/DTr1_INT.sch"/>
      <include href="include/DTr1_INT.NONNEG.sch"/>
      <include href="include/DTr1_INT.POS.sch"/>
      <include href="include/DTr1_IVL_INT.sch"/>
      <include href="include/DTr1_IVL_MO.sch"/>
      <include href="include/DTr1_IVL_PQ.sch"/>
      <include href="include/DTr1_IVL_REAL.sch"/>
      <include href="include/DTr1_IVL_TS.sch"/>
      <include href="include/DTr1_IVL_TS.CH.TZ.sch"/>
      <include href="include/DTr1_IVL_TS.EPSOS.TZ.sch"/>
      <include href="include/DTr1_IVL_TS.EPSOS.TZ.OPT.sch"/>
      <include href="include/DTr1_IVL_TS.IPS.TZ.sch"/>
      <include href="include/DTr1_IVXB_INT.sch"/>
      <include href="include/DTr1_IVXB_MO.sch"/>
      <include href="include/DTr1_IVXB_PQ.sch"/>
      <include href="include/DTr1_IVXB_REAL.sch"/>
      <include href="include/DTr1_IVXB_TS.sch"/>
      <include href="include/DTr1_list_int.sch"/>
      <include href="include/DTr1_MO.sch"/>
      <include href="include/DTr1_ON.sch"/>
      <include href="include/DTr1_PIVL_TS.sch"/>
      <include href="include/DTr1_PN.sch"/>
      <include href="include/DTr1_PN.CA.sch"/>
      <include href="include/DTr1_PN.NL.sch"/>
      <include href="include/DTr1_PQ.sch"/>
      <include href="include/DTr1_PQR.sch"/>
      <include href="include/DTr1_QTY.sch"/>
      <include href="include/DTr1_REAL.sch"/>
      <include href="include/DTr1_REAL.NONNEG.sch"/>
      <include href="include/DTr1_REAL.POS.sch"/>
      <include href="include/DTr1_RTO.sch"/>
      <include href="include/DTr1_RTO_PQ_PQ.sch"/>
      <include href="include/DTr1_RTO_QTY_QTY.sch"/>
      <include href="include/DTr1_SC.sch"/>
      <include href="include/DTr1_SD.TEXT.sch"/>
      <include href="include/DTr1_SLIST.sch"/>
      <include href="include/DTr1_SLIST_PQ.sch"/>
      <include href="include/DTr1_SLIST_TS.sch"/>
      <include href="include/DTr1_ST.sch"/>
      <include href="include/DTr1_SXCM_INT.sch"/>
      <include href="include/DTr1_SXCM_MO.sch"/>
      <include href="include/DTr1_SXCM_PQ.sch"/>
      <include href="include/DTr1_SXCM_REAL.sch"/>
      <include href="include/DTr1_SXCM_TS.sch"/>
      <include href="include/DTr1_SXPR_TS.sch"/>
      <include href="include/DTr1_TEL.sch"/>
      <include href="include/DTr1_TEL.AT.sch"/>
      <include href="include/DTr1_TEL.CA.EMAIL.sch"/>
      <include href="include/DTr1_TEL.CA.PHONE.sch"/>
      <include href="include/DTr1_TEL.EPSOS.sch"/>
      <include href="include/DTr1_TEL.IPS.sch"/>
      <include href="include/DTr1_TEL.NL.EXTENDED.sch"/>
      <include href="include/DTr1_thumbnail.sch"/>
      <include href="include/DTr1_TN.sch"/>
      <include href="include/DTr1_TS.sch"/>
      <include href="include/DTr1_TS.AT.TZ.sch"/>
      <include href="include/DTr1_TS.AT.VAR.sch"/>
      <include href="include/DTr1_TS.CH.TZ.sch"/>
      <include href="include/DTr1_TS.DATE.sch"/>
      <include href="include/DTr1_TS.DATE.FULL.sch"/>
      <include href="include/DTr1_TS.DATE.MIN.sch"/>
      <include href="include/DTr1_TS.DATETIME.MIN.sch"/>
      <include href="include/DTr1_TS.DATETIMETZ.MIN.sch"/>
      <include href="include/DTr1_TS.EPSOS.TZ.sch"/>
      <include href="include/DTr1_TS.EPSOS.TZ.OPT.sch"/>
      <include href="include/DTr1_TS.IPS.TZ.sch"/>
      <include href="include/DTr1_URL.sch"/>
      <include href="include/DTr1_URL.NL.EXTENDED.sch"/>
   </pattern>
   <!-- Include the project schematrons related to scenario ksgz-alg-23 -->
   <!-- albprn-ks-233 -->
   <pattern>
      <title>albprn-ks-233</title>
      <rule fpi="RUL-EXPEL"
            context="/">
         <assert role="warning"
                 test="descendant-or-self::hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]"
                 see="http://decor.nictiz.nl/pub/perinatologie/peri20-html-20220426T100906/tmp-2.16.840.1.113883.2.4.6.10.90.76-2018-02-20T170856.html">(albprn-ks-233): In de instance werd het volgende element verwacht: descendant-or-self::hl7:REPC_IN004014NL[hl7:interactionId[@root = '2.16.840.1.113883.1.6']]</assert>
      </rule>
   </pattern>
   <include href="include/2.16.840.1.113883.2.4.6.10.90.76-2018-02-20T170856.sch"/>
   <include href="include/2.16.840.1.113883.2.4.6.10.90.76-2018-02-20T170856-closed.sch"/>
   <!-- Create phases for more targeted validation on large instances -->
   <phase id="AllExceptClosed">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.76-2018-02-20T170856"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901101-2018-02-26T150516"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816"/>
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113"/>
   </phase>
   <phase id="albprn-ks-233">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.76-2018-02-20T170856"/>
   </phase>
   <phase id="albprn-ks-233-closed">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.76-2018-02-20T170856-closed"/>
   </phase>
   <phase id="IUVDMetObv">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029"/>
   </phase>
   <phase id="ObstanamnvoorgzwangerschapKS233">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313"/>
   </phase>
   <phase id="RedenVerwObsAn233">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713"/>
   </phase>
   <phase id="Verwijsdetails233">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619"/>
   </phase>
   <phase id="RedenVerwBev233">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239"/>
   </phase>
   <phase id="RedenVerwZw233">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936"/>
   </phase>
   <phase id="BevallingPRNKernset233">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901101-2018-02-26T150516"/>
   </phase>
   <phase id="BaringPRNKernset233">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440"/>
   </phase>
   <phase id="WijzeBaringBegon">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051"/>
   </phase>
   <phase id="CondPerPpRedVerw233">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743"/>
   </phase>
   <phase id="IndicatiePrimSC">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453"/>
   </phase>
   <phase id="Sectiocaesarea23">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344"/>
   </phase>
   <phase id="TypePartus23">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810"/>
   </phase>
   <phase id="VorigeUitkomstperkindKernset">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957"/>
   </phase>
   <phase id="Meconiumhoudendvruchtwater">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816"/>
   </phase>
   <phase id="Serotiniteit">
      <active pattern="template-2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113"/>
   </phase>
   <!-- Include schematrons from templates with explicit * or ** context (but no representing templates), only those used in scenario template -->
   <!-- IUVDMetObv -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901091-2018-02-20T155029.sch"/>
   <!-- ObstanamnvoorgzwangerschapKS233 -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901095-2018-02-21T112313.sch"/>
   <!-- RedenVerwObsAn233 -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901096-2018-02-21T152713.sch"/>
   <!-- Verwijsdetails233 -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901098-2018-02-21T154619.sch"/>
   <!-- RedenVerwBev233 -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901099-2018-02-23T113239.sch"/>
   <!-- RedenVerwZw233 -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901100-2018-02-23T140936.sch"/>
   <!-- BevallingPRNKernset233 -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901101-2018-02-26T150516.sch"/>
   <!-- BaringPRNKernset233 -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901102-2018-02-26T151440.sch"/>
   <!-- WijzeBaringBegon -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901103-2018-02-27T180051.sch"/>
   <!-- CondPerPpRedVerw233 -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901104-2018-02-28T111743.sch"/>
   <!-- IndicatiePrimSC -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901105-2018-02-28T121453.sch"/>
   <!-- Sectiocaesarea23 -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901106-2018-02-28T150344.sch"/>
   <!-- TypePartus23 -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901107-2018-02-28T162810.sch"/>
   <!-- VorigeUitkomstperkindKernset -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901108-2018-02-28T174957.sch"/>
   <!-- Meconiumhoudendvruchtwater -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901249-2020-10-12T171816.sch"/>
   <!-- Serotiniteit -->
   <include href="include/2.16.840.1.113883.2.4.6.10.90.901250-2020-10-13T115113.sch"/>
</schema>
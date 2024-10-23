<?xml version="1.0" encoding="UTF-8"?>

<!-- 
    DTR1 QSET_QTY - Continuous Set of Quantity
    Status: draft
-->
<rule abstract="true"
      id="hl7nl-QSET_QTY"
      xmlns="http://purl.oclc.org/dsdl/schematron">
   <extends rule="QTY"/>
   <assert role="error"
           test="count(*[self::*:originalText][@validTimeLow or @validTimeHigh or @controlActRoot or @controlActExtension or @updateMode])=0"
           see="https://art-decor.org/mediawiki/index.php?title=DTr1_hl7nl-QSET_QTY">dtr1-1-QSET_QTY: No History or Update Mode</assert>
</rule>
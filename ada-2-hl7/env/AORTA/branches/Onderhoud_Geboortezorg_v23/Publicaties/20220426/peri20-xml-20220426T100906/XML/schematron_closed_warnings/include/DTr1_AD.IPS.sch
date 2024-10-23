<?xml version="1.0" encoding="UTF-8"?>

<!-- 
    AD.IPS - Address
    Status: draft
-->
<rule abstract="true"
      id="AD.IPS"
      xmlns="http://purl.oclc.org/dsdl/schematron">
   <extends rule="AD"/>
   <assert role="error"
           test="@nullFlavor or hl7:*"
           see="https://art-decor.org/mediawiki/index.php?title=DTr1_AD.IPS">dtr1-1-AD.IPS: if addr is not null at least one sub element has to be provided</assert>
</rule>
<?xml version="1.0" encoding="UTF-8"?>

<!-- 
    DTr1 INT.NONNEG - Integer, non-negative
    Status: draft
-->
<rule abstract="true"
      id="INT.NONNEG"
      xmlns="http://purl.oclc.org/dsdl/schematron">
   <extends rule="INT"/>
   <assert role="error"
           test="@nullFlavor or @value &gt;= 0"
           see="https://art-decor.org/mediawiki/index.php?title=DTr1_INT.NONNEG">dtr1-2-INT.NONNEG: null or value &gt;= 0</assert>
</rule>
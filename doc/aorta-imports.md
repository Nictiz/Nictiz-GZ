# AORTA imports

-----

## Table of contents

* [Introduction](#section-anchor-1)
* [AORTA documents in YATC](#section-anchor-2)
* [Importing documents](#section-anchor-3)
* [The AORTA import format](#section-anchor-4)
  * [Root element: import-aorta-documents](#section-anchor-4-1)


-----

## <a name="section-anchor-1"/>Introduction

Some YATC components/applications/versions need documents that are stored in the AORTA repository. In most cases this concerns XML  Schemas (`.xsd`) and Schematron-schemas (`.sch`).

The SVN AORTA repository (`https://next.gforge.com/svn/aorta`) is gargantuan. The checkout is (spring 2024) over 75Gb! Luckily it is also (relatively) stable. So, to prevent all YATC users need to checkout this gigantic bucket of data (and use very little of it), the decision was made to *copy* the relevant AORTA files to YATC.

Copying a schema is not a straightforward task due to the inclusion of referenced documents. AORTA schemas are typically complex and rely on many external dependencies. Manually determining which documents to copy can be a tedious process. To simplify this, an AORTA import utility has been developed. This utility automatically handles the copying of all necessary documents. Additionally, it offers the advantage of easily updating a document in AORTA with just a single command when needed.

-----

## <a name="section-anchor-2"/>AORTA documents in YATC

The following conventions apply to storing AORTA documents in YATC:

* All AORTA documents reside underneath the `env/AORTA/` sub-directory of a YATC component. For instance, there is a `YATC-internal/ada-2-hl7/env/AORTA/` sub-directory.
* The directory structure inside AORTA is mimicked in YATC. For instance, a document from AORTA `AORTA/trunk/XML/coreschemas/datatypes.xsd` is copied to `YATC-internal/ada-2-hl7/env/AORTA/trunk/XML/coreschemas/datatypes.xsd`

-----

## <a name="section-anchor-3"/>Importing documents

For using the AORTA import facilities in YATC, do the following:

* SVN checkout the AORTA repository to a location somewhere on your disk
* Define the location of the checkout of the AORTA repository as a YATC parameter called `AORTADirectory`. For this edit (or create) the `{basedirectory}/data/parameters.xml` document (`{basedirectory}` is the directory where all the YATC repositories (and `HL7-mappings` and `art_decor`) are checked out).<br/>Here is an example of what this looks like:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<parameters xmlns="https://nictiz.nl/ns/YATC-shared" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xsi:schemaLocation="https://nictiz.nl/ns/YATC-shared ../YATC-shared/xsd/parameters.xsd">
   
    …
    
    <parameter name="AORTADirectory">
        <value>{$baseDriveRoot}/somewhere/on/your/disk/AORTA</value>
    </parameter>

    …

</parameters>
        
```

* Sometimes the documents to copy are in zip files inside AORTA. Unzip the relevant zip files.
* Write a document that describes what to import using the [YATC AORTA import format](#import-format). An example of such a document can be found in `YATC-internal/ada-2-hl7/data/import-aorta-documents.xml`.
* The recommended location to store such a document is the `data/` sub-directory of the component in question. The recommend filename is `import-aorta-documents.xml`.
* Open a command line window in the directory where the specification document is stored and issue the command: `yatc import-aorta-documents {specification-document}`. When using the conventions this is `yatc import-aorta-documents import-aorta-documents.xml`.
* This will copy all the specified documents to YATC. It will automatically find out which documents are imported/included and copy these as well.

Some additional remarks:

* The `import-aorta-documents` command does *not* clean the target directory. So if you want a completely fresh import, remove it yourself before issuing the command.
* It turned out that some of the documents to copy resided in zip files stored in AORTA. You need to expand these zip files first.

-----

## <a name="section-anchor-4"/><a name="import-format"/>The AORTA import format

* The schema for the AORTA import format is in `YATC-shared/support/import-aorta-documents.xsd`
* All markup for the YATC text format must be in the `https://nictiz.nl/ns/YATC-shared/import-aorta-documents` namespace.

### <a name="section-anchor-4-1"/>Root element: `<import-aorta-documents>`

```
<import-aorta-documents href-target? = xs:anyURI >
  ( <document href="…"> |
    <directory href="…"> )*
</import-aorta-documents>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `href-target` | ? | `xs:anyURI` | The target directory. A relative name is resolved against the location of the YATC-internal repository (the value of the `yatcInternalDirectory` YATC parameter). For example, when importing for the `ada-2-hl7` component and following the conventions, this attribute must be stated as `href-target="ada-2-hl7/env/AORTA"`. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `document` |   | URI of the document to import. Any includes/imports in this document are imported also.<br/>The `@href` attribute must be a relative path to a document in AORTA. It is resolved against the AORTA directory or against the location set by a parent `<directory>` element. | 
| `directory` |   | Set the directory to import from. The contents of a `<directory>` element is, recursive, ca choice of `<document>`/`<directory>` elements.<br/>The `@href` attribute must be the relative path of a directory in AORTA. It is resolved against the AORTA directory or against the location set by a parent `<directory>` element.<br/>For instance: `href="branches/Onderhoud_Mp_v90/Publicaties/20210921/mp-xml-20210921T194523"`.  | 


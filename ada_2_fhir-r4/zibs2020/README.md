# Proposal 2

If all profiles get the same version number as the package.

## Folder structure

The folder structure uses the following conventions:

- `payload` contains the actual XSLT mappings from ADA to FHIR. Each ADA to FHIR mapping lives in a separate file.
  - `payload/latest-package.xsl` imports the latest version of 'all-zibs.xsl', updated after each KCR.
  - `x.x` folder named after the semantic version of the package it contains. A new folder is created for every minor release.
  - `x.x/all-zibs.xsl` imports all XSLT files in the folder. It can be used to import all mappings using a single file.
  - `x.x/*.xsl` individual zib XSLTs. Compared to zib2017, all templates and modes named and called do not contain the profile version
- `util` containts utility files
- `ada_instance` contains instances of the zib scenarios in ADA format.
- `ada_schemas` contains the (generated) XSD's of the ADA descriptions. These can be used to validate the ADA instances.
- `ada_project_drivers` contains the XSLT 'drivers' that can be called to start the transformation from ada to FHIR for the zib scenarios. See the README in this folder for more information.
- `fhir_instance` contains FHIR instances generated from ada instances

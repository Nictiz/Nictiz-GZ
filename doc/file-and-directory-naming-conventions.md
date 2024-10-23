# YATC - File and directory naming conventions

This document contains the naming conventions used/prescribed/advised for all files and directories in YATC repositories and components. 

As with all conventions, try to stick to them, but don't get too religious. If there is a good reason to deviate, do. 

These conventions apply to new contents. Any copied existing files and directories may deviate. 

----

## General

* The basic naming convention for files and directories is *lower-kebab-case*: everything in lower-case with hyphens as word separators. For instance `template-files` or `add-schema-files`.
* A *from-to* like name is done using `{from}-2-{to}`. For instance: `ada-2-wiki`. 

------

## The `env/` sub-directory

The `env/` sub-directory in a component holds all stylesheets, schemas and other documents that are used in the conversion process, governed by the DSL.

To aid developers that were already working with the original code, the directory structure below `env/` is kept the same as the directory structure in the original repository (`art_decor` or `HL7-mappings`). 

*Important*: YATC evolved during its development. Therefore, some of the older YATC components do *not* use the `env\` sub-directory convention. Instead the files involved in the conversion process are in other sub-directories (for instance, all stylesheets are below the generic `xsl/` sub-directory). 

Components that currently (spring 2024) do *not* use the `env/` convention (but should, sorry) are:

* `ada-2-wiki`
* `get-production-ada-instances`

--------

## The `data/` sub-directory

The `data\` sub-directory of a component holds (fixed) data. There are a number of important files in here:

* The DSL code of the component. For instance, for the `ada-2-hl7` component, there is a document called `YATC-internal/ada-2-hl7/data/ada-2-hl7-data.xml`. This contains the DSL source for `ada-2-hl7`.<br/>Internally, for organizational purposes, this is (usually) divided into several include files which reside in the `data/include` sub-directory.
* The YATC parameters for a component. These are in a document always called `parameters.xml`.<br/>YATC parameters are described [here](parameters-system.md). The XML format for a `parameters.xml` document is described [here](parameters-format-reference.md).
* For components based on the [general engine](general-engine.md), there is a configuration document for this. For instance, for the `ada-2-hl7` component, there is a document called `YATC-internal/ada-2-hl7/data/ada-2-hl7-general-engine-configuration.xml`. In the vast majority of cases, its content is of no further interest.  

-----

## Other sub-directory names

Sub-directories that hold code and (fixed) data, the following naming convention is used:


| Subdirectory | Meaning |
|---|---|
| `bin` | All (batch/shell) scripts for command line usage | 
| `data` | Fixed data, like lookup tables, parameters, etc. |
| `env` | See below. | 
| `doc` | Documentation |
| `sch` | Schematron schemas |
| `xpl` | XProc pipelines/steps |
| `xsd` | W3C Schemas |
| `xsl` | XSLT stylesheets |

Additional rules:

* If a subdirectory contains only libraries/modules (anything that cannot be used/called stand-alone but is meant for include/import), the name will be suffixed with `mod` (for module). For instance: `xslmod` or `xplmod`.
* A file in these `mod` directories is always called `{name}.mod.{extension}`. For instance: `parameters.mod.xsl`.
* XProc pipelines often have private XSLT stylesheets (used within a single XProc pipeline only). Subdirectories for these private stylesheets (underneath the `xpl` or `xplmod` subdirectory) are called `xsl-{name-of-pipeline}`. For instance: for a pipeline called `get-data.xpl` there might be a subdirectory called `xsl-get-data/` containing its stylesheets.

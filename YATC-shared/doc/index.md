# Main YATC documentation index

This is the main index/entry to the YATC documentation. It is organized based on target group.

-----

## General

The following is mandatory reading for everyone that wants to use and understand the YATC system:


| Document | Description | 
| -------- | ----------- |
| [Introduction to the YATC system](introduction-to-yatc.md)  | Main introduction to the YATC system and its concepts. | 
| [Installation notes](installation-notes.md) | How to install the YATC system on your local machine. | 

------

## Information for YATC users

The following provides information on how to use YATC: 

| Document | Description | 
| -------- | ----------- |
|  [Basic command usage](basic-command-usage.md) | Describes the basic use of YATC commands. | 

-----

## Information for DSL and conversion stylesheet maintainers

The following provides specific information for those that have to maintain the DSL source code and the accompanying conversion stylesheets: 

| Document | Description | 
| -------- | ----------- |
| [Using oXygen with YATC](using-oxygen.md)  | How to use/configure oXygen for optimal use with YATC. |
|  [Coding conventions](coding-conventions.md)  | Coding conventions used. Important when maintaining the XSLT stylesheets. |
| [File and directory naming conventions](file-and-directory-naming-conventions.md) | Conventions for naming directories and files. Important when adding XSLT stylesheets or other documents. |
| [DSL hints and tips](dsl-hints-tips.md) | Hints and tips for writing and maintaining DSL source code. |
| [Parameters system](parameters-system.md) | YATC uses a parameter driven system for pointing to directories, turning debug flags on and off, etc. This document describes how this works. |
| [Parameters XML documents format reference](parameters-format-reference.md) | This document describes the XML document format for defining/setting YATC parameters.  |
| [YATC-shared command reference](commands.md) | Describes the commands present in YATC-shared, which are meant to support the developers. Several of these commands deal with the parameter system. |
| [Importing AORTA documents](aorta-imports.md) | Describes how to import documents (usually Schemas and Schematrons) from the AORTA SVN repository. | 

-----

## Information for DSL engine maintainers

This is additional information (on top of the documents mentioned above) for those that have to maintain the DSL interpretation engines, written in XProc&#160;3.0. 

| Document | Description | 
| -------- | ----------- |
| [General Engine](general-engine.md) | Describes the General Engine (the engine used to interpret the General Engine DSL used in most components). This also describes how to kick-start a new component based on the General Engine. |
| [Documentation in YATC](documentation-in-yatc.md) | How to write documentation for YATC. Describes the special markup format defined for this. |
| [Command help texts](command-help-texts.md) | Describes how to write help texts for (command line) commands in YATC. Describes the special markup format for this. | 
| [Compare rules](compare-rules.md) | Most components have commands to compare  (test!) the outcome of the original (Ant based) conversions with the YATC generated ones. This document describes the rules that govern such comparisons. |

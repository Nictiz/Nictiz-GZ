# Introduction to YATC

This document introduces the YATC (Yet Another ADA Toolchain) system. It describes how it is constructed, introduces terminology and provides  pointers to further reading.

-----

## Table of contents

* [A little history](#section-anchor-1)
* [YATC general structure and terminology](#section-anchor-2)
  * [Terminology](#section-anchor-2-1)
    * [The main building blocks: Components](#section-anchor-2-1-1)
    * [Applications and versions](#section-anchor-2-1-2)
    * [Usecases](#section-anchor-2-1-3)

  * [Structure overview](#section-anchor-2-2)

* [YATC repository structure](#section-anchor-3)
  * [Components and conversion to YATC](#section-anchor-3-1)

* [YATC dataflow](#section-anchor-4)
* [Anatomy of a YATC component](#section-anchor-5)
  * [The DSLs](#section-anchor-5-1)
    * [Types of DSLs](#section-anchor-5-1-1)
    * [Structure of DSL: applications, setups and builds](#section-anchor-5-1-2)

  * [The DSL interpreters](#section-anchor-5-2)


-----

## <a name="section-anchor-1"/>A little history

Around 2022, Nictiz had two code/data repositories in which various (mainly XML) document conversion operations took place: [art_decor](https://github.com/Nictiz/art_decor) (code and data for internal usage only) and [HL7-mappings](https://github.com/Nictiz/HL7-mappings) (code and data also available externally).

The technical foundation for these conversions are a large number of highly specialized XSLT stylesheets, governed by Ant scripts. Code and data were kept together in the same repository, intertwined. This whole system had "grown organically" over the years and was in dire need of refactoring.

In 2022 we started building YATC (Yet Another ADA Toolchain):

* Ant as the main processing engine is phased out and replaced by a DSL (Domain Specific Language) approach, based on XProc 3.0.
* Code is gradually moved into (Nictiz private) YATC repositories.
* Data will remain in the original [art_decor](https://github.com/Nictiz/art_decor) and [HL7-mappings](https://github.com/Nictiz/HL7-mappings) repositories. Directory structures here are left unchanged.
* There are customers that need access to some of the conversion stylesheets. Since these are no longer publicly available, a distribution mechanism is added.

-----

## <a name="section-anchor-2"/>YATC general structure and terminology

To understand how YATC is constructed, it is necessary to take note of its general structure and introduce some terminology.

### <a name="section-anchor-2-1"/>Terminology

#### <a name="section-anchor-2-1-1"/><a name="components"/>The main building blocks: Components

The main building blocks in the original and YATC system are called *components*. A component (usually) transforms something from one data format to another. Examples are `ada-2-wiki`, `fhir-2-ada`, etc.

Component names translate directly to the directory structure of the repositories. For instance, you’ll find an `art_decor/ada_2_wiki/` sub-directory for the data in [art_decor](https://github.com/Nictiz/art_decor) and a `YATC-internal/ada-2-wiki/` sub-directory for the code in [YATC-internal](https://github.com/Nictiz/YATC-internal).

A component consists of:

* *Code*, on a number of levels:
  * To define what needs to be done, YATC uses code written in task-specific DSLs (Domain Specific Languages). A DSL describes operations like creating/clearing directories, copying files, performing conversions, validations, etc.
  * The conversions themselves are done using highly specialized XSLT stylesheets.
  * The interpretation and execution of the YATC DSLs is done using code written in [XProc 3.0](https://xproc.org/) and XSLT.

* *Data*. Both the source and the transformed data are part of the component.

There a number of important differences between components in the original system and YATC:

* In the original system, all code for the components was either in the [art_decor](https://github.com/Nictiz/art_decor) or [HL7-mappings](https://github.com/Nictiz/HL7-mappings) repository. In YATC all code is in the (Nictiz private) [YATC-internal](https://github.com/Nictiz/YATC-internal) repository.
* In the original system, code and data were kept together. YATC separates this: code is moved to the YATC [YATC-internal](https://github.com/Nictiz/YATC-internal) repository, data remains in the original [art_decor](https://github.com/Nictiz/art_decor) and [HL7-mappings](https://github.com/Nictiz/HL7-mappings) repositories (with unchanged directory structure).
* In the original system, the overarching management code was based on Ant. The YATC system uses a DSL (Domain Specific Language) approach, which is interpreted by code written in [XProc 3.0](https://xproc.org/).
* YATC introduces some new naming conventions. This means that components in YATC usually have a slightly different name than in the original. For instance, the original `ada_to_wiki` is called `ada-2-wiki` in YATC.

#### <a name="section-anchor-2-1-2"/>Applications and versions

Most components are internally divided into *applications* and *versions*. An application has a *name* (usually some abbreviation) and a *version*. For instance `mp` (which stands for (Dutch) “medicatie proces”), version `9.3.0`. An application includes both a set of data (stored in [art_decor](https://github.com/Nictiz/art_decor) or [HL7-mappings](https://github.com/Nictiz/HL7-mappings)) and the code to handle this (stored in [YATC-internal](https://github.com/Nictiz/YATC-internal)). 

Application names and versions translate directly to the directory structure. For instance,  you’ll find a `mp/9.3.0/` sub-directories underneath the `ada-2-hl7` component directories.

When talking about an application and version, it is often written/mentioned as `name/version`, for instance `mp/9.3.0`.

#### <a name="section-anchor-2-1-3"/>Usecases

Most applications are internally divided in *usecases*. For instance the `mp/9.3.0` application has usecases like `sturen_afhandeling_medicatievoorschrift`, `sturen_voorstel_verstrekkingsverzoek`, etc. 

Again, this translates to the directory structure. For instance, there is a `ada-2-hl7/mp/9.3.0/sturen_voorstel_verstrekkingsverzoek/` sub-directory.

### <a name="section-anchor-2-2"/>Structure overview

The following picture provides an overview of the general structure of the YATC system:

<image src="figures/structure-overview.png" width="50%"/>

-----

## <a name="section-anchor-3"/><a name="yatc-repository-structure"/>YATC repository structure

In working with the YATC system, you need access to the following repositories:

| Repository | Description | 
| ----- | ----- | 
| [YATC-tools](https://github.com/Nictiz/YATC-tools) | Contains all the (open source) tools needed for running the YATC system. | 
| [YATC-shared](https://github.com/Nictiz/YATC-shared) | Contains all the shared, generic, code for the YATC system. | 
| [YATC-internal](https://github.com/Nictiz/YATC-internal) | Contains all the YATC [components](#components). | 
| [YATC-public](https://github.com/Nictiz/YATC-public) | Used for distributing data to customers. | 
| [art_decor](https://github.com/Nictiz/art_decor) | Contains the (Nictiz private) data. | 
| [HL7-mappings](https://github.com/Nictiz/HL7-mappings) | Contains all the public data. | 

For more information on how to use these repositories, see the [installation-notes](installation-notes.md).

### <a name="section-anchor-3-1"/>Components and conversion to YATC

Not all components are currently (spring 2024) converted to YATC. The state of this is as follows:

| Original repository | Original component | YATC equivalent | Status/Remarks | 
| ----- | ----- | ----- | ----- | 
| `art_decor` | `ada_2_ada` | - | Not (yet) converted. | 
| `art_decor` | `ada_2_community` | - | Not (yet) converted. | 
| `art_decor` | `ada_2_test-xslt` | - | Not (yet) converted. | 
| `art_decor` | `ada_2_wiki` | `ada-2-wiki` | Done. | 
| `art_decor` | `adarefs2ada` | `get-production-ada-instances` | Done. Merged with the `production_ada_instances` component. | 
| `art_decor` | `production_ada_instances` | `get-production-ada-instances` | Done. Merged with the `adarefs2ada` component. | 
| `art_decor` | `projects` | - | Not (yet) converted. | 
| `HL7-mappings` | `ada_2_ada` | - | Not (yet) converted. | 
| `HL7-mappings` | `ada_2_fhir` | `ada-2-fhir` | Done. | 
| `HL7-mappings` | `ada_2_fhir_r4` | - | Not (yet) converted. | 
| `HL7-mappings` | `ada_2_hl7` | `ada-2-hl7` | Done. | 
| `HL7-mappings` | `fhir-narrativegenerator` | - | Not (yet) converted. | 
| `HL7-mappings` | `fhir_2_ada` | `fhir-2-ada` | Done. | 
| `HL7-mappings` | `fhir_2_ada_r4` | - | Not (yet) converted. | 
| `HL7-mappings` | `hl7_2_ada` | - | Not (yet) converted. | 
| `HL7-mappings` | `hl7_2_fhir` | `hl7-2-fhir` | Done. | 
| `HL7-mappings` | `hl7_2_hl7` | - | Not (yet) converted. | 

-----

## <a name="section-anchor-4"/>YATC dataflow

Most YATC components use the same dataflow. The first part of this is as follows:

<image src="figures/dataflow1.png" width="50%"/>

* YATC component `YATC-internal/get-production-ada-instances` reads data from the `ART-DECOR` database (using REST calls).
* The results are stored in the [art_decor](https://github.com/Nictiz/art_decor) repository, sub-directory `production-ada-instances/`.
* Sometimes the results need to be post-processed. The results of this are stored in the sub-directory `adarefs2ada/`.

When you run one of the other components, it takes its input from what was produced here:

<image src="figures/dataflow2.png" width="50%"/>

Usually a component “fills” a component/application specific sub-directory in `HL7-mappings`:

* *Setup* phase:
  * XML Schemas and sometimes other information is copied from the appropriate sub-directory of [art_decor](https://github.com/Nictiz/art_decor).
  * Data is copied from either `art_decor/production-ada-instances/` or `art_decor/adarefs2ada/`.

* *Build* phase
  * From there the builds/conversions are done using XSLT stylesheets. The results are also stored in [HL7-mappings](https://github.com/Nictiz/HL7-mappings).


-----

## <a name="section-anchor-5"/><a name="yatc-component-anatomy"/>Anatomy of a YATC component

YATC components use the DSL (Domain Specific Language) concept. A DSL is a mini (programming) language, specifically targeted to a very specific goal. This enables you to hide a lot of complexity in handling data and transformations and move this to generic code where it has to be written (and maintained) only once.

For YATC this means that the actions involved in handling a component/application/usecase are described in a DSL. The maintainer of this can focus on the “what” and leave the “how” to the DSL interpreter. Things like sub-directory name constructions, the right way to call stylesheets, where to copy data from, etc. are hidden.

Using the DSL approach, there are two levels of code to deal with:

* [The DSL itself](#dsls), the code that describes the actions.
* [The DSL interpreter](#dsls-interpreters), the code that interprets what is written in the DSL and turns this in to action.

### <a name="section-anchor-5-1"/><a name="dsls"/>The DSLs

Before you read on, maybe it’s a good idea to look at some examples of these DSLs. For this, move to the `data/` sub-directory of a component and look at the file called `{component-name}-data.xml`, for instance `YATC-internal/ada-2-fhir/data/ada-2-fhir-data.xml`. Often this uses include files, which you’ll find in the `data/include/` sub-directory.

#### <a name="section-anchor-5-1-1"/><a name="dsl-types"/>Types of DSLs

As far as the YATC DSLs are concerned, there has been evolution. At the start of developing the YATC system (beginning 2023), the assumption was that every component would need its own DSL. Of course, some constructions in the DSLs could be shared/re-used, but all would be (slightly) different.

This turned out not to be entirely true: the actions for most components could be handled by a single DSL. And that is a good thing: a re-used DSL means maintainers don’t have to switch between language variants when working on different components. It also means a single code-base and a single set of documentation. This generic YATC DSL is coined the “General Engine DSL” (the General Engine is the name of the DSL interpreter code for this, see [below](#dsl-interpreters)). It is expected that the General Engine DSL can be used in most of the components still to convert to YATC.
            

The state of things with respect to YATC DSLs/components is now (spring 2024) as follows:

| YATC component | DSL | 
| ----- | ----- | 
| `ada-2-fhir` | General Engine DSL | 
| `ada-2-hl7` | General Engine DSL | 
| `ada-2-wiki` | Component specific DSL | 
| `distribute` | Component specific DSL | 
| `fhir-2-ada` | General Engine DSL | 
| `get-production-ada-instances` | Component specific DSL | 
| `hl7-2-fhir` | General Engine DSL | 

#### <a name="section-anchor-5-1-2"/>Structure of DSL: applications, setups and builds

Within the DSL sources, for instance `YATC-internal/ada-2-fhir/data/ada-2-fhir-data.xml`, the same structures appear over and over:

* Every application within a component has its own `<application>` element.
* The first things that usually happens there is setting up the environment, in `<setup>` elements. This means that for a certain usecase all relevant files are copied:
  * Schemas are copied from `art_decor/projects`
  * Data (usually ADA documents) is copied from the data gathered by the `get-production-ada-instances` component.

* After that, the actual builds take place. This is done mainly using `<build>` elements that trigger XSLT transformations over collections of documents gathered during the setup.

### <a name="section-anchor-5-2"/><a name="dsl-interpreters"/>The DSL interpreters

Interpretation of the YATC DSLs is done using code written in XProc 3.0. The situation is different for components that use a specific DSL and components that use the General Engine DSL:

* The code for component specific DSLs is in the component itself. For instance, `YATC-internal/ada-2-wiki` contains XProc pipelines that interpret the DSL in the `YATC-internal/ada-2-wiki/xpl/` sub-directory. Of course, heavy use is made of the facilities and code that `YATC-shared` offers, but the main DSL interpretation is done in the component itself.
* The code for interpreting the General Engine DSL is in `YATC-shared/general-engine`. It has separate [documentation](general-engine.md). 

 

All DSL interpreters follow roughly the same pattern:

* The command line (that started the YATC command) is interpreted.
* The DSL document is read, all includes are resolved, and the result is validated (usually against both an XML Schema and Schematron-schema).
* Based on what was on the command line, the DSL document is pruned, so only the relevant applications are left.
* The DSL document is enhanced with additional information. For instance, all relative directory names are turned into absolute ones. Directories that are implicit in the DSL (so you don’t have to worry about them) are added.
* The setups are executed first, so all data is in place before we start to build.
* All the builds are performed.


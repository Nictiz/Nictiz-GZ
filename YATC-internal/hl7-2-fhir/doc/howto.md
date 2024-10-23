# How to configure YATC-internal/hl7-2-fhir

-----

## Introduction

This document tries to explain how to configure the `hl7-2-fhir` component setup.

The following documentation might also be of interest for this:

* [Command reference](command.md): What commands are available.
* [Application data format reference](data-format-reference.md): Reference documentation for the base data file YATC-internal/hl7-2-fhir/data/hl7-2-fhir-data.xml.
* [The parameters system](../../../YATC-shared/doc/parameters-system.md): Some things are defined using parameters which is documented here

And of course it is useful and sensible to see how things are done for other applications. Better stolen well than badly made up…

-----

## Adding an application to the base data file

All the magic of `hl7-2-fhir` is defined in its base data file `YATC-internal/hl7-2-fhir/data/hl7-2-fhir-data.xml`.  Important remarks about this file:

* The name/location of this file is not a given. It is defined using parameter `hl72fhirDataDocument` in `YATC-internal/hl7-2-fhir/data/parameters.xml`. This can be interesting when you want to replace the normal data file with one of your own in a test/development/debug situation. For this, redefine the parameter in your local parameters override file `{$yatcBaseDirectory}/data/parameters.xml`.
* The file can, if necessary/convenient, be segmented by storing `<application>`> elements in separate XML documents and include these in the main file using `<xi:include>` elements (the namespace prefix `xi` must be bound to the XInclude namespace `http://www.w3.org/2001/XInclude`).
* There are two schemas involved validating this file. See the [application data format reference](data-format-reference.md) for more information. Editing this file (in oXygen for instance) works best when these schemas are referenced/used. This also applies to files included using `<xi:include>`.

To add a new application to the data file, simply add an `/hl7-2-fhir-data/application` element. Add the name and version of the application in its (required) `@name` and `@version` attributes. All storage will now be done underneath `{$ada2fhirBaseStorageDirectory}/{@application}/{@version}`.

Originally the data file was set up keeping alphabetical order using the application's name and version. Whether you want to keep it that way is up to you.

There are two important attributes on `<application>`:

* `@source-project-name` defines the name of the project in the projects directory tree (mainly used for copying schemas from). The default is `@name` but this is rarely correct, so you'll probably have to set it explicitly. Projects are located using parameter `projectsBaseStorageDirectory` in `YATC-shared/data/parameters.xml`.
* `@source-adarefs2ada` defines where the source files for `<setup>` elements come from (default: false):
  * `source-adarefs2ada="false"`: The source documents are supposed to come straight from ART-DECOR. They're taken from `{$productionAdaInstancesBaseStorageDirectory}/{@name}/{@version}/{$productionAdaInstancesDataSubdir}` (parameters defined in `YATC-shared/data/parameters.xml`).
  * `source-adarefs2ada="true"`: The source documents are supposed to come from `adarefs2ada` post-processing. They're taken from the appropriate subdirectories of `{$adarefs2adaBaseStorageDirectory}/{@name}/{@version}/{@usecase}` (parameter defined in `YATC-shared/data/parameters.xml`).


### Setting up the environment for a usecase

#### The `<setup>` element

A `<setup>` element (it can occur multiple times as child of `<application>`) defines what files must copied to the `hl7-2-fhir` result location  and where. The `@usecase` attribute defines the name of the usecase for the setup. This will become the name of the sub-directory underneath the application/version main directory. The details are [here](data-format-reference.md#setup-element). Some hints and clues:

* You can copy documents using the `<copy-data>` child element. Add `<include>` and `<exclude>` elements to filter.
* You can copy schemas (from the projects directory tree) using the `<copy-project-schemas>` child element. Add `<include>` and `<exclude>` elements to filter.
* The setup can also create empty result directories using the `<empty-directory>` element. Usually these directories are filled during the build (see below).<br/>Creating these directories up-front is not strictly necessary, because any non-existing directories are automatically created by the build process. However it makes senses to define them here because the `compare-hl7-2-fhir` command now knows there's a result directory and takes it into account.
* Exceptionally, it is necessary to copy fixed data files, usually CSS/JavaScript and the likes. This can be done using the `<copy-directory>` element.<br/>Very often, because they're fixed/constant, the source for these files is in the code directory tree. To refer to such a directory without resorting to absolute path names, start the @directory attribute with a #. For instance: `directory="#../env/mp/9.0.7/…/assets`". Such a path is relative to the location of the data file it is used in.
* Even more exceptional is retrieving data files from a REST URL (usually something in ART-DECOR) during setup. This can be done using the `<retrieve>` element.

Although not required, it makes sense to define directory identifiers for all directories using @directory-id attributes. See [here](data-format-reference.md#resolving-directory-attribute) for more information. this allows referring to these directories during the build without having to repeat there names.

-----

## The `hl7-2-fhir` stylesheets and accompanying data

The actual creation of the output documents is done using regular XSLT stylesheets. These stylesheets are run by the `<build>` elements (see [here](ata-format-reference.md#build-step)) in the data file. Some hints and clues:

* They usually reside in a sub-directory of `YATC-internal/hl7-2-fhir/env`
* The build system passes these stylesheets a standard set of parameters. You can find these parameters, documented, in `YATC-shared/general-engine/xslmod/build-standard-parameters.mod.xsl`. If you need any of these include (`<xsl:include>`) this module at the top of your stylesheet.

### Stand-alone testing of stylesheets

It is preferable to develop and test `hl7-2-fhir` stylesheets outside of the context of XProc, for instance directly from oXygen. There is some support for this. Here is how to set this up:

* The standard build parameters passed to the stylesheets get some hopefully appropriate default value here. So if you just run the stylesheets without setting any parameters, they will not complain about missing parameters.
* In oXygen, setup a transformation scenario that takes an appropriate input file and transforms this using the stylesheet to test/develop. Depending on the stylesheet, you might have to set parameters to some appropriate (URI or other) value.


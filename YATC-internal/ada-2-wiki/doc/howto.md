# How to configure YATC-internal/ada-2-wiki

This document tries to explain how to configure the ada-2-wiki setup. It starts the journey by adding a new application. If you're altering an existing application, just skip ahead to the right section.

The following documentation might also be of interest for this:

* [Component documentation](component-documentation.md): What does this component do and how does it work, more in general.
* [Command reference](commands.md): What commands are available.
* [Application data format reference](data-format-reference.md): Reference documentation for the base data file `YATC-internal/ada-2-wiki/data/ada-2-wiki-data.xml`.
* [The parameters system](../../../YATC-shared/doc/parameters-system.md): Some things are defined using parameters which is documented here.

And of course it is useful and sensible to see how things are done for other applications. Better stolen well than badly made up.

-----

## Adding an application to the base data file

All the magic of ada-2-wiki is defined in its base data file `YATC-internal/ada-2-wiki/data/ada-2-wiki-data.xml`.  Important remarks about this file:

* The name/location of this file is not a given. It is defined using parameter `ada2wikiDataDocument` in `YATC-internal/ada-2-wiki/data/parameters.xml`. This can be interesting when you want to replace the normal data file with one of your own in a test/development/debug situation. For this, redefine the parameter in your local parameters override file `{$yatcBaseDirectory}/data/parameters.xml`.
* The file can, if necessary/convenient, be segmented by storing `<application>` elements in separate XML documents and include these in the main file using `<xi:include href="…"/>` elements (the namespace prefix `xi` must be bound to the XInclude namespace `http://www.w3.org/2001/XInclude`).
* There are two schemas involved validating this file. See the [Application data format reference](data-format-reference.md) for more information. Editing this file (in oXygen for instance) works best when these schemas are referenced/used. This also applies to files included using `<xi:include/>`.

To add a new application to the data file, simply add an `/ada-2-wiki-data/application` element. Add the name and version of the application in its (required) `@name` and `@version` attributes. All storage will now be done underneath `{$ada2wikiBaseStorageDirectory}/{@application}/{@version}`.

Originally the data file was set up keeping alphabetical order using the application's name and version. Whether you want to keep it that way is up to you.

There are two important attributes on `<application>`:

* `@source-project-name` defines the name of the project in the `projects` directory tree. The default is `@name` but this is rarely correct, so you'll probably have to set it explicitly. Projects are located using parameter `projectsBaseStorageDirectory` in `YATC-shared/data/parameters.xml`
* `@source-adarefs2ada` defines where the source files for `<setup>` elements come from (default: `false`):
  * `source-adarefs2ada="false"`: The source documents are supposed to come straight from ART-DECOR. They're taken from `{$productionAdaInstancesBaseStorageDirectory}/{@name}/{@version}/{$productionAdaInstancesDataSubdir}` (parameters defined in `YATC-shared/data/parameters.xml`).
  * `source-adarefs2ada="true"`: The source documents are supposed to come from adarefs2ada post-processing. They're taken from the appropriate subdirectories of `{$adarefs2adaBaseStorageDirectory}/{@name}/{@version}/{@usecase}` (parameter defined in `YATC-shared/data/parameters.xml`).
  
  
### Setting up the environment for a usecase

A `<setup>` element (it can occur multiple times as child of `<application>`) defines what files must copied to the ada-2-wiki result location  and where. The `@usecase` attribute defines the name of the usecase for the setup. This will become the name of the subdirectory underneath the `application/version` main directory. The details are [here](data-format-reference.md#setup-element). Some hints and clues:

* You can copy ADA documents using the `<copy-data>` child element. Add `<include>` and `<exclude>` elements to filter, the string `$USECASE` in `@glob` and `@pattern` attributes is replaced with the name of the usecase.
* You can copy schemas (from the `projects` directory tree) using the `<copy-project-schemas>` child element. Add `<include>` and `<exclude>` elements to filter, the string `$USECASE` in `@glob` and `@pattern` attributes is replaced with the name of the usecase.
* The setup can also create empty result directories using the `<empty-directory>` element. Usually these directories are filled during the build (see below).<br/>Creating these directories up-front is not strictly necessary, because any non-existing directories are automatically created by the build process. However it makes senses to define them here because the `compare-ada-2-wiki` command now knows there's a result directory and takes it into account. 
* Exceptionally, it is necessary to copy fixed data files, usually CSS/JavaScript and the likes. This can be done using the `<copy-directory>` element.<br/>Very often, because they're fixed/constant, the source for these files is in the code directory tree (usually somewhere underneath `ada-2-wiki/data`). To refer to such a directory without resorting to absolute path names, start the `@directory` attribute with a `#`. For instance: `directory="#mp/9.0.7/…/assets"`. Such a path is relative to the location of the file it is used in.
* Even more exceptional is retrieving data files from a REST URL (usually something in ART-DECOR) during setup. This can be done using the `<retrieve>` element.

Although not required, it makes sense to define *directory identifiers* for all directories using `@directory-id` attributes. See [here](data-format-reference.md#resolving-directory-attribute) for more information. this allows referring to these directories during the build without having to repeat there names.

### Building the WIKI documents

Defining how the WIKI documents are built is done using the `<build>` element. Details are [here](data-format-reference.md#build-element). It has a non-required `@name` attribute that is only used in reporting progress. Some hints and clues:

* The string `$BUILDNAME` will be substituted with the name of the build in all `@name` and `@value` attributes of child elements.
* Use directory identifiers to refer to directories filled by the setup process. See [here](data-format-reference.md#resolving-directory-attribute) for more information and some examples.
* If you don't specify a specific input document (with the `<input-document>` element), a small dummy document is provided as input.  
* Sometimes a "working set" of ADA files is needed during processing. See the section about the stylesheet below. Such a working set is defined using the `<ada-working-set>` element.
* If your stylesheet needs additional parameters, or you need to override a default value for one, use one or more `<parameter>` elements.

-----

## <a name="ada-2-wiki-stylesheets"/>The ada-2-wiki stylesheets

The actual creation of the WIKI text documents is done using regular XSLT stylesheets. These stylesheets are run by the `<build>` elements in the data file. Some hints and clues:

* The stylesheets must be XSLT 3.0 (because some underlying code uses maps, a 3.0 feature).
* They usually reside in a subdirectory of `YATC-internal/ada-2-wiki/xsl`.
* The build system passes these stylesheets a standard set of parameters. You can find these parameters, documented, in `YATC-internal/ada-2-wiki/xslmod/ada-2-wiki-build-standard-parameters.mod.xsl`. Please include (`<xsl:include>`) this module at the top of your stylesheet. This file will also load a set of standard modules and the set of parameters (in a map variable `$parameters`).<br/>There is also a small amount of code in this XSLT module to facilitate processing.
* Some WIKI building stylesheets need a "working set" of ADA files. This working set is usually the contents of one of the directories filled during the setup. It is defined by the `<ada-working-set>` element.<br/>The name/URI of the working set directory is passed to the stylesheet by the `$adaWorkingSetDirectory` parameter. You can easily load the documents in this directory using the `yatcs:yatcs:get-ada-files()` function. This function will raise an error if the working set is empty.
* Some WIKI building stylesheets need access to the "ADA release document", which resides in the `projects` directory tree. If you need this, include (`<xsl:include>`) `YATC-internal/ada-2-wiki/xslmod/ada-2-wiki-build-standard-ada-release-file.mod.xsl` in your stylesheet (after `ada-2-wiki-build-standard-parameters.mod.xsl`).<br/>The default name/location of the release document is `{projects-directory}/definitions/{project-name}-ada-release.xml`. You can override its name using the `$adaReleaseFilename` parameter, or its full URI using the `$adaReleaseFileUri` parameter.<br/>The release document itself can be accessed using `$adaReleaseFile`. It must exist, otherwise an error will be raised.
* The output of the stylesheet must be text, so it makes sense to use an `<xsl:output method="text"/>` at the top of the stylesheet. However, be aware that the final result is written to disk with serialization parameters defined by the surrounding (XProc based) system, *not* with the serialization settings defined by the `<xsl:output/>`. 
* Some WIKI building stylesheets want to write debug XML documents to disk (usually enabled by a `$debug` parameter). There is a small named template for this, `yatcs:write-debug-document`, that will take care of everything. It will write its output (by default) to `{application-base-directory}/tmp/debug`. 
* If the stylesheet needs access to another external document during processing, the best strategy is to pass the URI of the document in by parameter (in a `build/parameter` element). The `<parameter>` element has several tricks in working with the directory system of YATC, including the use of directory identifiers. 

### Stand-alone testing of stylesheets

It is preferable to develop and test ada-2-wiki stylesheets outside of the context of XProc, for instance directly from oXygen. There is some support for this. Here is how to set this up:

* The parameters passed to the adarefs2ada stylesheets are defined in `xslmod/ada-2-wiki-build-standard-parameters.mod.xsl`. These parameters also get some hopefully appropriate default value here. So if you just run the stylesheets without setting any parameters, they will not complain about missing parameters.
* Most ada-2-wiki stylesheets need a *working-set* of ADA documents:
  * The directory to load them from is passed using the `adaWorkingSetDirectory` parameter. The stylesheet loads all XML files in this directory using the `collection()` function.
  * The default value for this directory is `YATC-internal/ada-2-wiki/tmp/working-set/`. You can either copy the files for the working-set to that directory or point the parameter to some other directory. Whatever works best for you. 
* In oXygen, setup a transformation scenario that takes an appropriate input file and transforms this using the stylesheet to test/develop.






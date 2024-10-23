# Hints and tips for DSL maintainers

This document contains several hints and tips for DSL maintainers. It was written mainly for components that use the [general engine](general-engine.md). Components it does *not* apply to:

* `get-production-ada-instances` and `ada-2-wiki`: These components use their own DSL. However, with some exceptions, most of the tips and hints below still apply.
* `distribute`: This is a completely different kind of component and this document does not apply.

-----

## Table of contents

* [Where to find stuff](#section-anchor-1)
* [Validating DSL source code documents](#section-anchor-2)
* [Specifying files and directories](#section-anchor-3)
  * [Common attributes](#section-anchor-3-1)
    * [Resolving the @directory attribute](#section-anchor-3-1-1)

  * [The include and exclude elements](#section-anchor-3-2)
  * [Debug tip: Find out the absolute directory names used](#section-anchor-3-3)

* [Segmenting builds into actions](#section-anchor-4)
* [Using YATC parameters and macros](#section-anchor-5)
  * [Simple macro expansion in data files](#section-anchor-5-1)

* [Build stylesheets](#section-anchor-6)
  * [Build stylesheets and fast mode](#section-anchor-6-1)


-----

## <a name="section-anchor-1"/>Where to find stuff

* The DSL source code for a component is always stored in the component `data\` sub-directory and called `{componentname}-data.xml`. For instance, the DSL source code for the `ada-2-hl7` component can be found in `YATC-internal/ada-2-hl7/data/ada-2-hl7-data.xml`.
* It is often useful to segment the DSL source code and put the definitions for a specific application in a document of its own. For instance, the `ada-2-hl7` component uses this mechanism.
  * The separate DSL source code documents for the applications are stored in the `data/include` sub-directory.
  * The main DSL source code file includes these using the XInclude mechanism (`<xi:include>`). For instance, in `YATC-internal/ada-2-hl7/data/ada-2-hl7-data.xml` you'll find a line including the definitions for the `mp/9.3.0` application: `<xi:include href="include/application-mp-9.3.0.xml"/>`.<br/>Remark: The `xi` namespace prefix must be bound to the `http://www.w3.org/2001/XInclude` namespace.

* Detailed documentation for the DSL of a component can always be found in `doc/data-format-reference.md`. For instance, for the `ada-2-hl7` component this is [YATC-internal/ada-2-hl7/doc/src/data-format-reference.xml](../../../YATC-internal/ada-2-hl7/doc/data-format-reference.md).
* For most components, all stylesheets and other documents used by the DSL processing are stored underneath the `env/` directory of the component. The directory structure within `env/` has been kept as similar as possible to that of the original structure in `HL7-mappings` or `art_decor`.

-----

## <a name="section-anchor-2"/>Validating DSL source code documents

It is highly recommended to validate DSL code while editing it. For this you have to link the DSL source code documents to the right schemas.

For full validation, you'll have to link to *two* schemas:

* The XML Schema for the DSL code. This is stored in the component `xsd/` sub-directory and called `{componentname}-data.xsd`. For instance, for the `ada-2-hl7` component the XML Schema is `YATC-internal/ada-2-hl7/xsd/ada-2-hl7-data.xsd`.
* The Schematron Schema for the DSL code. For general engine based components there is only one, which is stored in the `YATC-shared` repository as `YATC-shared/general-engine/sch/general-engine-data.sch`.

To actually link these files to your DSL source code, add the correct `xml-model `processing instructions and `@xsi:schemaLocation` attribute. For instance, the main `ada-2-hl7` DSL source code document `YATC-internal/ada-2-hl7/data/ada-2-hl7-data.xml` starts like this:

```
<?xml-model href="../../../YATC-shared/general-engine/sch/general-engine-data.sch" 
    type="application/xml"
    schematypens="http://purl.oclc.org/dsdl/schematron"?>
<ada-2-hl7-data xmlns="https://nictiz.nl/ns/YATC-internal" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xsi:schemaLocation="https://nictiz.nl/ns/YATC-internal ../xsd/ada-2-hl7-data.xsd" 
    xmlns:xi="http://www.w3.org/2001/XInclude">
    …
```

And include files (in the `data/include/` sub-directory) start like this:

```
<?xml-model href="../../../../YATC-shared/general-engine/sch/general-engine-data.sch"
    type="application/xml"
    schematypens="http://purl.oclc.org/dsdl/schematron"?>
<ada-2-hl7-data xmlns="https://nictiz.nl/ns/YATC-internal" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xsi:schemaLocation="https://nictiz.nl/ns/YATC-internal ../../xsd/ada-2-hl7-data.xsd">
    …
```

-----

## <a name="section-anchor-3"/>Specifying files and directories

When maintaining DSL source code, you'll regularly have to specify documents and directories. In the vast majority of cases, these names are *relative* names. How exactly these relative names are resolved into absolute ones depends:

* Any `@href` attribute points to something in the component directory itself, for instance a processing stylesheet. It is resolved against the location of the DSL code document it is used in.<br/>oXygen tip: Drag a file from your project view into the code to automatically insert a relative path to this file.
* Anything else is relative against the data location we're processing, in `HL7-mappings` or `art_decor`.

Here is a repeat of information regarding this subject that is also present in the data format references:

### <a name="section-anchor-3-1"/><a name="common-attributes"/>Common attributes

The following attributes appear on multiple elements:

| Attribute name | Description | 
| ----- | ----- | 
| `directory` | The URI of a directory, *by default* located *underneath the target directory*.<br/>However, there's magic going on resolving such a directory name. See [below](#resolving-directory-attribute). | 
| `href` | Reference to a file, *by default* situated *in the code repository* itself (for instance a stylesheet). A relative name is resolved against the location of the data document it is in. <br/>An absolute name must start with `file://`. Using this for production code is strongly discouraged, because several people use the system, all with different disk layouts.<br/>For consistency reasons, a leading `#` character will be removed/ignored. This is because `@directory` can also start with a `#`, which gives `@directory` the same base directory as `@href`. See [below](#resolving-directory-attribute). | 

#### <a name="section-anchor-3-1-1"/><a name="resolving-directory-attribute"/>Resolving the `@directory` attribute

In resolving the value of the `@directory` attribute the following magic applies:

* An absolute path must start with `file://` (for instance `directory="file:///C:/some/dir/somefile.xml"`). Using this for production code is *strongly discouraged*, because several people use the system, all with different disk layouts.
* A (straight) relative path is resolved against the *target directory* (usually `…/{application-name}/{version}` or `…/{application-name}/{version}/{usecase}`).
* When its value starts with `#`, it's value is resolved against *the location of the data document* it is in (for instance `directory="#mp/9.0.7/beschikbaarstellen_medicatiegegevens/html_kwal"`). This is used for referencing fixed/constant files that reside in the YATC codebase.
* When its value starts with either `@` or `^`, it is a reference to a *directory identifier* specified in one of the `<setup>` elements (or its children), for this application. This is done using the values of the `@directory-id` attributes. The following rules apply (examples below):
  * When it starts with `@`, this is a reference to the *target* directory for the specified directory identifier.
  * When it starts with `^`, this is a reference to the *source* directory for the specified directory identifier. This is rarely used.


Some examples that reference target directory identifiers:

```
<setup usecase="testusecase" directory-id="tuc">
    …
</setup>            
            
<build name="…">
    …
    <output directory="@tuc/ada_instance"/>
</build>
```

```
<setup usecase="testusecase">
    <copy-data directory-id="tuc-instance">
        …
    </copy-data>
    …
</setup>            
            
<build name="…">
    …
    <output directory="@tuc-instance"/>
</build>
```

In both examples, the value of the `build/output/@directory` attribute will expand to `…/{application-name}/{version}/testusecase/ada_instance`



### <a name="section-anchor-3-2"/><a name="include-exclude"/>The `<include>` and `<exclude>` elements

The `<include>` and `<exclude>` elements define which files will be processed/copied:

* If there are no `<include>` elements, all files are included.
* A file is processed/copied when it's included and not excluded.

```
<include pattern? = xs:string
         glob? = xs:string >
  <!-- Use either @pattern or @glob, not both. -->
</include>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `pattern` | ? | `xs:string` | A regular expression, matched against filenames. For instance `\.xml$` for all XML files. | 
| `glob` | ? | `xs:string` | A (UNIX style) glob matched against filenames. For instance `*.xml` for all XML files. | 

* Matching on patterns or globs is on file*name* only (not on its path).
* Globs can *not* contain character class entries (`[…]`) and other more sophisticated constructs. Therefore, if your name matching gets complicated, you'll have to use patterns, not globs.

The definition of the `<exclude>` element is identical to that of the `<include>` element.

### <a name="section-anchor-3-3"/><a name="debug-tips"/>Debug tip: Find out the absolute directory names used

Sometimes it is handy and insightful to find out exactly what absolute directories/files are addressed. Here is how to do this:

* Set the YATC parameter `storeProcessedApplicationData`to `true` for your local system. For this edit (or create) the `{basedirectory}/data/parameters.xml` document (`{basedirectory}` is the directory where all the YATC repositories (and `HL7-mappings` and `art_decor`) are checked out).<br/>Here is an example of what this looks like:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<parameters xmlns="https://nictiz.nl/ns/YATC-shared" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xsi:schemaLocation="https://nictiz.nl/ns/YATC-shared ../YATC-shared/xsd/parameters.xsd">
   
    …
    
    <parameter name="storeProcessedApplicationData">
        <value>true</value>
    </parameter>

    …

</parameters>
        
```

* Run the YATC command you're interested in. 
* There must now be an additional component directory called `tmp/` with a document called `application-data.xml`. For instance for the `ada-2-hl7` component this is `YATC-internal/ada-2-hl7/tmp/application-data.xml`.
* This document contains the internal representation for the DSL engine after all directory and document references are resolved. You'll find the relevant information in the attributes, sometimes with a slightly different name than the original you're used to and/or starting with an underscore (`_`).

-----

## <a name="section-anchor-4"/>Segmenting builds into actions

In the original Ant processing code, processing for a component/application/version was sometimes subdivided. For instance, for the original `ada_2_hl7/mp/9.3.0`, there were commands for the actual build, validating with XML Schema, validating with Schematron, etc. In YATC these separate commands are moved into what is called *actions*. Using actions for subdividing the processing is optional.

To use actions: 

* Surround the build steps that belong together with an `<action>` element. 
* An action has a mandatory name (`@name` attribute) and optional (but recommend) description (`@description` attribute).
* One of your actions can be defined as the default action by adding `default="true"` as attribute. This action will start if you don't specify a specific action in the conversion command.
* If an action is dependent on other actions to be performed first, specify these in an `@depends-on` attribute. Its value must be a whitespace separated list of other action names.
* By default the setup processing for an application/version is always performed first. However, for some actions, in particular validation, you do not always want this to be done because it will clean everything that was build. For these actions specify `setup="false"` as attribute.<br/>You can always overwrite this behaviour from the command line using the `-setup` flag.

Information on how to work with actions, for instance find out which actions there are or start a specific one, can be found in the [basic command usage](basic-command-usage.md) document.

For an example of an application/version that uses actions have a look at `YATC-internal/ada-2-hl7/data/include/application-mp-9.3.0.xml`.

-----

## <a name="section-anchor-5"/>Using YATC parameters and macros

YATC DSL source code files can reference/use [YATC parameters](parameters-system.md). They also have an additional mechanism called "simple" macros. Unfortunately, for historic reasons, the notation/usage for these two mechanisms differs.

* [YATC parameters](parameters-system.md) are defined outside of the DSL in special [parameter documents](parameters-format-reference.md).<br/>A reference to a YATC parameter is written as `{$parametername}` or `${parametername}`.<br/>To find out which YATC parameters are available, open a command line window and navigate (the current directory) to the component you're interested in. Issue the command `yatc get-parameters` (see also [here](command.md)).
* Simple macros are defined in the DSL document itself, in `<macro>` elements, or automatically generated.<br/>A reference to a simple macro is written as `$macroname`.

To see how the expansion of YATC parameters and simple macros works out, use the mechanism described [here](#debug-tips).

Here is a repeat of information regarding this subject that is also present in the data format references:

### <a name="section-anchor-5-1"/><a name="simple-data-file-macro-expansion"/>Simple macro expansion in data files

Everywhere in an application data file, in attribute values and text, some simple macros will expand. There are a number of predefined ones and you can define your own. For instance, `$APPLICATION` is a predefined macro and will expand to the name of the application (the value of the  `application/@name` attribute). 

A simple macros starts with a `$` sign. They can be used in attribute values and text. To stop a macro from expanding, double the `$` sign (for instance, `$$APPLICATION` will become `$APPLICATION`). 

The following macros are predefined:

| Macro | Description | Value example | 
| ----- | ----- | ----- | 
| `$APPLICATION` | The name of the application (from `application/@name`). | `mp` | 
| `$VERSION` | The version of the application (from `application/@version`). | `9.0.2` | 
| `$USECASE` | Only valid within `<setup>` elements: the name of the current usecase (from `setup/@usecase`). | `beschikbaarstellen_medicatiegegevens` | 
| `$BASEPATH` | The current base path.<br/>Outside a `<setup>` elements this is `$APPLICATION/$VERSION`.<br/>In `<setup>` elements this is `$APPLICATION/$VERSION/$USECASE`. | Outside a `<setup>` element: `mp/9.0.2`<br/>In a `<setup>` element: `mp/9.0.2/beschikbaarstellen_medicatiegegevens` | 

 

There are several locations in an application data file where you can define your own macros. This can be useful when, for instance, you have to pass the same parameter value to a lot of build steps. To define macros, use the `<macros>` element:

```
<macros>
  <macro name="…" value="…">*
</macros>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `macro` | * | Define a macro with a given name (`@name` attribute) and value (`@value` attribute).<br/>The rules for a name are the same as those for an XML element/attribute name. As a guideline, to distinguish it from the surrounding text, use all-uppercase. | 

Macro substitution is recursive, a macro value can contain references to other macros.

-----

## <a name="section-anchor-6"/>Build stylesheets

The original Ant based conversions used a lot of XSLT stylesheets. The same stylesheets are also used in YATC. However, some of them had to be slightly changed. Here is an overview of the changes and some other hints:

* Most stylesheets include other ones, but the directory structure is not always the same as in the original code. Especially generic supporting stylesheets (for instance from the `util/` sub-directory) are in a different location.
* Some stylesheets write multiple result documents using `<xsl:result-document>`. In the original code, the output directory could be specified as a relative filename, because the data locations were next to the stylesheet locations. However, in YATC, data and code are separated, so relative filenames here are no longer possible. Therefore, you'll need to pass the name of the actual output directory from the DSL to the stylesheet and construct the absolute output filenames.<br/>An example of this can be found in `YATC-internal/ada-2-hl7/data/include/application-mp-9.3.0.xml`. Search for `bouwstenen`. The actual stylesheet called here (`YATC-internal/ada-2-hl7/env/mp/9.3.0/xml-voorbeelden/bouwstenen_transacties/bouwstenen_transacties_org.xsl`) uses the `outputDir` parameter to construct a full filename in its `<xsl:result-document>` instructions, for instance `<xsl:result-document href="/bsmve-example-930-1.xml">`.
* The YATC DSL mechanism passes several standard parameters to the stylesheets (whether you use them or not). For the general engine, these can be found in `YATC-shared/general-engine/xslmod/build-standard-parameters.mod.xsl`. If you want to use these parameters, include this file in your stylesheet.
* The `YATC-shared/xslmod/` sub-directory contains general libraries for stylesheets. Most of these are for the DSL processing engine and not very useful in conversion stylesheets. However, there are two that may contain code useful for conversion stylesheets also:
  * `YATC-shared/xslmod/general.mod.xsl`: A function library with generic functions for conversions, error handling, etc. All functions are documented.
  * `YATC-shared/xslmod/href.mod.xsl`: A function library with generic functions for working with filenames. For instance: get the name, path or extension of a full filename, make a name canonical (resolve `.` and `..` parts), etc. All functions are documented.


### <a name="section-anchor-6-1"/>Build stylesheets and fast mode

The `<build>` command (that runs a stylesheet) has the option to run in "fast" mode by setting the attribute `fast="true"`. This applies to situations where multiple input files, for instance the contents of a directory, are transformed using the same stylesheet. By loading and compiling the stylesheet only once, an impressive performance increase was achieved.

The underlying engine for the DSL, XProc, does not do this natively, so we had to fool the XSLT engine a little. What happens is that the actual stylesheet becomes part of (is included in) a small overarching stylesheet. This overarching stylesheet receives the *collection* of input documents when instantiated and runs them through the actual code one by one.

Because of this trick, not all stylesheets can run in fast mode. Referencing the context document in global variables and parameters makes them unsuitable for this. For instance, a stylesheet containing a global parameter defined as `<xsl:param name="doc" select="/"/>` will not run in fast mode because, in fast mode, there is no context document.

Finding out whether or not a stylesheet runs in fast mode is easy:

* Remember that fast mode applies to situations where multiple input documents are converted using the same stylesheet only. Other stylesheet usage will not run faster, probably even slower.
* First try whether your stylesheet runs at all in normal (non-fast) mode. To speed this kind of testing up you can run in test mode (use the `-testmode` flag on the command line, see also [here](basic-command-usage.md)). 
* Set `fast="true"` on the relevant `<build>` element and run it again. If the stylesheet is unsuitable it will produce a nice fat error message. If this does not happen, fast mode can be used.


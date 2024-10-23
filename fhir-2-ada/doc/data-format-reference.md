# Component `YATC-internal/fhir-2-ada` data format reference

This documents the XML format for the `YATC-internal/fhir-2-ada` component's data file in `YATC-internal/fhir-2-ada/data/fhir-2-ada-data.xml`, as used by the `fhir-2-ada` and related commands.

-----

## Table of contents

* [General remarks](#section-anchor-1)
* [Root fhir-2-ada-data element](#section-anchor-2)
  * [The application element](#section-anchor-2-1)
    * [The setup element](#section-anchor-2-1-1)
      * [The copy-data element](#section-anchor-2-1-1-1)
      * [The copy-project-schemas element](#section-anchor-2-1-1-2)
      * [The empty-directory element](#section-anchor-2-1-1-3)
      * [The copy-directory element](#section-anchor-2-1-1-4)
      * [The retrieve element](#section-anchor-2-1-1-5)
      * [The compare-flags attribute](#section-anchor-2-1-1-6)

    * [The action element](#section-anchor-2-1-2)
    * [The build element](#section-anchor-2-1-3)
      * [Building in fast mode](#section-anchor-2-1-3-1)
      * [The parameter element](#section-anchor-2-1-3-2)

    * [The copy element](#section-anchor-2-1-4)
    * [The validate-with-* elements](#section-anchor-2-1-5)
    * [The empty-root-directory element](#section-anchor-2-1-6)

  * [Common definitions](#section-anchor-2-2)
    * [Common attributes](#section-anchor-2-2-1)
      * [Resolving the @directory attribute](#section-anchor-2-2-1-1)

    * [The include and exclude elements](#section-anchor-2-2-2)
    * [Simple macro expansion in data files](#section-anchor-2-2-3)



-----

## <a name="section-anchor-1"/><a name="general-remarks"/>General remarks

* There are two schemas for this document. For full validation both should be applied:
  * XML Schema: `YATC-internal/fhir-2-ada/xsd/fhir-2-ada-data.xsd`
  * Schematron schema: `YATC-shared/general-engine/sch/general-engine-data.sch`

* All elements *must* be in the `https://nictiz.nl/ns/YATC-internal` namespace.
* In some places XInclude processing is allowed, using `<xi:include>` elements. The resulting document (after all XIncludes are dereferenced) must be valid.
* References to [YATC parameters](../../../YATC-shared/doc/parameters-system.md) in text or attribute values (using either `${parname}` or `{$parname}`) will expand. A referenced YATC parameter must exist.
* There are also some more "simple" macros that will expand in an application data file, like `$APPLICATION` and `$VERSION`. See [here](#simple-data-file-macro-expansion) for more information.

-----

## <a name="section-anchor-2"/>Root `<fhir-2-ada-data>` element

```
<fhir-2-ada-data>
  <macros>?
  ( <xi:include href="…"/> |
    <application …> )*
</fhir-2-ada-data>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `macros` | ? | Define simple macros for use in attributes and text. See [simple macro expansion](#simple-data-file-macro-expansion). | 
| `xi:include` |   | Reference to a file to include. | 
| `application` |   | Definition for a single application. | 

### <a name="section-anchor-2-1"/>The `<application>` element

The `<application>` element defines the processing to be performed for a single application/version combination. This is done by specifying the steps that need to be taken (like `<build>`, `<copy>`, etc.) to get to the end result.

Processing for an `<application>` element is as follows:

* Any `<setup>` elements are always processed *first* (unless processing setup was disabled on the command line).
* After the setup, all steps that are a *direct* child of the `<application>` element, if any, are executed.
* After this, the steps in the `<action>` elements, if any, are processed. This is either the default action or the action(s) specified on the command line.

This means that you can specify what needs to be done within an `<application>` element in several ways:

* If your application/version has only one thing to do, for instance "convert something", just specify the steps for this as direct children of the `<application>` element.
* Sometimes however you want to be able to make a choice about what needs to be done, for instance "convert something", "convert something else", "validate the result", etc. In that case define these things in separate `<action>` elements.
* It is possible to combine these two approaches: add steps as direct children of `<application>` *and* use `<action>` elements containing steps. This is more of a side effect of the way the processing takes place, we will have to wait and see whether this is also useful in practice.

 

```
<application name = xs:string
             version = xs:string
             source-project-name? = xs:string
             source-adarefs2ada? = xs:boolean
             source-version? = xs:string >
  <macros>?
  ( <message>? |
    <setup …>? |
    <build …>? |
    <copy …>? |
    <validate-with-schema …>? |
    <validate-with-schematron …>? |
    <empty-root-directory …/>? |
    <action …>? )*
</application>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | 1 | `xs:string` | The name of the application. For instance: `lab`. | 
| `version` | 1 | `xs:string` | The version of the application. For instance: `4.0.0`. | 
| `source-project-name` | ? | `xs:string` | Default: `application/@name`<br/>The name of the project (directory) to be used. | 
| `source-adarefs2ada` | ? | `xs:boolean` | Default: `false`<br/>Whether the source documents for setup come from adarefs2ada computations or straight from the ART-DECOR data. See below. | 
| `source-version` | ? | `xs:string` | Default: `@version`<br/>The version number of the application for getting the source data from. Use only when it's different from `@version`. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `macros` | ? | Define simple macros for use in attributes and text. See [simple macro expansion](#simple-data-file-macro-expansion). | 
| `message` |   | Message which will be output on the console during processing for this application. | 
| `setup` |   | Any setup (data copying) to be done. See [setup element](#setup-element) | 
| `build` |   | Build operations to be performed. See [build element](#build-step) | 
| `copy` |   | Copy operations to be performed. See [copy element](#copy-step) | 
| `validate-with-schema` |   | Validate operation using an W3C XML Schema. See [validate-with-* elements](#validate-with-x-step) | 
| `validate-with-schematron` |   | Validate operation using an ISO Schematron schema. See [validate-with-* elements](#validate-with-x-step) | 
| `empty-root-directory` |   | Defines an empty directory in the application root/main directory. See [empty-root-directory element](#empty-root-directory-element). | 
| `action` |   | Defines the steps to execute for a given action. See [action element](#action-element). | 

Some applications take their input source from data directly retrieved from ART-DECOR and some from `adarefs2ada` post-processing (all done by the `YATC-shared/get-production-ada-instances` component). The `@source-adarefs2ada` attribute takes care of this:

* `source-adarefs2ada="false"`: The source documents are supposed to come straight from ART-DECOR. They're taken from `{$productionAdaInstancesBaseStorageDirectory}/{@name}/{@version}/{$productionAdaInstancesDataSubdir}` (parameters defined in `YATC-shared/data/parameters.xml`).
* `source-adarefs2ada="true"`: The source documents are supposed to come from `adarefs2ada` post-processing. They're taken from the appropriate subdirectories of `{$adarefs2adaBaseStorageDirectory}/{@name}/{@version}/{@usecase}` (parameter defined in `YATC-shared/data/parameters.xml`).

#### <a name="section-anchor-2-1-1"/><a name="setup-element"/>The `<setup>` element

The `<setup>` element defines the data-copying operations to be performed.

```
<setup usecase = xs:string
       directory-id? = identifier
       source-project-name? = xs:string >
  <macros>?
  ( <copy-data …> |
    <copy-project-schemas …> |
    <empty-directory …/> |
    <copy-directory …> |
    <retrieve …/> )*
</setup>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `usecase` | 1 | `xs:string` | Name of the usecase this setup is for. This becomes the name of the subdirectory where the usecase results are stored. | 
| `directory-id` | ? | `identifier` | Defines the identifier for the base usecase directory. See [common attributes](#common-attributes) for a usage example. | 
| `source-project-name` | ? | `xs:string` | Default: `application/@name`<br/>The name of the project (directory) to be used. Overrides a value for this defined on a parent element. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `macros` | ? | Define simple macros for use in attributes and text. See [simple macro expansion](#simple-data-file-macro-expansion). | 
| `copy-data` |   | Copies retrieved ADA documents to application/version specific sub-directories. | 
| `copy-project-schemas` |   | Copies project schemas to application/version specific sub-directories. | 
| `empty-directory` |   | Creates an empty directory (or empties an existing one). | 
| `copy-directory` |   | Copies a directory, optionally with subdirectories, to an application/version specific sub-directory. | 
| `retrieve` |   | Retrieves a single XML document from a REST URL and stores this in an application/version specific sub-directory. | 

Additional remarks:

* Although not strictly necessary (non-existent directories are created by the build steps as well), it is advised that the setup creates *all* directories, empty or not. This ensures that, during the setup process, these directories are emptied. It also allows referring to these directories using the directory identifier mechanism.
* Some components have commands that allow developers to compare the XML results created here against the XML results of the original (Ant based) system. By default, all directories that are created are compared. You can stop this comparison by adding a `compare="false"` attribute. This allows you to add (usually empty) directories for documents that are not created in the original code, like reports. Directories created with `<copy-directory>` are never compared (because this was meant for copying fixed resources).

##### <a name="section-anchor-2-1-1-1"/>The `<copy-data>` element

The `<copy-data>` element defines which files must be copied, and to where.

```
<copy-data target-subdir? = xs:string
           source-subdir? = xs:string
           directory-id? = identifier
           compare? = xs:boolean
           compare-flags? = list of xs:string
           clear-target? = xs:boolean >
  ( <include> |
    <exclude> )*
</copy-data>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `target-subdir` | ? | `xs:string` | Default: `ada_instance`<br/>The name of the sub-directory to copy the data to. | 
| `source-subdir` | ? | `xs:string` | The name of the source sub-directory. Base directory and default depends on the component it is used in. | 
| `directory-id` | ? | `identifier` | Defines the identifier for the target sub-directory. See [common attributes](#common-attributes) for a usage example. | 
| `compare` | ? | `xs:boolean` | Default: `true`<br/>Whether this directory should be included in a comparison with results of the original code. | 
| `compare-flags` | ? | `list of xs:string` | Specific settings for comparing this directory with the results of the original code. See [below](#compare-flags-attribute) for details. | 
| `clear-target` | ? | `xs:boolean` | Default: `true`<br/>Whether to clear the target directory before copying. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `include` |   | Definition of any files to include. See [include/exclude elements](#include-exclude) | 
| `exclude` |   | Definition of any files to exclude. See [include/exclude elements](#include-exclude) | 

##### <a name="section-anchor-2-1-1-2"/>The `<copy-project-schemas>` element

The `<copy-project-schemas>` element defines which schemas (from a project definition) must be copied, and to where. The location for source project files is defined using parameter `projectsBaseStorageDirectory`.

```
<copy-project-schemas target-subdir? = xs:string
                      copy-ada-meta? = xs:boolean
                      source-project-name? = xs:string
                      directory-id? = identifier
                      compare? = xs:boolean
                      compare-flags? = list of xs:string
                      clear-target? = xs:boolean >
  ( <include> |
    <exclude> )*
</copy-project-schemas>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `target-subdir` | ? | `xs:string` | Default: `ada_schemas`<br/>The name of the sub-directory to copy the data to. | 
| `copy-ada-meta` | ? | `xs:boolean` | Default: `true`<br/>Whether to copy the default `ada_meta.xsd` schema also. | 
| `source-project-name` | ? | `xs:string` | Default: `application/@name`<br/>The name of the project (directory) to be used. Overrides a value for this defined on a parent element. | 
| `directory-id` | ? | `identifier` | Defines the identifier for the target sub-directory. See [common attributes](#common-attributes) for a usage example. | 
| `compare` | ? | `xs:boolean` | Default: `true`<br/>Whether this directory should be included in a comparison (with results from the original code). | 
| `compare-flags` | ? | `list of xs:string` | Specific settings for comparing this directory with the results of the original code. See [below](#compare-flags-attribute) for details. | 
| `clear-target` | ? | `xs:boolean` | Default: `true`<br/>Whether to clear the target directory before copying. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `include` |   | Definition of any files to include. See [include/exclude elements](#include-exclude) | 
| `exclude` |   | Definition of any files to exclude. See [include/exclude elements](#include-exclude) | 

##### <a name="section-anchor-2-1-1-3"/>The `<empty-directory>` element

The `<empty-directory>` element creates an empty directory (underneath the setup's main target directory). If such a directory already exists it will be emptied (unless you set `@clear-target="false"`, which will only be necessary in very rare circumstances).

```
<empty-directory target-subdir = xs:string
                 directory-id? = identifier
                 compare? = xs:boolean
                 compare-flags? = list of xs:string
                 clear-target? = xs:boolean />
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `target-subdir` | 1 | `xs:string` | The name of the sub-directory to create. | 
| `directory-id` | ? | `identifier` | Defines the identifier for the empty sub-directory. See [common attributes](#common-attributes) for a usage example. | 
| `compare` | ? | `xs:boolean` | Default: `true`<br/>Whether this directory should be included in a comparison (with results from the original code). | 
| `compare-flags` | ? | `list of xs:string` | Specific settings for comparing this directory with the results of the original code. See [below](#compare-flags-attribute) for details. | 
| `clear-target` | ? | `xs:boolean` | Default: `true`<br/>Whether to clear the target directory. | 

##### <a name="section-anchor-2-1-1-4"/>The `<copy-directory>` element

The `<copy-directory>` element performs a straight copy from one directory to the other, including (optionally) subdirectories.

It was created for copying HTML assets to the result (but can of course also be used for other purposes). When you're copying from a directory in the code repository (which makes sense if it's a set of fixed asset files), use the `#…` notation for the `@directory` attribute. For instance `directory="#mp/9.0.7/beschikbaarstellen_medicatiegegevens/html_instance_kwal/assets"`: the directory name after the `#` is relative to the data file it is used in.

```
<copy-directory target-subdir = xs:string
                directory = xs:string
                recurse? = xs:boolean
                directory-id? = identifier
                clear-target? = xs:boolean >
  ( <include> |
    <exclude> )*
</copy-directory>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `target-subdir` | 1 | `xs:string` | The name of the sub-directory to copy the data to. | 
| `directory` | 1 | `xs:string` | The name of the source directory. See [common attributes](#common-attributes) for special handling. | 
| `recurse` | ? | `xs:boolean` | Default: `true`<br/>Whether to recurse into subdirectories and copy these as well. | 
| `directory-id` | ? | `identifier` | Defines the identifier for the target sub-directory. See [common attributes](#common-attributes) for a usage example. | 
| `clear-target` | ? | `xs:boolean` | Default: `true`<br/>Whether to clear the target directory before copying. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `include` |   | Definition of any files to include. See [include/exclude elements](#include-exclude) | 
| `exclude` |   | Definition of any files to exclude. See [include/exclude elements](#include-exclude) | 

##### <a name="section-anchor-2-1-1-5"/>The `<retrieve>` element

The `<retrieve>` element specifies a single XML document for download from a REST URL.

```
<retrieve target-subdir? = xs:string
          url = xs:anyURI
          name = xs:string
          directory-id? = identifier />
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `target-subdir` | ? | `xs:string` | Default: `ada_instance`<br/>The name of the sub-directory to copy the data to. | 
| `url` | 1 | `xs:anyURI` | The REST URL to use for retrieving the XML document | 
| `name` | 1 | `xs:string` | The filename for the retrieved XML document. | 
| `directory-id` | ? | `identifier` | Defines the identifier for the target sub-directory. See [common attributes](#common-attributes) for a usage example. | 

##### <a name="section-anchor-2-1-1-6"/><a name="compare-flags-attribute"/>The `compare-flags` attribute

The `compare-flags` attribute sets some specific flags for comparing the results of the new with those of the original code. It was introduced because sometimes the code produces documents with generated filenames. These generated names differ between the new and the old code and therefore comparison is not possible. Its contents is a whitespace separated list of zero or more of the following strings:

| Compare flag | Description | 
| ----- | ----- | 
| `no-hex-filenames` | Do not compare files with names that are hexadecimal strings. For instance: `d46e243.xml` | 
| `no-uuid-filenames` | Do not compare files with names that *are* UUIDs. For instance: `4b248570-6aa9-11ec-0000-020000000000.xml` | 
| `no-uuid-containing-filenames` | Do not compare files with names that *contain* UUIDs. For instance: `nl-core-organization-mp9-4b248570-6aa9-11ec-0000-020000000000.xml` | 

#### <a name="section-anchor-2-1-2"/><a name="action-element"/>The `<action>` element

The `<action>` element defines the steps to execute for a named action. 

```
<action name = xs:NCName
        description? = xs:string
        default? = xs:boolean
        depends-on? = list of xs:NCName
        setup? = xs:boolean >
  <macros>?
  ( <message>? |
    <build …>? |
    <copy …>? |
    <validate-with-schema …>? |
    <validate-with-schematron …>? )*
</action>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | 1 | `xs:NCName` | The name of this action. | 
| `description` | ? | `xs:string` | Short description of the action. | 
| `default` | ? | `xs:boolean` | Default: `false`<br/>Whether this action is the default for this application/version. The default action is executed when no other action is specified on the command line. | 
| `depends-on` | ? | `list of xs:NCName` | A whitespace-separated list of action names this action depends on. When this action is executed these dependent actions are executed first (and, recursively, the actions these depend on). | 
| `setup` | ? | `xs:boolean` | Default: `true`<br/>Defines whether this action needs the application setup to be done first or rather not. Setup is usually on, but in some actions you might want to turn it off, for instance when this is a validate-only action and you do not want to build everything every time you're validating.<br/>When multiple actions are specified: if any of the specified action requires a setup, setup will be done.<br/>You can also force whether a setup must be done using the command line with the `-setup` or `-nosetup` option. A command line flag will always take precedence over `@setup` attributes. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `macros` | ? | Define simple macros for use in attributes and text. See [simple macro expansion](#simple-data-file-macro-expansion). | 
| `message` |   | Message which will be output on the console during processing for this action. | 
| `build` |   | Build operations to be performed. See [build element](#build-step) | 
| `copy` |   | Copy operations to be performed. See [copy element](#copy-step) | 
| `validate-with-schema` |   | Validate operation using an W3C XML Schema. See [validate-with-* elements](#validate-with-x-step) | 
| `validate-with-schematron` |   | Validate operation using an ISO Schematron schema. See [validate-with-* elements](#validate-with-x-step) | 

#### <a name="section-anchor-2-1-3"/><a name="build-step"/>The `<build>` element

The `<build>` defines a single build step to be performed as part of an action. A build step is an XSLT transformation performed on one or more input documents.

```
<build name? = xs:string
       fast? = xs:boolean
       silent? = xs:boolean >
  <stylesheet href="…"/>
  ( <input-document directory="…" name="…"/> |
    <input-documents directory="…" accept-empty="…"> |
    <no-input/> )
  ( <output-document directory="…" name="…"/> |
    <output-documents directory="…" result-filename-suffix="…"/> |
    <discard-output/> )
  <parameter …/>*
</build>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | ? | `xs:string` | The name of this build (used for reporting). If nothing is specified, some name will be used. | 
| `fast` | ? | `xs:boolean` | Default: `false`<br/>Whether to run builds with multiple input files in fast mode. See [below](#build-fast-mode). | 
| `silent` | ? | `xs:boolean` | Default: `false`<br/>When using `<input-documents>`: Whether the build should be silent about the name(s) of the input document(s).<br/>Setting this to `true` makes processing much more quiet, but also makes it rather hard to find the name of the input document when something goes wrong. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `stylesheet` | 1 | Defines, with a `@href` attribute (see [common attributes](#common-attributes)) the XSLT stylesheet that will be run over the specified input document(s). | 
| `input-document` |   | Specifies a single input document for this build.<br/>Has a required `@directory` (see [common attributes](#common-attributes)) and `@name`attribute. | 
| `input-documents` |   | Specifies a set of input documents.<br/>Has a required `@directory` attribute (see [common attributes](#common-attributes)) and can have child `<include>` and/or `<exclude>` elements (see [include/exclude elements](#include-exclude)) to further narrow down the set of documents to process.<br/>Set `accept-empty="true"` if you want empty input sets handled without raising an error.<br/>You cannot specify a single output (`<output-document>` element) when specifying multiple input documents, use either `<output-documents>` or `<discard-output>`. | 
| `no-input` |   | Specifies that the stylesheet needs no input document (a small dummy document will be provided). | 
| `output-document` |   | Specifies where the direct output of the stylesheet must be written to. This will always be done using XML serialization.<br/>Has a required `@directory` (see [common attributes](#common-attributes)) and `@name`attribute. | 
| `output-documents` |   | Specifies that all direct outputs of the stylesheet must be written to this location, using the same filename as the input document. Usually used in conjunction with the `<input-documents>` element.<br/>Has a required `@directory` (see [common attributes](#common-attributes)).<br/>If the optional `@result-filename-suffix` attribute contains text, the extension (including the dot) of the original filename is stripped off and the value of `@result-filename-suffix` is suffixed. Example values are `".xsl"` or `"_svrl.xsl"`. | 
| `discard-output` |   | Specifies that the direct output of the stylesheet must be discarded. | 
| `parameter` | * | Defines an additional parameter to be passed to the stylesheet. See [below](#parameter-element). | 

The directory/document for the output(s) is allowed to be the same as the one for the input(s). In the case the input(s) will be overwritten.

Besides direct output, a stylesheet can also produce secondary output(s) using the `<xsl:result-document>` instruction. These outputs will be written to disk, using the serialization options as specified on the `<xsl:result-document>` element.

##### <a name="section-anchor-2-1-3-1"/><a name="build-fast-mode"/>Building in fast mode

Fast mode takes care to compile the stylesheet only once, which, usually, results in much faster processing. This uses a (somewhat dirty) trick:

* A temporary, in-memory, wrapper stylesheet is created that includes (`<xsl:include>`) the actual stylesheet. 
* When started, it gets the full *collection* of documents-to-transform as its input.
* The wrapper stylesheet is started by activating a *named* template (instead of the usual template with `match="/"`).
* This named template iterates over the collection of input documents, calling the actual stylesheet one by one.

It works in most cases, but you have to test it carefully. There are some known situations where fast mode doesn't fly (and there might be more, unkonwn yet):

* When a parameter default (`xsl:param/@select`) or *global* variable value (`/*/xsl:variable/@select`) references the context item `/`.
* When the stylesheet produces additional output documents (`<xsl:result-document>`) with duplicate URIs. This is not allowed in a singular transformation.

##### <a name="section-anchor-2-1-3-2"/><a name="parameter-element"/>The `<parameter>` element

The `<parameter>` element defines an additional parameter to be passed to a stylesheet.

```
<parameter name = xs:NCName
           value? = xs:string
           href? = URI
           directory? = URI
           force-string? = xs:boolean />
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | 1 | `xs:NCName` | The name of the parameter. | 
| `value` | ? | `xs:string` | A (straight) value for the parameter. | 
| `href` | ? | `URI` | A URI as value for the parameter, see [common attributes](#common-attributes). | 
| `directory` | ? | `URI` | A directory as value for the parameter, see [common attributes](#common-attributes). | 
| `force-string` | ? | `xs:boolean` | When `false` (or absent), the system will try to cast a value to the most appropriate data type. When `true`, a value will always be passed as a string. | 

When multiple attributes are present, the processing is in this order:

* When *both*
                `@value` and `@directory` are present, a filename is constructed with `@directory` as the directory (after resolving of directory identifiers and relative path, see [common attributes](#common-attributes)) and `@value` as the filename.
* When `@value` is present, its value will be used for the value of the parameter. If this is `true` or `false`, it will be converted to a boolean parameter (instead of string).
* When `@directory` is present, its absolute value will be used for the value of the parameter (after resolving of directory identifiers and relative path, see [common attributes](#common-attributes)).
* When `@href` is present, its absolute value will be used for the value of the parameter (after resolving a relative path, see [common attributes](#common-attributes)).
* When no attributes are present, the parameter's value will be the empty string.

#### <a name="section-anchor-2-1-4"/><a name="copy-step"/>The `<copy>` element

The `<copy>` element implements a straight copy of files from one directory to another.

```
<copy name? = xs:string
      recurse? = xs:boolean >
  <source directory="…" accept-empty="…">
  <target directory="…"/>
</copy>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | ? | `xs:string` | The name of this copy step (used for reporting). If nothing is specified, some name will be used. | 
| `recurse` | ? | `xs:boolean` | Default: `false`<br/>Whether to copy subdirectories as well. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `source` | 1 | Specifies the set of source files to copy.<br/>Has a required `@directory` attribute (see [common attributes](#common-attributes)) and can have child `<include>` and/or `<exclude>` elements (see [include/exclude elements](#include-exclude)) to further narrow down the set of files to process.<br/>Set `accept-empty="true"` if you want empty input sets handled without raising an error. | 
| `target` | 1 | Specifies the target directory to copy the files to.<br/>Has a required `@directory` attribute (see [common attributes](#common-attributes)). | 

#### <a name="section-anchor-2-1-5"/><a name="validate-with-x-step"/>The `<validate-with-*>` elements

A `<validate-with-*>` element implements validation of the documents produced with one of the following languages:

* W3C XML Schema (`<validate-with-schema>`). This returns a report in [XVRL](https://spec.xproc.org/master/head/xvrl/).
* Schematron (`<validate-with-schematron>`). This returns a report in SVRL.

By default, validation problems/errors do *not* stop processing: errors and problems are reported but processing continues. You can change this behaviour using the `@stop-on-detection` attribute.

```
<validate-with-* name? = xs:string
                 optional? = xs:boolean
                 stop-on-detection? = xs:boolean
                 fast? = xs:boolean
                 continue-on-schematron-error? = xs:boolean
                 fix-global-variables? = xs:boolean >
  <schema href="…">
  ( <input-document directory="…" name="…"/> |
    <input-documents directory="…" accept-empty="…"> )
  <output-report directory="…" name="…" prune-valid="…" sanitize-filenames="…"/>?
</validate-with-*>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | ? | `xs:string` | The name of this validation (used for reporting). If nothing is specified, some name will be used. | 
| `optional` | ? | `xs:boolean` | Default: `false`<br/>When `false`, the schema must exist. When `true` and the schema does not exist, validation is skipped and processing continues. | 
| `stop-on-detection` | ? | `xs:boolean` | Default: `false`<br/>When absent or `false`, validation problems will be reported but processing continues. When `true`, validation problems will stop any further processing.<br/>Remark: detections with a severity `info` are not considered validation problems/errors and will not stop processing. | 
| `fast` | ? | `xs:boolean` | Default: `true`<br/>Schematron validation only. Whether to validate multiple input files in fast mode.<br/>Fast mode takes care to compile the schema only once, which usually results in much faster processing. However, there might be situations where fast mode does not fly, so you can optionally turn it off. | 
| `continue-on-schematron-error` | ? | `xs:boolean` | Default: `false`<br/>Schematron validation only. Whether to continue after detecting a processing or syntax error in the Schematron itself. | 
| `fix-global-variables` | ? | `xs:boolean` | Default: `false`<br/>Schematron validation only. Some (usually generated) Schematron schemas contain multiple global variables with the same name. That is not allowed and breaks processing. If you set this to `true`, an attempt is made to fix this by renaming the invalid global variables. Success not completely guaranteed, test well before going in production! | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `schema` | 1 | Defines, with a `@href` attribute (see [common attributes](#common-attributes)) the Schematron schema to be used. | 
| `input-document` |   | Specifies a single input document for this validation.<br/>Has a required `@directory` (see [common attributes](#common-attributes)) and `@name`attribute. | 
| `input-documents` |   | Specifies a set of input documents to validate.<br/>Has a required `@directory` attribute (see [common attributes](#common-attributes)) and can have child `<include>` and/or `<exclude>` elements (see [include/exclude elements](#include-exclude)) to further narrow down the set of documents to process.<br/>Set `accept-empty="true"` if you want empty input sets handled without raising an error. | 
| `output-report` | ? | If present, all the individual validation reports are wrapped and collected in an XML document, as specified by the `@directory` (see [common attributes](#common-attributes)) and `@name` attributes.<br/>By default, validation reports without errors or warnings are discarded (only an empty element with the URI of the file will remain). Specify `prune-valid="false"` if you want to see all reports (including the reports for the documents that are valid).<br/>The `@sanitize-filenames` attribute turns sanitizing filenames on/off (default: `true`). Sanitizing means the he local part of the filename is removed, leaving only the path in the repository. This hides your disk layout from the generated reports. | 

#### <a name="section-anchor-2-1-6"/><a name="empty-root-directory-element"/>The `<empty-root-directory>` element

The `<empty-root-directory>` element specifies a directory in the application's root/main output directory (in `…/{application}/{version}/`, not adding a usecase sub-directory). If such a directory already exists it will be emptied (unless you set `@clear-target="false"`, which will only be necessary in very rare circumstances).

```
<empty-root-directory target-subdir = xs:string
                      directory-id? = identifier
                      compare? = xs:boolean
                      compare-flags? = list of xs:string
                      clear-target? = xs:boolean />
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `target-subdir` | 1 | `xs:string` | The name of the sub-directory to create. | 
| `directory-id` | ? | `identifier` | Defines the identifier for the sub-directory. See [common attributes](#common-attributes) for a usage example. | 
| `compare` | ? | `xs:boolean` | Default: `true`<br/>Whether this directory should be included in a comparison (with results from the original code). | 
| `compare-flags` | ? | `list of xs:string` | Specific settings for comparing this directory with the results of the original code. See the [description of these attributes](#compare-flags-attribute) for details. | 
| `clear-target` | ? | `xs:boolean` | Default: `true`<br/>Whether to clear the target directory. | 

### <a name="section-anchor-2-2"/>Common definitions

#### <a name="section-anchor-2-2-1"/><a name="common-attributes"/>Common attributes

The following attributes appear on multiple elements:

| Attribute name | Description | 
| ----- | ----- | 
| `directory` | The URI of a directory, *by default* located *underneath the target directory*.<br/>However, there's magic going on resolving such a directory name. See [below](#resolving-directory-attribute). | 
| `href` | Reference to a file, *by default* situated *in the code repository* itself (for instance a stylesheet). A relative name is resolved against the location of the data document it is in. <br/>An absolute name must start with `file://`. Using this for production code is strongly discouraged, because several people use the system, all with different disk layouts.<br/>For consistency reasons, a leading `#` character will be removed/ignored. This is because `@directory` can also start with a `#`, which gives `@directory` the same base directory as `@href`. See [below](#resolving-directory-attribute). | 

##### <a name="section-anchor-2-2-1-1"/><a name="resolving-directory-attribute"/>Resolving the `@directory` attribute

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



#### <a name="section-anchor-2-2-2"/><a name="include-exclude"/>The `<include>` and `<exclude>` elements

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

#### <a name="section-anchor-2-2-3"/><a name="simple-data-file-macro-expansion"/>Simple macro expansion in data files

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


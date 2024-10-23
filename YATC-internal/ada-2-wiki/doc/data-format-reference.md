# Component `YATC-internal/ada-2-wiki` data format reference

This documents the XML format for the `YATC-internal/ada-2-wiki` component's data file in `YATC-internal/ada-2-wiki/data/ada-2-wiki-data.xml`, as used by the `ada-2-wiki` and related commands.

-----

## Table of contents

* [General remarks](#section-anchor-1)
* [Root ada-2-wiki-data element](#section-anchor-2)
* [The application element](#section-anchor-3)
  * [The setup element](#section-anchor-3-1)
    * [The copy-data element](#section-anchor-3-1-1)
    * [The copy-project-schemas element](#section-anchor-3-1-2)
    * [The empty-directory element](#section-anchor-3-1-3)
    * [The copy-directory element](#section-anchor-3-1-4)
    * [The retrieve element](#section-anchor-3-1-5)
    * [The compare-flags attribute](#section-anchor-3-1-6)

  * [The build element](#section-anchor-3-2)
    * [The parameter element](#section-anchor-3-2-1)


* [Common definitions](#section-anchor-4)
  * [Common attributes](#section-anchor-4-1)
    * [Resolving the @directory attribute](#section-anchor-4-1-1)

  * [The include and exclude elements](#section-anchor-4-2)
  * [Simple macro expansion in data files](#section-anchor-4-3)


-----

## <a name="section-anchor-1"/><a name="general-remarks"/>General remarks

* There are two schemas for this document. For full validation both should be applied:
  * XML Schema: `YATC-internal/ada-2-wiki/xsd/ada-2-wiki-data.xsd`
  * Schematron schema: `YATC-internal/ada-2-wiki/sch/ada-2-wiki-data.sch`

* All elements *must* be in the `https://nictiz.nl/ns/YATC-internal` namespace.
* In some places XInclude processing is allowed, using `<xi:include>` elements. The resulting document (after all XIncludes are dereferenced) must be valid.
* References to [YATC parameters](../../../YATC-shared/doc/parameters-system.md) in text or attribute values (using either `${parname}` or `{$parname}`) will expand. A referenced YATC parameter must exist.
* There are also some more "simple" macros that will expand in an application data file, like `$APPLICATION` and `$VERSION`. See [here](#simple-data-file-macro-expansion) for more information.

-----

## <a name="section-anchor-2"/>Root `<ada-2-wiki-data>` element

```
<ada-2-wiki-data>
  ( <xi:include href="…"> |
    <application …> )*
</ada-2-wiki-data>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `xi:include` |   | Reference to a file to include. | 
| `application` |   | Definition for a single application. | 

-----

## <a name="section-anchor-3"/>The `<application>` element

The `<application>` element defines the processing to be performed for a single application/version combination.

The copied and processed/created documents will be stored underneath `{$ada2wikiBaseStorageDirectory}/{@name}/{@version}` (parameter defined in `YATC-internal/ada-2-wiki/data/parameters.xml`).

```
<application name = xs:string
             version = xs:string
             source-project-name? = xs:string
             source-adarefs2ada? = xs:boolean >
  ( <message> |
    <setup …> |
    <build …> )*
</application>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | 1 | `xs:string` | The name of the application. For instance: `lab`. | 
| `version` | 1 | `xs:string` | The version of the application. For instance: `4.0.0`. | 
| `source-project-name` | ? | `xs:string` | Default: `application/@name`<br/>The name of the project (directory) to be used. | 
| `source-adarefs2ada` | ? | `xs:boolean` | Default: `false`<br/>Whether the source documents for setup come from adarefs2ada computations or straight from the ART-DECOR data. See below. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `message` |   | Message which will be output on the console during processing for this application. | 
| `setup` |   | Any setup (data copying) to be done. | 
| `build` |   | Build operations to be performed. | 

Some applications take their input source from data directly retrieved from ART-DECOR and some from adarefs2ada post-processing (all done by the `YATC-shared/get-production-ada-instances` component). The `@source-adarefs2ada` attribute takes care of this:

* `source-adarefs2ada="false"`: The source documents are supposed to come straight from ART-DECOR. They're taken from `{$productionAdaInstancesBaseStorageDirectory}/{@name}/{@version}/{$productionAdaInstancesDataSubdir}` (parameters defined in `YATC-shared/data/parameters.xml`).
* `source-adarefs2ada="true"`: The source documents are supposed to come from adarefs2ada post-processing. They're taken from the appropriate subdirectories of `{$adarefs2adaBaseStorageDirectory}/{@name}/{@version}/{@usecase}` (parameter defined in `YATC-shared/data/parameters.xml`).

### <a name="section-anchor-3-1"/><a name="setup-element"/>The `<setup>` element

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

#### <a name="section-anchor-3-1-1"/>The `<copy-data>` element

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

#### <a name="section-anchor-3-1-2"/>The `<copy-project-schemas>` element

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

#### <a name="section-anchor-3-1-3"/>The `<empty-directory>` element

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

#### <a name="section-anchor-3-1-4"/>The `<copy-directory>` element

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

#### <a name="section-anchor-3-1-5"/>The `<retrieve>` element

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

#### <a name="section-anchor-3-1-6"/><a name="compare-flags-attribute"/>The `compare-flags` attribute

The `compare-flags` attribute sets some specific flags for comparing the results of the new with those of the original code. It was introduced because sometimes the code produces documents with generated filenames. These generated names differ between the new and the old code and therefore comparison is not possible. Its contents is a whitespace separated list of zero or more of the following strings:

| Compare flag | Description | 
| ----- | ----- | 
| `no-hex-filenames` | Do not compare files with names that are hexadecimal strings. For instance: `d46e243.xml` | 
| `no-uuid-filenames` | Do not compare files with names that *are* UUIDs. For instance: `4b248570-6aa9-11ec-0000-020000000000.xml` | 
| `no-uuid-containing-filenames` | Do not compare files with names that *contain* UUIDs. For instance: `nl-core-organization-mp9-4b248570-6aa9-11ec-0000-020000000000.xml` | 

### <a name="section-anchor-3-2"/><a name="build-element"/>The `<build>` element

The `<build>` element defines a build process, based upon the documents copied in the `<setup>` element(s).

The string `$BUILDNAME` will be substituted with the name of the build in all `@name` and `@value` attributes of child elements.

```
<build name? = xs:string >
  <stylesheet href="…">
  <input-document directory="…" name="…">?
  <ada-working-set directory="…">?
  <output directory="…" name="…" compare-as-text="…">
  <parameter …>*
</build>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | ? | `xs:string` | The name of this build (used for reporting). If nothing is specified, some unique name will be used. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `stylesheet` | 1 | Defines, with a `@href` attribute (see [common attributes](#common-attributes)) the XSLT stylesheet that will be run over all the ADA documents specified in the `<input-documents>` element. | 
| `input-document` | ? | Specifies the input document for the build. Has a required `@directory` (see [common attributes](#common-attributes)) and `@name` (the filename) attribute. If not present a small dummy XML document is provided as input. | 
| `ada-working-set` | ? | The build stylesheets often use an "ADA working set": A set of ADA documents to iterate on. This element defines the directory that holds theses documents, using a required `@directory` attribute (see [common attributes](#common-attributes)).<br/>This directory name is passed to the stylesheet, which then accesses these documents using `collection()`. | 
| `output` | 1 | Defines the name of the output file where the WIKI text is written to. Has a required `@directory` (see [common attributes](#common-attributes)) and `@name` (the filename) attribute. The encoding of this file can be set using a parameter, see below.<br/>If, by exception, you don't want the output to get compared by the `compare-ada-2-wiki` command, set the `@compare-as-text` attribute to `false`. | 
| `parameter` | * | Defines an additional parameter to be passed to the stylesheet. See [below](#parameter-element). | 

There is some confusion about the way the WIKI text files must be encoded. The original (Ant based) code used UTF-16BE, but it is not (or no longer) clear why. UTF-8 makes more sense and is probably good enough. Just in case it isn't, the WIKI text file encoding is parametrized using the parameter `ada2wikiTextEncoding`. Most probable values are `UTF-8` or `UTF-16BE`.

#### <a name="section-anchor-3-2-1"/><a name="parameter-element"/>The `<parameter>` element

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

-----

## <a name="section-anchor-4"/>Common definitions

### <a name="section-anchor-4-1"/><a name="common-attributes"/>Common attributes

The following attributes appear on multiple elements:

| Attribute name | Description | 
| ----- | ----- | 
| `directory` | The URI of a directory, *by default* located *underneath the target directory*.<br/>However, there's magic going on resolving such a directory name. See [below](#resolving-directory-attribute). | 
| `href` | Reference to a file, *by default* situated *in the code repository* itself (for instance a stylesheet). A relative name is resolved against the location of the data document it is in. <br/>An absolute name must start with `file://`. Using this for production code is strongly discouraged, because several people use the system, all with different disk layouts.<br/>For consistency reasons, a leading `#` character will be removed/ignored. This is because `@directory` can also start with a `#`, which gives `@directory` the same base directory as `@href`. See [below](#resolving-directory-attribute). | 

#### <a name="section-anchor-4-1-1"/><a name="resolving-directory-attribute"/>Resolving the `@directory` attribute

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



### <a name="section-anchor-4-2"/><a name="include-exclude"/>The `<include>` and `<exclude>` elements

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

### <a name="section-anchor-4-3"/><a name="simple-data-file-macro-expansion"/>Simple macro expansion in data files

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


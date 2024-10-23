# Component `YATC-internal/distribute` data format reference

This documents the XML format for the `YATC-internal/distribute` component's data file in `YATC-internal/distribute/data/distribute-data.xml`, as used by the `distribute` and related commands.

-----

## Table of contents

* [General remarks](#section-anchor-1)
* [Root distribute-data element](#section-anchor-2)
  * [The distribution element](#section-anchor-2-1)
    * [The directory element](#section-anchor-2-1-1)
    * [The file element](#section-anchor-2-1-2)
    * [The additional-text-document element](#section-anchor-2-1-3)
    * [The combine-additional-text-documents element](#section-anchor-2-1-4)
    * [The additional-xml-document element](#section-anchor-2-1-5)
    * [The flatten-* elements](#section-anchor-2-1-6)
      * [Adding additional information during flattening](#section-anchor-2-1-6-1)
      * [The flatten master-document element](#section-anchor-2-1-6-2)
      * [The flatten master-document-directory element](#section-anchor-2-1-6-3)


  * [Simple macro expansion](#section-anchor-2-2)
  * [The include and exclude elements](#section-anchor-2-3)


-----

## <a name="section-anchor-1"/><a name="general-remarks"/>General remarks

* This document must be in the `https://nictiz.nl/ns/YATC-internal` namespace.
* There are two schemas for this document. For full validation both should be applied:
  * `YATC-internal/distribute/xsd/ada-2-fhir-data.xsd`
  * `YATC-internal/distribute/sch/ada-2-fhir-data.sch`

* All elements *must* be in the `https://nictiz.nl/ns/YATC-internal` namespace.
* `<distribution>` elements can be in separate documents, using `<xi:include>` elements in the master document. The resulting document (after all XIncludes are dereferenced) must be valid.
* If the value of any `@source-directory` or `@href-source` is prefixed with a hash (`#`), it is resolved against the location of the document it is specified in. This is useful for referencing documents in the component itself, for instance standard README files.

There are also several macro substitutions you can use in constructing directory and document names:

* References to [YATC parameters](../../../YATC-shared/doc/parameters-system.md) in text or attribute values (using either `${parname}` or `{$parname}`) will expand. A referenced YATC parameter must exist.
* All attributes can contain references to simple macros (see [simple macro expansion](#distribution-macros)). This allows you to, for instance, tailor file and directory names to things like version, date, time, etc.
* Sometimes, the relative path to the target is the same as the relative path to the source. Therefore, in most cases,  you can use the special value `$SOURCE` as the value of  `@target-directory` and `@href-target` attributes. This makes their value equal to that of `@source-directory` or `@href-source`.
* Sometimes the filename of the target document is the same as that of the source document, only their paths differ. For these situations, you can use the special value `$SOURCENAME` in `@href-target` attributes. This will be replaced with the filename from `@href-source`.

-----

## <a name="section-anchor-2"/><a name="distributions"/>Root `<distribute-data>` element

```
<distribute-data source-directory? = xs:anyURI
                 target-directory? = xs:anyURI >
  <macros>?
  <distribution …>*
</distribute-data>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `source-directory` | ? | `xs:anyURI` | Default: `{$yatcInternalDirectory}`<br/>The default source directory for all distributions.<br/>The default value comes from the [YATC parameter](../../../../YATC-shared/doc/parameters-system.md) `yatcInternalDirectory` (defined in `YATC-shared/data/parameters.xml`). | 
| `target-directory` | ? | `xs:anyURI` | Default: `{$publicBaseDistributionDirectory}`<br/>The default target directory for all distributions.<br/>The default value comes from the [YATC parameter](../../../../YATC-shared/doc/parameters-system.md) `publicBaseDistributionDirectory` (defined in `YATC-shared/data/parameters.xml`). | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `macros` | ? | Define simple macros for use in attributes and text. See [simple macro expansion](#distribution-macros). | 
| `distribution` | * | Defines a distribution. See [distribution element](#distribution) | 

 

### <a name="section-anchor-2-1"/><a name="distribution"/>The `<distribution>` element

The `<distribution>` element defines a distribution.

```
<distribution name = xs:string
              description? = xs:string
              source-directory? = xs:anyURI
              target-directory? = xs:anyURI
              href-zip? = xs:anyURI
              base-dir-in-zip? = xs:boolean
              keep-files? = xs:boolean
              allow-overwrite? = xs:boolean
              distribution-version-required? = xs:boolean >
  <macros>?
  ( <message> |
    <directory …> |
    <file …> |
    <additional-text-document …> |
    <combine-additional-text-documents …> |
    <additional-xml-document …> |
    <flatten-stylesheets …> |
    <flatten-schemas …> |
    <flatten-schematrons …> |
    <group source-directory="…" target-directory="…"> )*
</distribution>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | 1 | `xs:string` | The name/identification for this distribution. | 
| `description` | ? | `xs:string` | A short description for this distribution. | 
| `source-directory` | ? | `xs:anyURI` | The default source directory for this distribution.<br/>A relative path will be resolved against the source directory setting of the parent element. | 
| `target-directory` | ? | `xs:anyURI` | The default target directory for this distribution.<br/>A relative path will be resolved against the target directory setting of the parent element. | 
| `href-zip` | ? | `xs:anyURI` | If this attribute is present, a zip file with this distribution is created.<br/>A relative path will be resolved against the target directory setting of the parent element. | 
| `base-dir-in-zip` | ? | `xs:boolean` | Default: `true`<br/>Whether the distribution's base directory will be included as root directory in the zip or not. | 
| `keep-files` | ? | `xs:boolean` | Default: `true`<br/>Whether to keep the output files produced by the distribution.<br/>The reason for this attribute is that you might want a zip file only. In that case, set this attribute to `false` and only the zip file will remain (but don't make the mistake storing the zip file inside the directory tree that is deleted…).<br/>If you do not create a zip file and set this to `false`, nothing will remain, which is not very useful… | 
| `allow-overwrite` | ? | `xs:boolean` | Default: `false`<br/>Whether a distribution (either a directory, a zip file, or both) is allowed to overwrite an already existing one (in the same target directory). This feature was introduced for safety reasons: usually you don't want to accidentally overwrite a distribution that is already out there in the world. If you need to, you have to remove the old distribution explicitly. | 
| `distribution-version-required` | ? | `xs:boolean` | Default: `false`<br/>Whether an explicit distribution-version is required. A distribution-version is defined when creating the distribution (using the distribution command line `-version:…` flag). | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `macros` | ? | Define simple macros for use in attributes and text. See [simple macro expansion](#distribution-macros). | 
| `message` |   | Message which will be output on the console during processing for this distribution. | 
| `directory` |   | Specifies a copy action for a full directory. See [directory element](#distribution-directory). | 
| `file` |   | Specifies a copy action for a single file. See [file element](#distribution-file). | 
| `additional-text-document` |   | Specifies a copy and [simple macro substitutions](#distribution-macros) for an additional text document (for instance a readme file). See [additional-text-document element](#distribution-additional-text-document). | 
| `combine-additional-text-documents` |   | Takes one or more text files, performs [simple macro substitutions](#distribution-macros), and concatenates all processed files into a single target file. See [combine-additional-text-documents element](#distribution-combine-additional-text-documents). | 
| `additional-xml-document` |   | Specifies a copy and [simple macro substitutions](#distribution-macros) for an additional XML document (for instance an XMLdocument with processable version and date/time information). See [additional-xml-document element](#distribution-additional-xml-document). | 
| `flatten-stylesheets` |   | Specifies a flatten stylesheets operation. See [flatten-* elements](#distribution-flatten). | 
| `flatten-schemas` |   | Specifies a flatten XML Schemas operation. See [flatten-* elements](#distribution-flatten). | 
| `flatten-schematrons` |   | Specifies a flatten Schematron Schemas operation. See [flatten-* elements](#distribution-flatten). | 
| `group` |   | Use `<group>` to group sets of actions that have base directories in common. Specify a specific source and/or target base directory using `@source-directory` and `@target-directry` attributes.<br/>The child elements allowed are the same as those of a `<distribution>` element. | 

#### <a name="section-anchor-2-1-1"/><a name="distribution-directory"/>The `<directory>` element

The distribution's `<directory>` element defines a copy operation for a directory.

```
<directory source-directory? = xs:anyURI
           target-directory? = xs:anyURI
           allow-empty? = xs:boolean
           recurse? = xs:boolean
           clear-target? = xs:boolean />
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `source-directory` | ? | `xs:anyURI` | The source directory for this operation.<br/>A relative path will be resolved against the source directory setting of the parent element. | 
| `target-directory` | ? | `xs:anyURI` | The default target directory for this operation.<br/>A relative path will be resolved against the target directory setting of the parent element. | 
| `allow-empty` | ? | `xs:boolean` | Default: `false`<br/>Whether it is allowed that the copy operation copies no files. Otherwise an error is raised. | 
| `recurse` | ? | `xs:boolean` | Default: `true`<br/>Whether sub-directories (recursive) will be copied also. | 
| `clear-target` | ? | `xs:boolean` | Default: `true`<br/>Whether to clear the target directory before copying. Turning this off can be useful when you want to copy from multiple source directories into a single target directory. | 

The element can have child `<include>` and/or `<exclude>` elements (see [include/exclude elements](#include-exclude)) to further narrow down the set of files to copy.

#### <a name="section-anchor-2-1-2"/><a name="distribution-file"/>The `<file>` element

The distribution's `<file>` element defines a copy operation for a single file.

```
<file href-source = xs:anyURI
      href-target = xs:anyURI
      must-exist? = xs:boolean />
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `href-source` | 1 | `xs:anyURI` | The source href for this operation.<br/>A relative path will be resolved against the source directory setting of the parent element. | 
| `href-target` | 1 | `xs:anyURI` | The target href for this operation.<br/>A relative path will be resolved against the target directory setting of the parent element. | 
| `must-exist` | ? | `xs:boolean` | Default: `true`<br/>Whether the file to copy must exist. Otherwise an error is raised. | 

#### <a name="section-anchor-2-1-3"/><a name="distribution-additional-text-document"/>The `<additional-text-document>` element

The distribution's `<additional-text-document>` element defines a copy operation for an additional text document, for instance a readme file. Distribution macro substitution (see [distribution macros](#distribution-macros)) will take place on the file's contents. 

```
<additional-text-document href-source = xs:anyURI
                          href-target = xs:anyURI />
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `href-source` | 1 | `xs:anyURI` | The source href for this operation.<br/>A relative path will be resolved against the source directory setting of the parent element. | 
| `href-target` | 1 | `xs:anyURI` | The target href for this operation.<br/>A relative path will be resolved against the target directory setting of the parent element. | 

#### <a name="section-anchor-2-1-4"/><a name="distribution-combine-additional-text-documents"/>The `<combine-additional-text-documents>` element

The distribution's `<combine-additional-text-documents>` element concatenates one or more additional text documents, for instance readme files. Distribution macro substitution (see [distribution macros](#distribution-macros)) will take place on the contents of all files. 

```
<combine-additional-text-documents href-target = xs:anyURI
                                   separator? = xs:string >
  <text-document href="…">+
</combine-additional-text-documents>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `href-target` | 1 | `xs:anyURI` | The target href for this operation.<br/>A relative path will be resolved against the target directory setting of the parent element. | 
| `separator` | ? | `xs:string` | Default: `$NL$NL$NL`<br/>The separator string in-between the files.<br/>Any substring `$NL` will be changed into a newline. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `text-document` | + | Reference to the text document to combine.<br/>Use the required `@href-source` attribute to specify the href of the document to use. A relative path will be resolved against the target directory setting of the parent element. | 

#### <a name="section-anchor-2-1-5"/><a name="distribution-additional-xml-document"/>The `<additional-xml-document>` element

The distribution's `<additional-xml-document>` element defines a copy operation for an additional XML document, for instance a document with some processable information about the version and date/time of the distribution. Distribution macro substitution (see [distribution macros](#distribution-macros)) will take place on the document's attributes and text nodes. 

```
<additional-xml-document href-source? = xs:anyURI
                         href-target = xs:anyURI >
  <*>
</additional-xml-document>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `href-source` | ? | `xs:anyURI` | The source href for this operation.<br/>A relative path will be resolved against the source directory setting of the parent element. | 
| `href-target` | 1 | `xs:anyURI` | The target href for this operation.<br/>A relative path will be resolved against the target directory setting of the parent element. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `*` | 1 | Optional inline XML document, to use as the XML document to process. | 

The `<additional-xml-document>` can have either an `@href-source` attribute or XML contents, not both.

#### <a name="section-anchor-2-1-6"/><a name="distribution-flatten"/>The `<flatten-*>` elements

The distribution's `<flatten-*>` elements defines a flattening (and copy) operation for either XSLT stylesheets (`<flatten-stylesheets>`), XML Schemas (`<flatten-schemas>`), or Schematron schemas (`<flatten-schematrons>`).

Flattening means:

* All main documents (the ones in the designated source directory) are copied to a target directory.
* The set of included/imported stylesheets from the main documents are identified (recursively), and copied to a sub-directory of the main target directory.
* Name clashes (stylesheets with the same name from different directories) are resolved.
* All include/import elements are changed to reflect the new structure.

```
<flatten-* source-directory? = xs:anyURI
           target-directory? = xs:anyURI
           href-include? = xs:anyURI
           clear-target? = xs:boolean
           add-addional-info? = (list of values) >
  <macros>?
  <master-document …>
  <master-document-directory …>
  <group source-directory="…" target-directory="…">
</flatten-*>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `source-directory` | ? | `xs:anyURI` | The source directory for this operation.<br/>A relative path will be resolved against the source directory setting of the parent element. | 
| `target-directory` | ? | `xs:anyURI` | The default target directory for this operation.<br/>A relative path will be resolved against the target directory setting of the parent element. | 
| `href-include` | ? | `xs:anyURI` | Default: `include`<br/>The name (or path to) the directory where all the included documents (that are not master documents) will be copied to. <br/>A relative path will be resolved against the target directory. | 
| `clear-target` | ? | `xs:boolean` | Default: `true`<br/>Whether to clear the target directory before flattening. | 
| `add-addional-info` | ? | `(list of values)` | Whether to add additional information to all the documents adapted by this flattening process. See [adding additional information](#additional-info). | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `macros` | ? | Define simple macros for use in attributes and text. See [simple macro expansion](#distribution-macros). | 
| `master-document` | 1 | Specifies a single master document for flattening. See [master-document](#flatten-master-document). | 
| `master-document-directory` | 1 | Specifies a directory containing master documents for flattening. See [master-document-directory element](#flatten-master-document-directory). | 
| `group` | 1 | Specifies a specific source and/or target base directory.<br/>The contents of this element is the same as that of a `<flatten-*>` element. Use `<group>` to group sets of documents that have source and/or target directories in common. | 

##### <a name="section-anchor-2-1-6-1"/><a name="additional-info"/>Adding additional information during flattening

Flattening can write additional information in all the documents it processes (the master and the included/imported documents). All information is added at the top of the processed document (before the root element). You can specify this with the `@add-additional-info` attribute. Its value is a whitespace-separated list of values:

| Value | Description | 
| ----- | ----- | 
| `provenance-comment` | Add a comment about the provenance of this file (the path to the source document on the machine the distribution was created on). | 
| `provenance-pi` | Add a processing-instruction about the provenance of this file (the path to the source document on the machine the distribution was created on): `<?yatc-distribution-provenance href="…"?>`. | 
| `distribution-comment` | Add a comment containing the name, version and timestamp of the distribution. | 
| `distribution-pi` | Add a processing-instruction containing the name, version and timestamp of the distribution: `<?yatc-distribution-info name="…" timestamp="…" version="…"?>` (the order of the processing-instruction's pseudo attributes may vary). | 
| `#all` | Add all available additional information, as comments and processing-instructions. | 

##### <a name="section-anchor-2-1-6-2"/><a name="flatten-master-document"/>The flatten `<master-document>` element

The `<master-document>` specifies a single master document for flattening.

```
<master-document href-source = xs:anyURI
                 href-target? = xs:anyURI
                 must-exist? = xs:boolean />
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `href-source` | 1 | `xs:anyURI` | The source href of this master document.<br/>A relative path will be resolved against the source directory setting of the parent element. | 
| `href-target` | ? | `xs:anyURI` | Default: `(filename of @href-source)`<br/>The target href for the flattened version.<br/>A relative path will be resolved against the target directory setting of the parent element. | 
| `must-exist` | ? | `xs:boolean` | Default: `true`<br/>Whether this source file must exist. If not, an error will be raised. | 

##### <a name="section-anchor-2-1-6-3"/><a name="flatten-master-document-directory"/>The flatten `<master-document-directory>` element

The `<master-document-directory>` specifies a directory with master documents for flattening. All flattened documents get the same filename as their source.

```
<master-document-directory source-directory? = xs:anyURI
                           target-directory? = xs:anyURI
                           allow-empty? = xs:boolean
                           recurse? = xs:boolean />
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `source-directory` | ? | `xs:anyURI` | The source directory with the master documents to flatten.<br/>A relative path will be resolved against the source directory setting of the parent element. | 
| `target-directory` | ? | `xs:anyURI` | The target directory for the flattened documents.<br/>A relative path will be resolved against the target directory setting of the parent element. | 
| `allow-empty` | ? | `xs:boolean` | Default: `false`<br/>Whether it is allowed that no master documents (after include/exclude filtering) are specified. Otherwise an error is raised. | 
| `recurse` | ? | `xs:boolean` | Default: `true`<br/>Whether sub-directories (recursive) will be handled also. | 

The element can have child `<include>` and/or `<exclude>` elements (see [include/exclude elements](#include-exclude)) to further narrow down the set of files to copy.

### <a name="section-anchor-2-2"/><a name="distribution-macros"/>Simple macro expansion

Target file names and additional text documents can contain simple macros. All macros start with a `$`. These macros will be replaced by the appropriate values during processing. To stop a macro from expanding, double the `$` sign (for instance, `$$DATEFULL` will become `$DATEFULL`).

The following macros are predefined. When expanding these predefined macros in file/directory name attributes, all characters unsafe for this (for instance `/` or `:`) will be replaced by an underscore (`_`).

| Macro | Description | Value example | 
| ----- | ----- | ----- | 
| `$DISTRIBUTIONNAME` | The name of this distribution (from `distribution/@name`). | `stylesheets` | 
| `$DISTRIBUTIONVERSION` | The distribution-version for this distribution (from the `-version:…` flag on the distribution command line). | `1.2.3` | 
| `$DATETIMEISO` | The full date/time the distribution was created in ISO format (including timezone indicator). | `2023-10-11T14:39:14.5141692+02:00` | 
| `$DATEFULL` | The date the distribution was created, in `yyyy-mm-dd` format. | `2023-10-11` | 
| `$DATECOMPACT` | The date the distribution was created, in `yyyymmdd` format. | `20231011` | 
| `$TIMEFULL` | The time the distribution was created, in `hh:mm:ss` format. | `14:39:14` | 
| `$TIMECOMPACT` | The time the distribution was created, in `hhmmss` format. | `143914` | 
| `$TIMESHORTFULL` | The time the distribution was created, in `hh:mm` format. | `14:39` | 
| `$TIMESHORTCOMPACT` | The time the distribution was created, in `hhmm` format. | `1439` | 

 

There are several locations in a distribution data file where you can define your own macros. This can be useful when, for instance, you use the same file or directory name a lot. To define macros, use the `<macros>` element:

```
<macros>
  <macro name="…" value="…">*
</macros>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `macro` | * | Define a macro with a given name (`@name` attribute) and value (`@value` attribute).<br/>The rules for a name are the same as those for an XML element/attribute name. As a guideline, to distinguish it from the surrounding text, use all-uppercase. | 

Macro substitution is recursive, a macro value can contain references to other macros.

 

Developers remark: If you ever need to change the predefined macro definitions (for instance, add a new one), see `YATC-internal/distribute/xplmod/xsl-distribute.mod/expand-distribution-macros.xsl`.

### <a name="section-anchor-2-3"/><a name="include-exclude"/>The `<include>` and `<exclude>` elements

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


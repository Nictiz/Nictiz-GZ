# The general engine

-----

## Table of contents

* [Introduction](#section-anchor-1)
* [Setting up an application using the general engine](#section-anchor-2)
* [The general engine configuration document](#section-anchor-3)

-----

## <a name="section-anchor-1"/>Introduction

During the development of the YATC components, the progressive insight arose that the parts of the code that drove the transformations was remarkably (but not completely…) alike. The same could be said about the data format. And, as these things go, gradually the insight arose how we could make this more general and share most, if not all, of the code. This culminated in what is now called the *general engine*. For instance, `ada-2-fhir` and `fhir-2-ada` are implemented using this mechanism.

The general engine is a layer on top of already existing general/shared code in YATC-shared. Some features/highlights:

* The batch/shell scrips in a component's `bin/` sub-directory now just call generic batch/shell scripts of the general engine that do the actual work. 
* The format of the component's data file (for instance, have a look at `YATC-internal/ada-2-fhir/data/ada-2-fhir-data.xml`) is standardized, as are the kind of things you can do. But, of course, all the important stuff is there, such as running stylesheets over (sets of) XML documents, validate results, etc.
* This also means that the schema for such a data document *and* the documentation for it is now standardized. 
* Setting up a component using the general engine is made as easy as possible: there's a [template implementation](#template-usage-general-engine) that only needs a few adjustments and off we go! 

Of course, using the general engine does not mean that there is no work to be done for the various applications/versions the component services. There still is and this is usually a lot of work. However the tedious preliminary work setting up pipelines that *drive* the DSL can now be skipped almost completely.

-----

## <a name="section-anchor-2"/><a name="template-usage-general-engine"/>Setting up an application using the general engine

For setting up a component using the general engine there's a template that must be copied and adjusted as follows. As an example, we're going to set up a component named `abc-2-def`. When in doubt, you can always have a look at components that already utilize the general engine, such as `ada-2-fhir` or `fhir-2-ada`.

* Copy and rename the template code:
  * Copy `YATC-shared/general-engine/component-template/`.
  * Paste it as a sub-directory of `YATC-internal`.
  * Rename the result to the name of the component. In our example we should now have a directory called `YATC-internal/abc-2-def/`.

* Check *all* files/documents in the newly created component directory for use of the string `COMPONENT` in their filename and replace this with the name of the component itself.<br/>For instance: `YATC-internal/abc-2-def/bin/help/compare-COMPONENT.help.xml` must be renamed to `YATC-internal/abc-2-def/bin/help/compare-abc-2-def.help.xml`.
* Search *all* files in the newly created component directory for containing the string `COMPONENT` (in all upper-case) and replace this with the name of the component itself. Only replace this string if it's in all upper-case!<br/>Tip: oXygen can find these strings this for you: in the project viewer, right click on the component directory and choose *Find/Replace in Files…*. 
* Search *all* files in the newly created component directory for containing the string `*TBD*`. This marks the locations where some more work is needed, for instance write a short description of the component.<br/>You can delete the comments/lines that contain this `*TBD*` marker.<br/>Tip: see the tip in bullet above.
* Run the documentation generation command: `yatc text-documents-2-markdown`.

 

That should be all! You're now ready to implement the processing for the applications/versions by:

* Filling in the component's DSL source file. In our example: `YATC-internal/abc-2-def/data/abc-2-def-data.xml`. Documentation for its format was automatically generated in `YATC-internal/abc-2-def/doc/data-format-reference.xml`.
* Add all the specific stylesheets and other documents for the applications/versions underneath a `YATC-internal/abc-2-def/env/{application}/{version}` sub-directory.

-----

## <a name="section-anchor-3"/><a name="general-engine-configuration-format"/>The general engine configuration document

The general engine needs a small configuration document that defines the various things that might be different across the components that rely on the general engine.

* A component relying on the general engine *must* have a [YATC parameter](parameters-system.md) named `generalEngineConfiguration` in its `doc/parameters.xml` document. The value of this parameter usually points to a document `data/{component}-general-engine-configuration.xml`.<br/>The value of this parameter is therefore usually `{$yatcComponentDirectory}/data/{$yatcComponentName}-general-engine-configuration.xml`. If you use the [template implementation](#template-usage-general-engine) to set up a general engine component, this YATC parameter is already defined as such.
* Before this configuration document is interpreted by the general engine, its contents is pre-processed and all references to [YATC parameters](parameters-system.md#yatc-parameter-references) are expanded.<br/>Because of this, the [template implementation](#template-usage-general-engine) this configuration document does not need to be changed.
* There is a schema for such a configuration document in `YATC-shared/general-engine/xsd/general-engine-configuration.xsd`. It must be in the `https://nictiz.nl/ns/YATC-shared/general-engine-configuration` namespace.

 

The definition of the general engine configuration document is as follows:

```
<general-engine-configuration>
  <parname-component-data-document>
  <parname-component-base-storage-directory>
  <data-file-schema>
  <data-file-schematron>?
  <original-repo-subdir-name>?
</general-engine-configuration>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `parname-component-data-document` | 1 | The name of the [YATC parameter](parameters-system.md) that points to the component's data document. | 
| `parname-component-base-storage-directory` | 1 | The name of the [YATC parameter](parameters-system.md) that points to the component's base storage directory (where it will write its results). | 
| `data-file-schema` | 1 | The URI of the W3C XML Schema for the component's data document. | 
| `data-file-schematron` | ? | The URI of the Schematron schema for validating the component's data document.<br/>Default value: `YATC-shared/general-engine/sch/general-engine-data.sch`. | 
| `original-repo-subdir-name` | ? | The name of the sub-directory in Hl7-mappings where the original/old Ant based code stores its results. This is used by the compare commands. Example value: `fhir_2_ada`. | 


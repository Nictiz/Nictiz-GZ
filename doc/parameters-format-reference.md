# Parameters XML format reference

Parameters are defined using XML documents in the parameters format.

* The schema for these documents is in `YATC-shared/xsd/parameters.xsd`.
* Documentation of the parameters system in general can be found [here](parameters-system.md).

The parameters format, as described here, has a dual purpose:

* It is meant for the parameters XML documents that define the value(s) for the parameters. Most of these are in `data/parameters.xml` documents.
* Some attributes and elements will be filled in by the system that gathers everything and creates the parameters XML document that applications can work with. You can see this in action using the `get-parameters-xml` command.

-----

## Table of contents

* [Root parameters element](#section-anchor-1)
* [parameter element](#section-anchor-2)
* [sources element](#section-anchor-3)
  * [source element](#section-anchor-3-1)


-----

## <a name="section-anchor-1"/>Root `<parameters>` element

```
<parameters caller-static-base-uri? = xs:anyURI >
  <sources>?
  <parameter>*
</parameters>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `caller-static-base-uri` | ? | `xs:anyURI` | (Filled in by the parameter gathering process)<br/>The base URI of the caller when gathering the parameters. This can be interesting since the set of parameters depends on this location. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `sources` | ? | (Filled in by the parameter gathering process.)<br/>A list of source document URIs for the parameters in the document. | 
| `parameter` | * | Definition of a single parameter. | 

-----

## <a name="section-anchor-2"/>`<parameter>` element

A `<parameter>` element defines the value(s) for a single parameter.

```
<parameter name = xs:NCName
           source-idref? = xs:NCName >
  <value>*
</parameter>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | 1 | `xs:NCName` | The name of the parameter. | 
| `source-idref` | ? | `xs:NCName` | (Filled in by the parameter gathering process.)<br/>The identifier of the `/*/sources/source` element that is the source for this parameter value.<br/>Remark: Some parameters do not have a source because they're created by the parameter gathering process (like `yatcBaseDirectory`. In that case this attribute will be absent | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `value` | * | Contains the (string) value of the parameter. | 

-----

## <a name="section-anchor-3"/>`<sources>` element

The `<sources>` element is a list of source documents for the value(s) of the parameters. All source documents have an identifier. Parameters reference these identifiers with their `@source-idref` attribute. It is filled in/created by the parameter gathering process.

```
<sources>
  <source>*
</sources>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `source` | * | A single source document. | 

### <a name="section-anchor-3-1"/>`<source>` element

```
<source id = xs:NCName >
  <!-- The URI of the source document. -->
</source>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `id` | 1 | `xs:NCName` | The identifier as used by `<parameter>` elements to reference this source | 


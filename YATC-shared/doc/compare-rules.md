# Compare rules

-----

## Table of contents

* [Introduction](#section-anchor-1)
* [The compare rules document format](#section-anchor-2)
* [Developers remarks](#section-anchor-3)

-----

## <a name="section-anchor-1"/>Introduction

Most of the YATC components have a command for comparing the outcome of the old Ant based code with new YATC code. For instance, for the `fhir-2-ada`: `yatc compare-fhir-2-ada`.

However, this comparison cannot always be made directly. Sometimes the generated data contains computed values based on random numbers or identifiers produced by the Saxon processor (the `generate-id()` function). These mechanisms are used, for instance, in generating internal identifiers and UUID values. Different times and different Saxon versions produce different outcomes. And sometimes dates and times are part of the result, which of course also differ over time.

We therefore had to implement a mechanism to stop the comparison from failing in these kinds of situations. This works as follows:

* There's an XML format that defines which elements/attributes should be ignored on comparison. This is called the compare rules format. Its definition can be found [below](#compare-rules-format).
  * There's a schema for this format in `YATC-shared/xsd/compare-rules.xsd`. 
  * The namespace for compare rules documents is `https://nictiz.nl/ns/YATC-shared/compare-rules` (preferred prefix: `yatcs-cr`).

* There are default compare rules (which are in effect if you don't specify anything else) in `YATC-shared/data/default-compare-rules.xml`.
* The compare rules document in effect is defined by the [YATC parameter](parameters-system.md) `yatcDocumentCompareRules`.
  * The main definition for this parameter is in `YATC-shared/data/parameters.xml`. This points to the default compare rules document `YATC-shared/data/default-compare-rules.xml`.
  * If a component needs a different set of compare rules, create a compare rules document for this component (preferably in its `data` sub-directory) and overwrite the `yatcDocumentCompareRules` parameter in the component's YATC parameter file `data/parameters.xml`.


-----

## <a name="section-anchor-2"/><a name="compare-rules-format"/>The compare rules document format

The compare rules format defines which elements, attributes and text nodes must be ignored when comparing documents.

The namespace for compare rules documents is `https://nictiz.nl/ns/YATC-shared/compare-rules` (preferred prefix: `yatcs-cr`).

```
<compare-rules enable-compare? = xs:boolean >
  ( <do-not-compare-text-nodes-on-match simple-match="…" regexp="…"> |
    <do-not-compare-attribute-values-on-match simple-match="…" regexp="…"> |
    <ignore-elements simple-match="…"> |
    <ignore-attributes simple-match="…"> )*
</compare-rules>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `enable-compare` | ? | `xs:boolean` | Default: `true`<br/>Whether to compare *at all*. When `false`, any document pair will always come out as identical, regardless of their contents. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `do-not-compare-text-nodes-on-match` |   | Do not compare text nodes for which the parent element is in the `@simple-match` element list *and* when both their contents matches the `@regexp` regular expression. | 
| `do-not-compare-attribute-values-on-match` |   | Do not compare attribute values for which the attribute is in the `@simple-match` attribute list *and* when both their contents matches the `@regexp` regular expression. | 
| `ignore-elements` |   | Do not compare (completely ignore any difference) elements that match the `@simple-match` element list. | 
| `ignore-attributes` |   | Do not compare (completely ignore any difference) attributes that match the `@simple-match` attribute list. | 

* All simple matches work with local names (so you cannot distinguish between elements/attributes in different namespaces).
* The `@simple-match` attribute for *elements* must contain a whitespace separated list of either the wildcard `*` or the elements local names. For instance: `simple-match="*"` or `simple-match="id value"`.
* The `@simple-match` attribute for *attributes* must contain a whitespace separated list of `{element-local-name}/@{attribute-local-name}`. The wildcard `*` can be used for both local names. For instance: `simple-match="*/@*"` or `simple-match="id/@value value/@*"`.
* The value of the `@regexp` attribute must be a valid XPath regular expression. If this attribute is absent or empty anything matches (equivalent to `regexp=".*"`).

-----

## <a name="section-anchor-3"/>Developers remarks

The *actual* definition of the compare rules format is in the Schema module `YATC-shared/xsdmod/compare-rules.mod.xsd` (which is included by the main compare rules document Schema `YATC-shared/xsd/compare-rules.xsd`). This is done because it's not unlikely that somewhere in the future, we might want to specify compare rules embedded in some other format. The schema for this embedding format can now simply include `compare-rules.mod.xsd` to get its definitions on board. 

To help this further, compare rules can be set up in any namespace. The code that processes this (in `YATC-shared/xslmod/compare.mod.xsl`) makes no distinction in with regard to the namespace of the compare rules. Therefore, if desired, embedded compare rules can be in the namespace of the main, embedding, document.


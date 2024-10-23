# Documentation in YATC

One of the goals of YATC was to provide better documentation than the old system.

This document provides information about how documentation works within YATC. This is important when you want to adjust something, or write a new piece of documentation yourself.

-----

## Table of contents

* [Introduction](#section-anchor-1)
* [Writing YATC text documents and generating Markdown](#section-anchor-2)
* [The YATC text format](#section-anchor-3)
  * [Root element text-document](#section-anchor-3-1)

* [Block markup](#section-anchor-4)
  * [Sections: section](#section-anchor-4-1)
  * [Tables: table](#section-anchor-4-2)
  * [Lists: orderedlist, unorderedlist](#section-anchor-4-3)

* [Inline markup](#section-anchor-5)
* [Element descriptions: element](#section-anchor-6)
  * [Defining attributes: attributes](#section-anchor-6-1)
  * [Defining child elements: children](#section-anchor-6-2)

* [Defining and using macros: macros](#section-anchor-7)

-----

## <a name="section-anchor-1"/>Introduction

There are a number of basic conventions for YATC documentation:

* Documentation is in the English language (so also possible future non-Dutch developers can read it).
* Generic documentation about YATC (like you're reading now) is in the `YATC-shared/doc/` sub-directory.
* All components in `YATC-internal` have a sub-directory called `doc/` for their own documentation.
* The basic format for documentation is [Markdown](https://www.markdownguide.org/).
* Usually a `doc/` sub-directory contains an `index.md` document, that describes the documentation available.

While YATC was being developed, it became clear that Markdown alone was not enough:

* Pieces of text were re-used and Markdown has no include/import mechanism.
* The need arose for more complex documentation, like document element descriptions (see [here](parameters-format-reference.md) for a simple example). The easiest way to create this is to use some (usually proprietary) markup. Markdown has no mechanism for this.
* Things like the [help texts for commands](command-help-texts.md) were already there, using a specific markup. Sometimes you want to include this information in more general documentation. Again, this is not possible in Markdown.
* Sometimes you want a table of contents at the top of the document, with links to the sections. Maintaining this is a bore and error-prone.

To overcome these shortcomings, a proprietary, simple, YATC markup format for text was introduced, with code to generate Markdown from this.

-----

## <a name="section-anchor-2"/>Writing YATC text documents and generating Markdown

For writing YATC text documents:

* Any documentation in the YATC text format must reside in the `doc/src` directory. 
* A YATC text format document must be valid against `YATC-shared/xsd/text-document.xsd`.
* There are lots of fragments of shared texts. These reside in the `YATC-shared/srcmod/` sub-directory.

There are numerous examples in the `doc/src/` sub-directories across the YATC system.

 

Once you've written (or changed) a YATC text document, you have to generate the Markdown from it. For this, issue the command `yatc text-documents-2-markdown`. This will process *all* YATC text documents (in both `YATC-shared` and `YATC-internal`) and generate Markdown from it.

***Remark:*** The `yatc text-documents-2-markdown` command processes *all* YATC text documents, regardless of whether they were changed or not. The unwanted effect is that GIT notices changed files (because their timestamp changed), even when nothing was changed in their contents. A tool like Sourcetree makes this visible. It's your choice whether you want to commit these files or revert their changes. The effect on their contents will of course be the same: nothing.

-----

## <a name="section-anchor-3"/>The YATC text format

* The schema for the YATC text format is in `YATC-shared/xsd/text-document.xsd`
* All markup for the YATC text format must be in the `https://nictiz.nl/ns/YATC-shared/text-document` namespace.
* All references to [YATC parameters](parameters-system.md#yatc-parameter-references) are expanded.

### <a name="section-anchor-3-1"/>Root element `<text-document>`

```
<text-document toc? = xs:boolean >
  <macro>*
  <title>
  <(block markup)>+
</text-document>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `toc` | ? | `xs:boolean` | Default: `true`<br/>Whether to generate a table of contents. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `macro` | * | Define (simple) macros for expansion in text. See [macros](#macros). | 
| `title` | 1 | The title of this document. Can contain [inline markup](#inline-markup). | 
| `(block markup)` | + | The contents of the document, as defined in [block markup](#block-markup). | 

-----

## <a name="section-anchor-4"/><a name="block-markup"/>Block markup

Block markup consists of one or more of the following elements:

```
<…>
  ( <xi:include href="…"> |
    <section> |
    <para> |
    <codeblock language="…" xml:space="…"> |
    <dividerline> |
    <emptyline> |
    <markdown> |
    <subheading> |
    <unorderedlist> |
    <orderedlist> |
    <table> |
    <image href="…" scale="…"> |
    <group> |
    <element> |
    <include-command-help-text href="…"> )
</…>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `xi:include` |   | Reference to a document to include here. | 
| `section` |   | Starts a (sub)section. See [sections](#sections). | 
| `para` |   | A paragraph of text. Can contain [inline markup](#inline-markup). | 
| `codeblock` |   | A block of code.<br/>The `@language` attribute sets the programming language, not sure whether this has any effect on the rendering.<br/>Best to set the `@xml:space` attribute to `"preserve"` to prevent pretty printing ruining your code layout. | 
| `dividerline` |   | Add a horizontal divider line. | 
| `emptyline` |   | Add an empty line (vertical whitespace). | 
| `markdown` |   | Straight Markdown, copied verbatim. | 
| `subheading` |   | A subheading (a heading that does not start a section). | 
| `unorderedlist` |   | Start an unordered (bullet) list. See [lists](#lists). | 
| `orderedlist` |   | Start an ordered (numbered) list. See [lists](#lists). | 
| `table` |   | Start a table. See [tables](#tables). | 
| `image` |   | Inserts an image. The `@scale` attribute can contain any CSS scaling indicator, for instance `"50%"`.<br/>**Watch out:** The resulting Markdown file resides in a different directory than the text document. Make sure the (usually relative) `@href` attribute can be resolved from the Markdown file location! | 
| `group` |   | Generic grouping element, has no effect on the output. Introduced as a root element for include files. Can contain [block markup](#block-markup). | 
| `element` |   | Start an element description. See [element descriptions](#element-descriptions). | 
| `include-command-help-text` |   | Inserts the help text for the given command. | 

### <a name="section-anchor-4-1"/><a name="sections"/>Sections: `<section>`

The `<section>` element is used to divide the text into sections. Sections can be nested.

```
<section>
  <macro>*
  <title>
  <(block markup)>+
</section>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `macro` | * | Define (simple) macros for expansion in text. See [macros](#macros). | 
| `title` | 1 | The title of this section. Can contain [inline markup](#inline-markup). | 
| `(block markup)` | + | The contents of the section, as defined in [block markup](#block-markup). | 

### <a name="section-anchor-4-2"/><a name="tables"/>Tables: `<table>`

Use the `<table>` element to insert a table. Due to the nature of Markdown, the contents of table cells is limited to a single paragraph.

```
<table>
  <header>
  <row>+
</table>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `header` | 1 | The (mandatory) table header. Contains `<entry>>` elements for the table cells. | 
| `row` | + | A table row. Contains `<entry>>` elements for the table cells. | 

 

Both the `<header>` and the `<row>` element must contain one or more `<entry>` elements for the table cells:

```
<entry>
  <para>
</entry>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `para` | 1 | A single paragraph of text. Can contain [inline markup](#inline-markup).<br/>Tip: Use a `<br/>` to insert newlines and simulate multiple paragraphs. | 

### <a name="section-anchor-4-3"/><a name="lists"/>Lists: `<orderedlist>`, `<unorderedlist>`

YATC text has two types of lists: `<orderedlist>` (numbered) and `<unorderedlist>` (bulleted). Due to the nature of Markdown, the contents of list entries is limited to a single paragraph with an optional nested list.

```
<orderedlist>
  <entry>+
</orderedlist>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `entry` | + | An entry in the list. | 

 

```
<entry>
  <para>
  ( <orderedlist> |
    <unorderedlist> )
</entry>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `para` | 1 | A single paragraph of text. Can contain [inline markup](#inline-markup).<br/>Tip: Use a `<br/>` to insert newlines and simulate multiple paragraphs. | 
| `orderedlist` |   | A nested ordered list | 
| `unorderedlist` |   | A nested unordered list | 

The definition for `<unorderedlist>` is identical.

-----

## <a name="section-anchor-5"/><a name="inline-markup"/>Inline markup

YATC text supports the following inline markup:

```
<…>
  ( <code> |
    <emph bold="…" italic="…"> |
    <link href="…"> |
    <anchor name="…"> |
    <br/> |
    <elm> )
</…>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `code` |   | A piece of code, for instance a variable name. | 
| `emph` |   | Emphasize a piece of text. Only bold and italic are supported. Default is italic. | 
| `link` |   | Create a link to something. To link to an anchor (see the `<anchor>` inline element), use `<link href="#{anchorname}">` | 
| `anchor` |   | Define an anchor: a location you can link to using `<link href="#{anchorname}">`. | 
| `br` |   | A line break. | 
| `elm` |   | An element. The text inside is set as in an `<code>` inline element with `<` before and `>` after. | 

-----

## <a name="section-anchor-6"/><a name="element-descriptions"/>Element descriptions: `<element>`

YATC text frequently describes elements. The document you're reading now is a good example of this. To achieve a uniform layout, specific markup is used. An element description consists of:

* A so called "code view": A view of what the element looks like, in a block of code. This is meant to be informative and is `not` well-formed!
* An optional table describing the attributes.
* An optional table describing the child elements.

```
<element name = xs:string >
  <attributes>?
  <children>?
  <additional-text>?
</element>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | 1 | `xs:string` | The name of the element. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `attributes` | ? | Description of the attributes. | 
| `children` | ? | Description of the child elements | 
| `additional-text` | ? | An additional text that will appear as a comment in the element's code view. | 

### <a name="section-anchor-6-1"/>Defining attributes: `<attributes>`

```
<atributes>
  <attribute>*
</atributes>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `attribute` | * | An attribute of the element. | 

 

```
<attribute name = xs:string
           type? = xs:string
           required? = xs:boolean
           default? = xs:string >
  <para>
</attribute>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | 1 | `xs:string` | The name of the attribute. | 
| `type` | ? | `xs:string` | The type of the attribute. | 
| `required` | ? | `xs:boolean` | Default: `false`<br/>Whether the attribute is required. | 
| `default` | ? | `xs:string` | The defaulkt value for the attribute. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `para` | 1 | A single paragraph of text describing the attribute. Can contain [inline markup](#inline-markup).<br/>Tip: Use a `<br/>` to insert newlines and simulate multiple paragraphs. | 

### <a name="section-anchor-6-2"/>Defining child elements: `<children>`

```
<children>
  ( <element> |
    <choice occurrences="…"> )*
</children>
```

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `element` |   | A child element of the element. | 
| `choice` |   | A choice out of several child elements, all defined using nested `<element>` elements.<br/>The `@occurrences` attribute can be either `1` (mandatory), `?` (optional), `*` (zero or more) or `+` (one or more) | 

 

```
<element name = xs:string
         occurrences? = xs:string
         pseudo-attributes? = list of xs:string
         attributes-indicator? = xs:boolean
         comment? = xs:string
         close? = xs:boolean >
  <para>
</element>
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | 1 | `xs:string` | The name of the child element. | 
| `occurrences` | ? | `xs:string` | Default: `1`<br/>The number of occurrences for this child element. Use either `1` (mandatory), `?` (optional), `*` (zero or more) or `+` (one or more) | 
| `pseudo-attributes` | ? | `list of xs:string` | Add these attributes in the code view.<br/>For instance, `<element name="x" pseudo-attributes="a b">` will produce `<x a="…" b="…">`. | 
| `attributes-indicator` | ? | `xs:boolean` | Default: `false`<br/>Add a `…` marker after the child element in the code view, to indicate there are (unmentioned) attributes. | 
| `comment` | ? | `xs:string` | Add this text as a comment to the child element in the code view. | 
| `close` | ? | `xs:boolean` | Default: `false`<br/>Close this element, to indicate it has no further child elements. | 

| Child element | # | Description | 
| ----- | ----- | ----- | 
| `para` | 1 | A single paragraph of text describing the child element. Can contain [inline markup](#inline-markup).<br/>Tip: Use a `<br/>` to insert newlines and simulate multiple paragraphs. | 

-----

## <a name="section-anchor-7"/><a name="macros"/>Defining and using macros: `<macros>`

In several places you can define simple macros using the `<macro>` element. This defines a reusable piece of text. You can reference (expand) a macro using the `$macroname` notation in text.

For instance: at the beginning of the document the following macro is defined: `<macro name="TITLE" value="bla bla bla">`. You can reference this macro in a paragraph: `<para>The title is $TITLE</para>`.

```
<macro name = xs:NCName
       value = xs:string
       default? = xs:string />
```

| Attribute | # | Type | Description | 
| ----- | ----- | ----- | ----- | 
| `name` | 1 | `xs:NCName` | The name of the macro. | 
| `value` | 1 | `xs:string` | The value of the macro. Can contain references to other macros. | 
| `default` | ? | `xs:string` | When the `@value` attribute is the empty string (which might happen due to, for instance, parameter substitutions), this value is used. | 


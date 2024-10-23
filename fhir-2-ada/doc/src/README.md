# Directory `doc/src`

A component `doc/src` directory contains XML documents that follow the schema `YATC-shared/xsd/text-document.xsd`. This a documentation format that is turned into a Markdown file in the `src` directory.

Main drivers for introducing this XML format were the ability for general re-usable text components (you'll find them in `YATC-shared/srcmod/`) and create nicely formatted documentation for specials, like XML elements.

To convert these XML documents into Markdown, utilize the command:

**`yatc text-documents-2-markdown`**

This will convert the documents in *all* `doc/src` directories for all YATC components. 

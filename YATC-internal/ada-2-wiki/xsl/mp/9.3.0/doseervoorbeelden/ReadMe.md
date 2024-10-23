
**Remark:** This readme and the stylesheet are a straight copy from the original in `art_decor/ada_2_wiki`. Not sure whether this is still relevant or even true.

---------------

The XSL ADA2doseer-vbld.xsl will convert all ada_instance XML's in a given folder's subfolders into wiki txt. The given folder is a parameter which defaults to "C:\SVN\art_decor\trunk\ada-data\ada_2_wiki\mp\9.3.0\doseervoorbeelden\ada_instance\". Could not get a relative path to work in file:list. The subfolder names will translate into headers on wiki.

The XSLT relies on functionality not available in Saxon HE (file:list(), file:is-dir()) and can therefore not be integrated in the ant script automation. It needs to be run with a PE or EE version of Saxon. Typically this is done manually using oXygen. Create a transformation scenario, the XSL can be transformed with any input XML (since it is not used in transformation). Store the output in wiki_instance/result.txt .
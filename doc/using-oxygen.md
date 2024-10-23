# YATC - Using oXygen

Most users/developers of the YATC system will use [oXygen](https://www.oxygenxml.com/) as their IDE.

The following oXygen settings are recommended in working with and developing for YATC. oXygen settings can be found in the Options > Preferences menu.

**Important**: The following documentation was made with/for oXygen 26 in 202404. Newer version might do things differently!

------

## oXygen configuration for all users

The following is relevant for *all* users that use oXygen when working with YATC. 

### Pretty printing

YATC has a pretty-print convention for the layout of XML documents (see [coding-conventions.md](coding-conventions.md)).  The following configures oXygen for these conventions:

* Open **Options > Preferences**
  * Go to **Editor / Format**
    * Uncheck "Indent with tabs"
    * Set the "Indent size" to 4 
    * Set the "Line width" to 1000
  * Go to **Editor / Format / XML** and un-check all check-boxes in the "Format" section, *except*: 
    *  "Preserve empty lines"
    *  "Preserve line breaks in attributes"

After you've done this and pretty print a document inside oXygen (ctrl-shift-P), the correct settings should be applied.


### Templates

YATC has a number of templates on board for kick-starting a new file. Using these templates means that, for instance, you don't have to worry about the copyright notice (its included) and the definition of the often used `yatcs` namespace (already defined). 

To get these templates working:

* Open **Options > Preferences**
  * Go to **Document Templates**
    * Press **New**
    * Add the (full path to) `YATC-shared/oxygen/yatc-templates`
  
After you've done this and create a new file inside oXygen, `yatc-templates` should be visible in the list of templates. Choose the right one and off you go.

------

## oXygen configuration for DSL engine maintainers

The following is relevant for those developers only that need to work on the (XProc 3.0) DSL engine itself.

### XProc 3.0 support (for version older than 26.1)

Starting oXygen 26.1 (released March 2024), oXygen supports editing (not running) XProc 3.0 scripts. No further configuration required.

Older versions of oXygen do not support editing  XProc 3.0. This means that it will continuously tease you by proposing no longer relevant XProc 1 elements and tell you things are invalid.

To amend this we have to change several things. First, we have to add an oXygen framework for XProc 3 (included in `YATC-shared`), so it automatically recognizes an XProc 3 document as such. Secondly, we have to turn off the XProc 1 support, because  it remains stubbornly active if you don't.

* Open **Options > Preferences**
  * Go to **Document type associations / Locations**
    * Press **add** 
    * Add the (full path to) `YATC-shared/oxygen/frameworks/`
  * Go to **Document type associations**
    * There should now be an **XProc 3.0** framework visible. Check this if it isn't already.
    * Un-check the **XProc** framework  
  * Go to **File types**
    * Find the entry for the **xpl** extension and change its editor type from XProc into XML
  
XProc documents (in YATC we only use the `xpl` extension) should now validate correctly and no longer show XProc 1 suggestions and help.  


### Using main files

Some files/modules are dependent on others. To let oXygen know this, so they get properly validated in the editor, it has the "main files" mechanism. To enable and configure this:

* Enable for your oXygen project the "Main files support": Right click on the top node of your project tree (in the oXygen's project window) and check "Enable Main Files Support" (if it isn't already). You'll get a green virtual folder called "Main Files" in your project tree. 
* Drag all the files  from the `YATC-shared/oxygen/main-files` directory into this virtual "Main Files" folder.

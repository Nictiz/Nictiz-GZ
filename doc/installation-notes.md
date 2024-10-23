# YATC - Installation notes

This documents the installation procedure for the YATC system. 

It assumes that:
* You have Java installed on your machine
* You have Git installed on your machine (and know the basics of how to use it)
* You have access to GitHub and are able to clone repositories 

See below for an alternative installation procedure if you're unable to install by cloning from GitHub.

The YATC system is currently not meant for use outside of Nictiz.

----------

## YATC installation

This installation procedure is for users *inside* of Nictiz only.

* Designate a directory on your disk as base directory for ***all*** repository clones/checkouts. 
* Checkout/clone, in this base directory, the original repositories:
  * [art_decor](https://github.com/Nictiz/art_decor): `git clone git@github.com:Nictiz/art_decor.git`
  * [HL7-mappings](https://github.com/Nictiz/HL7-mappings): `git clone git@github.com:Nictiz/HL7-mappings.git` 

* Checkout/clone, in this base directory, the following YATC repositories:
  *  [YATC-tools](https://github.com/Nictiz/YATC-tools): `git clone git@github.com:Nictiz/YATC-tools.git` 
  *  [YATC-shared](https://github.com/Nictiz/YATC-shared): `git clone git@github.com:Nictiz/YATC-shared.git` 
  *  [YATC-internal](https://github.com/Nictiz/YATC-internal): `git clone git@github.com:Nictiz/YATC-internal.git` 
* Add the `YATC-shared/bin` directory to your system's path.
  * For Mac users: add the following to `~/.zshrc` (zsh) or `~/.bash_profile`: `export PATH="${PATH}:${HOME}/Development/GitHub/Nictiz/YATC-shared/bin"`

Basic test: open a command window and issue the command: `yatc get-parameters`. This should provide you with an overview of the current parameters (see also [parameters-system.md](parameters-system.md)). 

-----------

## Additional installation and configuration notes

### oXygen

Tuning oXygen helps in working with the YATC system. See [using-oxygen.md](using-oxygen.md).

### Markdown in Chrome

All documentation (like this one) is written (or generated) in [Markdown](https://www.markdownguide.org/). You can tune Chrome to display Markdown files by adding an extension for this. Good results have been achieved with the following:

* Install the Chrome extension "MarkDown Preview Plus" from the [Chrome webstore](https://chrome.google.com/webstore/category/extensions).
* Choose a default theme/CSS to your liking or add & use `YATC-shared/etc/yatc-markdown.css`. This special theme/CSS was created because the provided ones did weird things when anchors were used (of which there are a lot).

### Installation without cloning

It is by far the easiest to install YATC by cloning. Not only are all directory names correct, also updates are easy to install (by pulling).

However, if for some you're reason you're unable to clone, here's an alternative installation procedure. You have to repeat this for all repositories mentioned above:

* Go to the GitHub web page for the repository. You can do this by clicking on the repository name in the list above. For instance: [YATC-shared](https://github.com/Nictiz/YATC-shared)
* Click the `tags` link: on the right side of the screen, underneath `Releases`. It says: `xx tags`
* Download the zip file for the tag with the highest version number
* Unzip this file in the designated base directory
* **Important**: The main/root directory *inside* this zip file has a version/tage number attached. For instance, it might be called `YATC-shared-0.5` for tag `v0.5`.<br/>Don't forget to *remove* this version number from the directory name. For instance, rename `YATC-shared-0.5` to `YATC-shared`.




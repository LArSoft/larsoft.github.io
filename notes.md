# Testing various methods of moving wiki pages from redmine to github

## Things we need

* A Jekyll theme.  First pass is using the minimal theme.  Any theme we choose must allow us to display a logo. 
* We need a few site wide navigation links.  Either in the left sidebar from the minimal theme or across the top.  Can be done with css?
* Will play with themes.  Can only use one at a time.
  * so far, this minimal theme seems to be the only approved (safe) theme that also displays our logo
* Investigation of the [SBN site code](https://github.com/SBNSoftware/SBNSoftware.github.io) is very helpful.  See, for instance, the [navigation header](https://github.com/SBNSoftware/SBNSoftware.github.io/blob/master/_data/navigation.yml)
* Breadcrumbs 
  * See https://github.com/wikimedia/mediawiki-extensions-BreadCrumbs - alas we are not a wikimedia site
  * These are more interesting: 
    * https://blog.benoitblanchon.fr/dead-simple-breadcrumbs-for-github-pages/
    * https://blog.benoitblanchon.fr/semi-automatic-breadcrumbs-for-github-pages/

## Test wiki conversion

Athough it is possible to upload the html and textile files directly,
this site asks you to save the file instead of showing a view.

We have used pandoc to convert files to markdown.
Pandoc does a distinctly better job of converting html than textile.
We have not yet looked for other conversion options.

The html files come with Redmine headers and footers.
It is possible to download the pages individually by hand,
but LArSoft has too many pages for this to be useful.
Instead, we are looking at a script to strip the headers and footers off the files,
either before or after conversion.
* Testing with [convert.pl](convert.pl) [md wiki from html](wiki/LArSoftWiki.md)
* Testing with older [convert.sh](convert.sh) [md wiki from html](wiki4/LArSoftWiki.md)

*  Copying textile pages does not work.
  * Among other things, the internal links are not respected.  This is probably because github uses different textile conventions.
  * Although we can use pandoc to convert from textile to markdown, an excessive amount of editing seems to be required.


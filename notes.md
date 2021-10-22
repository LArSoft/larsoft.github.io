# Testing various methods of moving wiki pages from redmine to github

## Things we need

* A Jekyll theme.  First pass is using the minimal theme.  Any theme we choose must allow us to display a logo. 
* We need a few site wide navigation links.  Either in the left sidebar from the minimal theme or across the top.  Can be done with css?
* Will play with themes.  Can only use one at a time.
* Investigation of the [SBN site code](https://github.com/SBNSoftware/SBNSoftware.github.io) is very helpful.  See, for instance, the [navigation header](https://github.com/SBNSoftware/SBNSoftware.github.io/blob/master/_data/navigation.yml)

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

* Testing - best option so far [md wiki from html](wiki4/LArSoftWiki.md)
  * using convert.sh which is currently available [here](convert.sh)
* Testing [md wiki](wiki1/LArSoftWiki.md) 
  * pages here were converted from textile
  * pandoc -f textile -t markdown -s ../wiki2/Quick_Links.textile -o Quick_Links.md
* Testing [textile wiki](wiki2/LArSoftWiki.textile)
  * As you can see, textile pages are not going to work.
  * Although we can use pandoc to convert from textile to markdown, a lot of hand editing is required.
* Rashly uploading [html files](wiki3/LArSoftWiki)
  * definitely does not work

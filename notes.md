# Testing various methods of moving wiki pages from redmine to github

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

* Testing [md wiki](wiki1/LArSoftWiki.md) 
  * pages here were converted from textile
  * pandoc -f textile -t markdown -s ../wiki2/Quick_Links.textile -o Quick_Links.md
* Testing [textile wiki](wiki2/LArSoftWiki.textile)
  * As you can see, textile pages are not going to work.
  * Although we can use pandoc to convert from textile to markdown, a lot of hand editing is required.
* Rashly uploading [html files](wiki3/LArSoftWiki)
  * definitely does not work
* Testing [md wiki from html](wiki4/LArSoftWiki.md)
  * pandoc -f html -t markdown -s ../wiki2/Quick_Links -o Quick_Links.md
  * Oops, we have a ton of header stuff from redmine.
  * Links need editing from /redmine/.../name to name.md


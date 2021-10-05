
# LArSoft Documentation

This is a test.  This is only a test.

## Test wiki conversion
* [original redmine wiki](https://cdcvs.fnal.gov/redmine/projects/larsoft/wiki)
* Testing [md wiki](wiki1/LArSoftWiki.md) 
  * pages here were converted from textile
  * pandoc -f textile -t markdown -s ../wiki2/Quick_Links.textile -o Quick_Links.md
* Testing [textile wiki](wiki2/LArSoftWiki.textile)
  * As you can see, textile pages are not going to work.
  * Although we can use pandoc to convert from textile to markdown, a lot of hand editing is required.
* Rashly uploading [html files](wiki3/LArSoftWiki)
  * definitely does not work
* Testing [md wiki from html](wiki4/LArSoftWiki.md)
  * Oops, we have a ton of header stuff from redmine.
  * Links need editing from /redmine/.../name to name.md


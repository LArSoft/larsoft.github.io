# How to update the larsoft.github.io wiki pages

Notice that the LArSoft wiki pages are in the wiki subdirectory. 
The top level of the repository is reserved for the index and these instructions about updating the pages.

We recommend editing the wiki pages in place in the [LArsoft github.io repository](https://github.com/LArSoft/larsoft.github.io/wiki)

Editing the files in place allows you to use the preview option.
However, be aware that there are some differences in allowed syntax between Jekyll pages and basic github markdown.

Notice that lines will concatenate unless you put a blank line before any line that should start its own "paragraph".

Bare links will not display properly on the Jekyll pages.
```
at https://github.com/LArSoft/larsoft.github.io/wiki 
```
Instead use the `[]()` format
```
[LArsoft github.io repository](https://github.com/LArSoft/larsoft.github.io/wiki)
```

All links should be https.
Please do not embed email addresses.
We will be using subdirectories within the wiki directory to make support and navigation easier.

It is possible to add a Table of Contents.  This will be placed at the top of the page, BEFORE the page contents.
See this commit to the [Breaking Changes page](https://github.com/LArSoft/larsoft.github.io/commit/9b62ce76d5e15cdecfe53384ca62a498e25064e4) for an example.
An explanation is [here](https://ouyi.github.io/post/2017/12/31/jekyll-table-of-contents.html#generating-the-toc).
Note that the table of contents will not show up in a preview, it will be generated when the page is rendered for display.

We are currently using the Jekyll "minimal" theme.
This theme allows us to use certain style commands for extended functionality.
The style commands do not work in all themes.

* [Notes on github markdown format](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
* [About Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/about-github-pages-and-jekyll)

Once you commit a change, it can take up to 20 minutes before the change is active on the [LArSoft Jekyll pages](https://larsoft.github.io/)
* You will find the upload status in the bottom right corner of [LArSoft github.io](https://github.com/LArSoft/larsoft.github.io)
* The status does not change in real time, you need to refresh the page.
* Possible status types are active, pending, in progress, and failure.
* Note that if the status is "active", that may be for a previous update. You can check by clicking on "github-pages" next to the status report.
* If the upload has failed investigate the failure by clicking on "github-pages" next to the status report.




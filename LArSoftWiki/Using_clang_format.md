
# Using clang format


LArSoft has adopted `clang-format` as a code-formatting tool to ensure a uniform code layout. 

## Using clang format with mrb


## Using clang format with an editor

Although `clang-format` can be made available by explicitly setting up the `clang` UPS product, the recommended way of using `clang-format` is to integrate it into your editor.

### Prerequisites

To use the UPS-provided `clang-format` utility inside the editors, it is necessary that UPS is setup for your file-editing session. If UPS has been setup, then you should see the following when typed in your shell:

    type ups >&amp; /dev/null &amp;&amp; echo UPS available
    UPS available

If UPS is not found or Clang 7 is not installed in the UPS area, then you will not have access to the `clang-format` commands within the editors.

### Supported editors

- **Emacs**

Download [attachment:ups-claing-format-v7.el](ups-clang-format-v7.el) and place it in a directory `<my_dir>`.

Add the following commands to your .emacs file:

    (add-to-list 'load-path "<my_dir>")
    (load "ups-clang-format-v7")

This will allow you to use the `'M-x clang-format-buffer'` and `'M-x clang-format-region'` commands while editing files.

-   **VIM**
    -   Download [attachment:ups-clang-format-v7.vim](ups-clang-format-v7.vim) and place it in your `~/.vim/plugin/` subdirectory.
    -   You can then use `'Ctrl-k'` while editing files to apply `clang-format` to the selected line or region.

## Expected behavior

For the files being edited, the `clang-format` commands will use the `.clang-format` file that is closest to the file. In other words, assume a file has the full path:

    /dir1/dir2/dir3/my_file.cpp

and that each of the directories `dir1`, `dir2`, and `dir3` have `.clang-format` files. `clang-format` will choose the `.clang-format` file located in `dir3` as the style to apply to the code in `my_file.cpp`. If `dir3` does not have a `.clang-format` file, then `clang-format` will search for a `.clang-format` file in `dir2`, and so on. If a `.clang-format` file cannot be found in the directory hierarchy, then `clang-format` applies its own default.


let clang_dir=system("source $($UPS_DIR/bin/ups setup clang v7_0_0) && printf $CLANG_FQ_DIR")

if !v:shell_error
   let g:clang_format_path=clang_dir . '/bin/clang-format'
   let full_name=clang_dir . '/share/clang/clang-format.py'
   map <expr> <C-K> ":pyf " . full_name . "<cr>"
   imap <expr> <C-K> "<c-o>:pyf " . full_name . "<cr>"
endif

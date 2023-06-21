;; Enable clang-format when available via UPS
(setq clang_version "v7_0_0")

(when (= (shell-command (concat "ups list -aK+ " "clang" clang_version ">& /dev/null &&"
                                "source $($UPS_DIR/bin/ups setup clang " clang_version ">& /dev/null")) 0)
  (setq dir (shell-command-to-string "source $($UPS_DIR/bin/ups setup clang " clang_version ") && printf $CLANG_FQ_DIR"))
  (add-to-list 'exec-path (concat dir "/bin"))
  (load (concat dir "/share/clang/clang-format.el"))
  )

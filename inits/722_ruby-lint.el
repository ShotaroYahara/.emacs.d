;;install ：　Gem  install ruby-lint


;;参考:http://futurismo.biz/archives/2213
;; definition for flycheck
(flycheck-define-checker ruby-rubylint
   "A Ruby syntax and style checker using the rubylint tool."
   :command ("ruby-lint" source)
   :error-patterns
   ((warning line-start
             (file-name) ":" line ":" column ": " (or "C" "W") ": " (message)
             line-end)
    (error line-start
           (file-name) ":" line ":" column ": " (or "E" "F") ": " (message)
           line-end))
   :modes (ruby-mode ruby-mode))

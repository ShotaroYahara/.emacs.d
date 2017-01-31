;; インストール設定　してなかったらインストールする
;;　gemも必要らしい => gem install rubocop
(unless (package-installed-p 'rubocop)
  (package-install 'rubocop))

;; robocop-mode
;; 参考：http://futurismo.biz/archives/2213

(require 'rubocop)
(add-hook 'ruby-mode-hook 'rubocop-mode)

(flycheck-define-checker ruby-rubocop
   "A Ruby syntax and style checker using the RuboCop tool."
   :command ("rubocop" "--format" "emacs" "--silent"
             (config-file "--config" flycheck-rubocoprc)
             source)
   :error-patterns
   ((warning line-start
             (file-name) ":" line ":" column ": " (or "C" "W") ": " (message)
             line-end)
    (error line-start
           (file-name) ":" line ":" column ": " (or "E" "F") ": " (message)
           line-end))
    :modes (ruby-mode motion-mode))

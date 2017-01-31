;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'php-completion)
  (package-install 'php-completion))

;;
;; php-completionの設定
;;
;; 参考；http://qiita.com/kyanagimoto/items/8d3c81ae806f74bfae1b
;; php-mode-hook
(add-hook 'php-mode-hook
          (lambda ()
            (require 'php-completion)
            (php-completion-mode t)
            (define-key php-mode-map (kbd "C-o") 'phpcmp-complete)
            (make-local-variable 'ac-sources)
            (setq ac-sources '(
                               ac-source-words-in-same-mode-buffers
                               ac-source-php-completion
                               ac-source-filename
                               ))))

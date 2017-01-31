;; インストール設定　してなかったらインストールする
;; gem install rcodetools  => でインストールする

;;とりあえず設定
;;参考：http://futurismo.biz/archives/2213
;; rcodetools
(require 'rcodetools)
(setq rct-find-tag-if-available nil)
(defun ruby-mode-hook-rcodetools ()
  (define-key ruby-mode-map "\M-\C-i" 'rct-complete-symbol)
   (define-key ruby-mode-map "\C-c\C-t" 'ruby-toggle-buffer)
   (define-key ruby-mode-map "\C-c\C-f" 'rct-ri))
(add-hook 'ruby-mode-hook 'ruby-mode-hook-rcodetools)


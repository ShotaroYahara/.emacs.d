;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'ruby-electric)
  (package-install 'ruby-electric))

;;とりあえず設定
;;参考：http://futurismo.biz/archives/2213
(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))
(setq ruby-electric-expand-delimiters-list nil)

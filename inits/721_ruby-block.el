;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'ruby-block)
  (package-install 'ruby-block))

;;とりあえず設定
;;参考：http://futurismo.biz/archives/2213
;; ruby-block.el --- highlight matching block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

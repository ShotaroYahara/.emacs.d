;;package.el 関連の設定ファイル

;; (require 'package)
;; (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))(p
;; (package-initialize)


;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'use-package)
  (package-install 'use-package))


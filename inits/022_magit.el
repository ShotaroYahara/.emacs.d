;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'magit)
  (package-install 'magit))


;;読み込み設定
(require 'magit)


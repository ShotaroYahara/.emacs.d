
;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'twittering-mode)
  (package-install 'twittering-mode))


;;twittering-modeの設定
(require 'twittering-mode)

;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'auto-highlight-symbol)
  (package-install 'auto-highlight-symbol))


;;シンボルをハイライトしてくれる
(require 'auto-highlight-symbol)
(global-auto-highlight-symbol-mode t)

;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'typescript)
  (package-install 'typescript))

;;参考：https://monolog.linkode.co.jp/articles/kotoh/Emacs%E3%81%ABTypeScript%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83%E3%82%92%E6%A7%8B%E7%AF%89%E3%81%99%E3%82%8B
(require 'typescript)
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))


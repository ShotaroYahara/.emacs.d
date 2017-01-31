;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'scala-mode)
  (package-install 'scala-mode))

;;
;; scala-mode
;;
;; scala-modeの読み込み
(require 'scala-mode)


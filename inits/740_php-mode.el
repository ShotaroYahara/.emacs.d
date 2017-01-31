;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'php-mode)
  (package-install 'php-mode))

;;
;; php-mode
;;
;; php-modeの読み込み
;; 参考；http://qiita.com/kyanagimoto/items/8d3c81ae806f74bfae1b

(require 'php-mode)



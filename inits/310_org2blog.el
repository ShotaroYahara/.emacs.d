 ;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'org2blog)
  (package-install 'org2blog))

;;
;; omnisharp-serverとの連携
;;
;; omnisharpの読み込み
;; 参考；http://blog.tkeo.info/blog/2014/12/10/unity-with-emacs/
(require 'org2blog-autoloads)


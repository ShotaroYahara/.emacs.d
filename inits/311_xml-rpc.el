;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'xml-rpc)
  (package-install 'xml-rpc))

;;
;; omnisharp-serverとの連携
;;
;; omnisharpの読み込み
;; 参考；http://blog.tkeo.info/blog/2014/12/10/unity-with-emacs/
(require 'xml-rpc)

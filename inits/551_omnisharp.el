;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'omnisharp)
  (package-install 'omnisharp))

;;
;; omnisharp-serverとの連携
;;
;; omnisharpの読み込み
;; 参考；http://blog.tkeo.info/blog/2014/12/10/unity-with-emacs/
(require 'omnisharp)
(setq omnisharp-server-executable-path (expand-file-name
                                        "../apps/OmniSharpServer/OmniSharp/bin/Debug/OmniSharp.exe"))

;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'eshell-prompt-extras)
  (package-install 'eshell-prompt-extras))


;; 読み込み設定
(eval-after-load 'esh-opt
  '(progn (require 'eshell-prompt-extras)
          (setq eshell-highlight-prompt nil
                eshell-prompt-function 'epe-theme-lambda)))

;; その他テーマ
;;                eshell-prompt-function 'epe-theme-dakrone)))
;;                eshell-prompt-function 'epe-theme-geoffgarside)))



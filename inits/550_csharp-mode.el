;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'csharp-mode)
  (package-install 'csharp-mode))

;;
;; csharp-mode
;;
;; csharp-modeの読み込み
;; 参考；http://blog.tkeo.info/blog/2014/12/10/unity-with-emacs/
(require 'csharp-mode)
(add-hook 'csharp-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (setq c-basic-offset 4)
             (c-set-offset 'substatement-open 0)
             (flycheck-mode 1)
             (omnisharp-mode)))

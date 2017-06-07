;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'tss)
  (package-install 'tss))

;;参考：https://monolog.linkode.co.jp/articles/kotoh/Emacs%E3%81%ABTypeScript%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83%E3%82%92%E6%A7%8B%E7%AF%89%E3%81%99%E3%82%8B
(require 'tss)
(setq tss-popup-help-key "C-:")
(setq tss-jump-to-definition-key "C->")
(setq tss-implement-definition-key "C-c i")


;; tssをflycheckで使用する
;;　参考:http://qiita.com/tanaka_cpp/items/31a02529bdefa77935f0
;; (tss-config-default)は使わない
;; 中で(add-hook 'after-save-hook 'tss-run-flymake t)されているから
(defun typescript-setup ()
  (setq typescript-indent-level 2)
  (flycheck-mode t)
  (flycheck-typescript-tslint-setup)
  (tss-setup-current-buffer))

(add-hook 'typescript-mode-hook 'typescript-setup)
(add-hook 'kill-buffer-hook 'tss--delete-process t)

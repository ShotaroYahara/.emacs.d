;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'flycheck)
  (package-install 'flycheck))

(unless (package-installed-p 'flycheck-pos-tip)
  (package-install 'flycheck-pos-tip))

;;
;; scala-mode
;;
;; scala-modeの読み込み
;; 参考；http://qiita.com/senda-akiha/items/cddb02cfdbc0c8c7bc2b

(add-hook 'after-init-hook #'global-flycheck-mode)

(eval-after-load 'flycheck
  '(custom-set-variables
   '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

;;
;; ruby-mode
;;
;; ruby-modeの読み込み
;; 参考:http://futurismo.biz/archives/2213

(setq flycheck-check-syntax-automatically '(mode-enabled save))
(add-hook 'ruby-mode-hook 'flycheck-mode)

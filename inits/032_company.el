;; ;; インストール設定　してなかったらインストールする
;; (unless (package-installed-p 'company)
;;   (package-install 'company))

;; ;;参考：http://qiita.com/sune2/items/b73037f9e85962f5afb7
;; ;;
;; ;; company
;; ;;
;; (require 'company)

;; (global-company-mode) ; 全バッファで有効にする 
;; (setq company-idle-delay 0) ; デフォルトは0.5
;; (setq company-minimum-prefix-length 2) ; デフォルトは4
;; (setq company-selection-wrap-around t) ; 候補の一番下でさらに下に行こうとすると一番上に戻る
;; (define-key company-active-map (kbd "C-h") nil)

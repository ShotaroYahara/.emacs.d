;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'js2-mode)
  (package-install 'js2-mode))

;;
;; js2-mode
;;
;; js2-modeの読み込み
;; 参考:http://daifuku-p.org/w/?p=830
;;;js2-modeの設定

(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-mode))

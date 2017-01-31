;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'ruby-refactor)
  (package-install 'ruby-refactor))


;; ruby-refactor
;; 参考：http://futurismo.biz/archives/2213
 (require 'ruby-refactor)
(add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)

;; Extract to Method (C-c C-r e)
;; Extract Local Variable (C-c C-r v)
;; Extract Constant (C-c C-r c)
;; Add Parameter (C-c C-r p)
;; Extract to Let (C-c C-r l)

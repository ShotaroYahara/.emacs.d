;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'robe)
  (package-install 'robe))


;; robe
;; 参考：http://futurismo.biz/archives/2213
(autoload 'robe-mode "robe" "Code navigation, documentation lookup and completion for Ruby" t nil)
(autoload 'robe-ac-setup "robe-ac" "robe auto-complete" nil nil)
(add-hook 'robe-mode-hook 'robe-ac-setup)

;;; 補完以外にも、ドキュメント参照とか、定義ジャンプができるようだ。すごいぞ robe!!
;;; Jump to method definition
;;; Jump to super or a constructor called at point
;;; Jump to a module or class (provided it has at least one method defined)
;;; Display method documentation
;;; Display information about method called at point using ElDoc
;;; Method and constant name completion

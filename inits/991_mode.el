;;
;; 991_mode.el
;; 拡張子によって、モードを切り替える等々のelはこちら
;;

;; markdown-mode
;; (autoload 'markdown-mode "markdown-mode"
;; "Major mode for editing Markdown files" t)
;; (add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))
;; (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
;; (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; C# mode
;; C#の設定が終わるまでとりあえずコメントアウト
;; (autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
;; (setq auto-mode-alist (cons '("\\.cs$" . csharp-mode) auto-mode-alist))

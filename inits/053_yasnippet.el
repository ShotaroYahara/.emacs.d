;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'yasnippet)
  (package-install 'yasnippet))

;;yasnippetの設定
;;参考：http://futurismo.biz/archives/2213
;;rubyスニペット：https://github.com/bmaland/yasnippet-ruby-mode
(require 'yasnippet)
(yas/load-directory "~/.emacs.d/snippets")
(yas-global-mode 1)

;; 既存スニペットを挿入する
(define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)
;; 新規スニペットを作成するバッファを用意する
(define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)
;; 既存スニペットを閲覧・編集する
(define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)

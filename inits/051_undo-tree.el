;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'undo-tree)
  (package-install 'undo-tree))


;; 
;; undo-tree
;;
;; undo-tree を読み込む
(require 'undo-tree)

;; undo-tree を起動時に有効にする
(global-undo-tree-mode t)

;; M-/ をredo に設定する。
(global-set-key (kbd "M-z") 'undo-tree-redo)

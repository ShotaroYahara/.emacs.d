;;キーマップの設定等はここへ

;;20120409 keys form http://www.cozmixng.org/~kou/emacs/dot_emacs 
;;; キーバインド
(define-key global-map "\C-h" 'delete-backward-char) ; 削除
(define-key global-map "\C-z" 'undo)                 ; undo
(define-key global-map "\M-;" 'comment-region)      ; コメントアウト
;;(define-key global-map "\C-;;" 'comment-region)      ; コメントアウト
(define-key global-map "\M-:" 'uncomment-region)    ; コメント解除
;;(define-key global-map "\C-::" 'uncomment-region)    コメント解除

(define-key global-map "\M-n" 'replace-regexp)

;;使うかわからんが、ドイツ語
 ;; (define-key global-map "\C-xa" ?Ä)
 ;; (define-key global-map "\C-:E" "Ë")
 ;; (define-key global-map "\C-:O" "Ö")
 ;; (define-key global-map "\C-:U" "Ü")
 ;; (define-key global-map "\C-:a" "ä")
 ;; (define-key global-map "\C-:e" "ë")
 ;; (define-key global-map "\C-:o" "ö")
 ;; (define-key global-map "\C-:s" "ß")
 ;; (define-key global-map "\C-:u" "ü")


;;; 行の先頭でC-kを一回押すだけで行全体を消去する
(setq kill-whole-line t)

;;; yes or noをy or n
(fset 'yes-or-no-p 'y-or-n-p)

;; オートインデントでスペースを使う
(setq-default indent-tabs-mode nil)

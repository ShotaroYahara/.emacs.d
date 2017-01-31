
(load "move_window_frame")

;;フレームを削除
;;フレームが一個なら、emacsを終了
;; 
(defun my-delete-frame ()
  (interactive)
  (if (null (cdr (frame-list)))
      (save-buffers-kill-terminal)
    (delete-frame)))

;;ウィンドウが一個なら、そのフレームを削除
;;フレームが一個なら、emacsを終了
(defun my-delete-window ()
  (interactive)
  (if (one-window-p)
      (my-delete-frame)
    (delete-window)))

;; windmoveを仕様
;; 参考:http://d.hatena.ne.jp/supermassiveblackhole/20101218/1292665209
;; 反対側のウィンドウにいけるように
(setq windmove-wrap-around t)

(defvar move-window-map (make-keymap))
(define-key global-map "\C-t" move-window-map)

;; window移動
(define-key move-window-map "\C-p" 'my-windmove-up)
(define-key move-window-map "\C-n" 'my-windmove-down)
(define-key move-window-map "\C-f" 'my-windmove-right)
(define-key move-window-map "\C-b" 'my-windmove-left)
(define-key move-window-map "\C-t" 'other-window-or-split)

;;ウィンドウ削除、フレーム削除(単一フレームなら終了）
(define-key move-window-map "\C-c" 'my-delete-window)
(define-key move-window-map "c" 'my-delete-frame)

(define-key move-window-map "\C-w" 'split-window-below)
(define-key move-window-map "\C-h" 'split-window-right)
(define-key move-window-map "\C-a" 'delete-other-window)
(define-key move-window-map "\C-m" 'toggle-frame-fullscreen)

;;フレーム関連の操作 基本的にウィンドウ関連と同じように扱う

(defvar move-frame-map (make-keymap))
(define-key global-map "\M-t" move-frame-map)

(define-key move-frame-map "\M-n" 'make-frame)      ; フレームを新しく作る
(define-key move-frame-map "\M-c" 'my-delete-frame); フレームの削除
(define-key move-frame-map "\M-t" 'my-other-frame)      ; フレーム間移動


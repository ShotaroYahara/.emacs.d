;;ちょっと頭のいい命令をつくるお！
;;windowの数、フレームの数を見て、いろいろする

;; るびきちさん推奨、windowの移動等々
;;　windowが一つなら新しくウィンドを分割して、フレームを移動
;;　通常は通常通りにフレーム移動
(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))

;; framce移動（一個ならmake-frame)
(defun my-other-frame ()
  (interactive)
  (when (null (cdr (frame-list)))
    (my-make-frame))
  (other-frame 1))

;; macOS　Serriaでのmake-frameの挙動がおかしいので統一させる
(defun my-make-frame ()
  (interactive)
  (when (cdr (nth 25 (frame-parameters)))
      (toggle-frame-fullscreen))
       ;;(toggle-frame-fullscreen (make-frame))
       ;;(make-frame)
       ;;(toggle-frame-fullscreen))
    (make-frame))

;; windmove系も作っておくまとめる方法。。。きっとある
(defun my-windmove-up ()
  (interactive)
  (when (one-window-p)
    (split-window-below))
  (windmove-up))
(defun my-windmove-down ()
  (interactive)
  (when (one-window-p)
    (split-window-below))
  (windmove-down))
(defun my-windmove-right ()
  (interactive)
  (when (one-window-p)
    (split-window-right))
  (windmove-right))
(defun my-windmove-left()
  (interactive)
  (when (one-window-p)
    (split-window-right))
  (windmove-left))


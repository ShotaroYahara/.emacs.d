;; パスを通したりそういうの

;;自分で拾ってきた.elファイルの置き場所
(setq load-path
      (append
       (list (expand-file-name "~/.emacs.d/elisp/hand-install")) load-path))

;;自分で書いた.elファイルの置き場所
(setq load-path
      (append
       (list (expand-file-name "~/.emacs.d/elisp/work")) load-path))


(package-initialize)

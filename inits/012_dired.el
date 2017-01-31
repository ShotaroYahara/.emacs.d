
;;dired関連の設定
;;参考：http://qiita.com/l3msh0/items/8665122e01f6f5ef502f


;; diredを2つのウィンドウで開いている時に、デフォルトの移動orコピー先をもう一方のdiredで開いているディレクトリにする
(setq dired-dwim-target t)
;; ディレクトリを再帰的にコピーする
(setq dired-recursive-copies 'always)
;; diredバッファでC-sした時にファイル名だけにマッチするように
(setq dired-isearch-filenames t)


;; .zipで終わるファイルをZキーで展開できるように
;;(add-to-list 'dired-compress-file-suffixes '("\\.zip\\'" ".zip" "unzip"))


;; dired上でzipにする
;;参考；http://stackoverflow.com/questions/1431351/how-do-i-uncompress-unzip-within-emacs

;; (eval-after-load "dired"
;;   '(define-key dired-mode-map "z" 'dired-zip-files))
;; (defun dired-zip-files (zip-file)
;;   "Create an archive containing the marked files."
;;   (interactive "sEnter name of zip file: ")

;;   ;; create the zip file
;;   (let ((zip-file (if (string-match ".zip$" zip-file) zip-file (concat zip-file ".zip"))))
;;     (shell-command 
;;      (concat "zip " 
;;              zip-file
;;              " "
;;              (concat-string-list 
;;               (mapcar
;;                '(lambda (filename)
;;                   (file-name-nondirectory filename))
;;                (dired-get-marked-files))))))

;;   (revert-buffer)

;;   ;; remove the mark on all the files  "*" to " "
;;   ;; (dired-change-marks 42 ?\040)
;;   ;; mark zip file
;;   ;; (dired-mark-files-regexp (filename-to-regexp zip-file))
;;   )

;; (defun concat-string-list (list) 
;;    "Return a string which is a concatenation of all elements of the list separated by spaces" 
;;     (mapconcat '(lambda (obj) (format "%s" obj)) list " "))

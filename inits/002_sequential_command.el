;;;C-aで行頭，ファイル先頭，元の位置を行ったり来たりする．
;;;参考：http://emacs.g.hatena.ne.jp/k1LoW/20101211/1292046538
(package-install 'sequential-command)
(require 'sequential-command)

(define-sequential-command seq-home
  back-to-indentation  beginning-of-line beginning-of-buffer seq-return)
(global-set-key "\C-a" 'seq-home)

(define-sequential-command seq-end
  end-of-line end-of-buffer seq-return)
(global-set-key "\C-e" 'seq-end)

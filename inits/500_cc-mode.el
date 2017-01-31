
(require 'cc-mode)

;; c-mode-common-hook は C/C++,java の設定
(add-hook 'c-mode-common-hook
          (lambda ()
            (setq c-default-style "k&r") ;; カーニハン・リッチースタイル
            (setq indent-tabs-mode nil)  ;; タブは利用しない
            (setq c-basic-offset 4)      ;; indent は 4 スペース
            ))

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

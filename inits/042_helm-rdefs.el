;; helm-rdefs
;; install  => gem install rdefs
;; 参考：http://futurismo.biz/archives/2213
(require 'helm-rdefs)
(add-hook 'ruby-mode-hook
          (lambda ()
            (define-key ruby-mode-map (kbd "C-c @") 'helm-rdefs)))



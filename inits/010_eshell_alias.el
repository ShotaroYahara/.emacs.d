;;eshellのalias
;;汎用的なのはこちらに
;;参考：http://futurismo.biz/archives/3035

(setq eshell-command-aliases-list
        (append
         (list
          (list "ll" "ls -ltr")
          (list "la" "ls -a")
          (list "l" "eshell/less $1"))))

(add-to-list 'eshell-command-aliases-list
             (list "lla" "ls -ltra"))
(add-to-list 'eshell-command-aliases-list
             (list "o" "xdg-open"))
(add-to-list 'eshell-command-aliases-list
             (list "emacs" "find-file $1"))
(add-to-list 'eshell-command-aliases-list
             (list "e" "find-file $1"))
(add-to-list 'eshell-command-aliases-list
             (list "m" "find-file $1"))
(add-to-list 'eshell-command-aliases-list
             (list "mc" "find-file-other-window $1"))
(add-to-list 'eshell-command-aliases-list
             (list "v" "view-file $1"))
(add-to-list 'eshell-command-aliases-list
             (list "vi" "find-file $1"))
(add-to-list 'eshell-command-aliases-list
             (list "vim" "find-file $1"))
(add-to-list 'eshell-command-aliases-list
             (list "d" "dired ."))
(add-to-list 'eshell-command-aliases-list
             (list "sht" "open -g -a Terminal.app $1"))

;;apollon-list

(add-to-list 'eshell-command-aliases-list
             (list "management" "ssh apollon_management"))
(add-to-list 'eshell-command-aliases-list
             (list "apollon" "cd /Users/s_yahara/Documents/apollon"))
(add-to-list 'eshell-command-aliases-list
             (list "web" "cd /Users/s_yahara/Documents/apollon/apollon-web"))
(add-to-list 'eshell-command-aliases-list
             (list "server" "cd /Users/s_yahara/Documents/apollon/apollon-server"))
(add-to-list 'eshell-command-aliases-list
             (list "tocsv" "cd /Users/s_yahara/Documents/apollon/apollon-server/apollon-sqlgen/src/main/resources/csv"))

(add-to-list 'eshell-command-aliases-list
             (list "ops" "cd /Users/s_yahara/Documents/apollon/apollon-ops"))

(add-to-list 'eshell-command-aliases-list
             (list "apinit" ". /Users/s_yahara/Documents/apollon/mycraft/init/init.esh"))

;;eshellのalias
;;汎用的なのはこちらに
;;参考：http://futurismo.biz/archives/3035

(setq eshell-command-aliases-list
        (append
         (list
          (list "ll" "ls -ltr")
          (list "la" "ls -a")
          (list "l" "eshell/less $1")
          (list "lla" "ls -ltra")
          (list "o" "xdg-open")
          (list "emacs" "find-file $1")
          (list "e" "find-file $1")
          (list "m" "find-file $1")

          (list "mc" "find-file-other-window $1")
          (list "v" "view-file $1")
          (list "vi" "find-file $1")
          (list "vim" "find-file $1")
          (list "d" "dired .")
          (list "sht" "open -g -a Terminal.app $1")
          (list "sh" "open -a Terminal.app $1")

          ;;apollon-list
          (list "management" "ssh apollon_management")
          (list "apollon" "cd /Users/s_yahara/Documents/apollon")
          (list "web" "cd /Users/s_yahara/Documents/apollon/apollon-web")
          (list "server" "cd /Users/s_yahara/Documents/apollon/apollon-server")
          (list "tocsv" "cd /Users/s_yahara/Documents/apollon/apollon-server/apollon-sqlgen/src/main/resources/csv")
          (list "ops" "cd /Users/s_yahara/Documents/apollon/apollon-ops")
          (list "apinit" ". /Users/s_yahara/Documents/apollon/mycraft/init/init.esh")

          )))

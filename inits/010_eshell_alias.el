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
          (list "sl" "ls")
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
          ;;;shortcut by directory
          (list "management" "ssh apollon_management")
          (list "apollon" "cd /Users/shotaroyahara/Documents/GTE/apollon")
          (list "mycraft" "cd /Users/shotaroyahara/Documents/GTE/apollon/mycraft")
          (list "apruby" "cd /Users/shotaroyahara/Documents/GTE/apollon/mycraft/ruby")
          (list "apjsx" "cd /Users/shotaroyahara/Documents/GTE/apollon/mycraft/jsx")
          (list "web" "cd /Users/shotaroyahara/Documents//GTE/apollon/apollon-web")
          (list "server" "cd /Users/shotaroyahara/Documents/GTE/apollon/apollon-server")
          (list "client" "cd /Users/shotaroyahara/Documents/GTE/apollon/apollon-client")
          (list "tocsv" "cd /Users/shotaroyahara/Documents/GTE/apollon/apollon-server/apollon-sqlgen/src/main/resources/csv")
          (list "ops" "cd /Users/shotaroyahara/Documents/GTE/apollon/apollon-ops")
          ;;;shell script comand
          (list "apinit" "sh /Users/shotaroyahara/Documents/GTE/apollon/mycraft/init/init.sh")
          (list "aplocal" "sh /Users/shotaroyahara/Documents/GTE/apollon/mycraft/sh/apollonLocalRun.sh")
          (list "apsqlite" "sh /Users/shotaroyahara/Documents/GTE/apollon/mycraft/sh/makesqlite.sh")
          )))

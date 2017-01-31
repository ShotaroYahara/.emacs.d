;; インストール設定　してなかったらインストールする
(unless (package-installed-p 'helm-ag)
  (package-install 'helm-ag))

;;
;; helm-ag
;;
;; helm-agの読み込み
;; 参考：https://monolog.linkode.co.jp/articles/kotoh/Emacs%E3%81%A7helm%E3%82%92%E4%BD%BF%E3%81%86
(require 'helm-ag)
(setq helm-ag-base-command "ag --nocolor --nogrou")
(global-set-key (kbd "C-c s") 'helm-ag)

;;eshell関連の操作をちょこちょこと…

;;パスの共有
;;参考：http://syohex.hatenablog.com/entry/20130718/1374154709
;; load environment variables
;; 追記 GEMに関する環境変数を設定すると rbenv経由で rubyがうまく使えなかったので削除
(package-install 'exec-path-from-shell)
(require 'exec-path-from-shell)
(let ((envs '("PATH" "VIRTUAL_ENV" "GOROOT" "GOPATH")))
  (exec-path-from-shell-copy-envs envs))
;;eshell 設定あれこれ
;;参考：http://d.hatena.ne.jp/a666666/20110222/1298345699

;; 補完時に大文字小文字を区別しない
(setq eshell-cmpl-ignore-case t)
;; 確認なしでヒストリ保存
(setq eshell-ask-to-save-history (quote always))
;; 補完時にサイクルする
(setq eshell-cmpl-cycle-completions nil)
;;補完候補がこの数値以下だとサイクルせずに候補表示
(setq eshell-cmpl-cycle-cutoff-length 5)

;; 履歴で重複を無視する
(setq eshell-hist-ignoredups t)

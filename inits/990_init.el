;;emacsが通常開いた時になっていてほしい状態の設定あれこれ

;;;初期画面の設定
;; フルスクリーン
;;;参考：http://qiita.com/sho7650/items/ebb7f2c35e6d9619e5d5
;;(set-frame-parameter nil 'fullscreen 'fullboth)
;;トグルでなんとかなるらしいので
(toggle-frame-fullscreen)

;;;初期画面を白紙にする．
;;;参考：http://vogel.at.webry.info/201306/article_14.html
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;;;背景色の設定
;;;参考：http://kei10in.hatenablog.jp/entry/20101101/1288617632
(custom-set-faces
 '(default
    ((t (:background "black" :foreground "#55FF55")
     ))))

'(cursor((((class color)
            (background dark)
            )
          (:background "#00AA00")
          )
          (((class color)
            (background light)
            )
           (:background "#999999")
           )
          (t ()
             )
          )
        )

;;; 対応する括弧を光らせる。
(show-paren-mode 1)

;;; ツールバーを消す
(tool-bar-mode 0)

;;; カーソルの点滅を止める
(blink-cursor-mode 0)
;;; カーソルの位置が何文字目かを表示する
(column-number-mode t)
;;; カーソルの位置が何行目かを表示する
(line-number-mode t)

;;; スクロールを一行ずつにする
(setq scroll-step 1)
;;; スクロールバーを右側に表示する
(set-scroll-bar-mode 'right)

;;; バッファの最後でnewlineで新規行を追加するのを禁止する
(setq next-line-add-newlines nil)

;;; 最終行に必ず一行挿入する
(setq require-final-newline t)

;;; 一行が 80 字以上になった時には自動改行する
(setq fill-column 80)
(setq-default auto-fill-mode t)

;;; タイトルバーにファイル名を表示する
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))

;;; モードラインに時間を表示する
(display-time)

;;; 行末の空白を強調表示
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "#b14770")

;; モードラインに行番号表示
(line-number-mode t)

;; モードラインに列番号表示
(column-number-mode t)

;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;;;ウィンドウを分割し、下４行分にeshellを起動
;;;参考：http://d.hatena.ne.jp/kaosf/20110614/1308065265
(add-hook 'after-init-hook (lambda()
    (setq w (selected-window))
    (setq w2 (split-window w (- (window-height w) 4)))
    (select-window w2)
    (eshell)
    (select-window w)
    ))

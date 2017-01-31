;;ruby-mode自体は標準っぽい
;;enhanced-ruby-modeってのもあるらしいがとりあえずほっとく
;;ruby-環境参考:http://futurismo.biz/archives/2213

;;拡張子.rb と接頭語 Capfile,Gemfile を Ruby ファイルと認識させる.
(autoload 'ruby-mode "ruby-mode"
   "Mode for editing ruby source files" t)
  (add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("[Rr]akefile$" . ruby-mode))


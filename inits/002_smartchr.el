;;キー入力を良きに計らってくれる

;;(package-install 'smartchr)では入らないので、gitから落として来ましょう（汗
;;smartchr:https://github.com/imakado/emacs-smartchr
(require 'smartchr)

(global-set-key (kbd "=") (smartchr '(" = " " == " " === ")))


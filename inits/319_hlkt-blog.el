;;hlktブログの設定をかくやつ

(setq org2blog/wp-blog-alist
      '(("wordpress"
         :url "http://hlkt-kobo.net/xmlrpc.php"
         :username "terawiseman"
         :password "jwlp719tera"
         :default-title "Hello World"
         :default-categories ("org2blog" "emacs")
         :tags-as-categories nil)
         ))

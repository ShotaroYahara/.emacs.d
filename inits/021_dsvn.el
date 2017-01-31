;; インストール設定
(unless (package-installed-p 'dsvn)
  (package-install 'dsvn))


;;設定はこれだけと聞いております（汗
;;参考：http://hamaco.hatenablog.jp/entry/20090218/1234962837
;;参考：http://openlab.dino.co.jp/2008/04/23/185154236.html

(autoload 'svn-status "dsvn" "Run `svn status'." t)
(autoload 'svn-update "dsvn" "Run `svn update'." t)

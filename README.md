xproc-mode
==========
An XProc mode for Emacs

Dependencies
------------
* nxml-mode
* auto-complete
* auto-complete-nxml
* yasnippet

Build
-----
```sh
make
```

Setup
-----
```lisp
(add-to-list 'load-path "/path/to/xproc-mode")
(autoload 'xproc-mode "xproc-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.xpl$" . xproc-mode))
(eval-after-load 'xproc-mode
  '(progn
    (push "/path/to/xproc-mode/schema/schemas.xml" rng-schema-locating-files)
    (push "/path/to/xproc-mode/snippets" yas/snippet-dirs)
    (yas-reload-all)
    (add-hook 'xproc-mode-hook
      (lambda ()
        (setq ac-sources '(ac-source-xproc-tag
                           ac-source-nxml-attr
                           ac-source-nxml-attr-value))
        (auto-complete-mode t)
        (yas-minor-mode)))))
```

el-get recipe:

```lisp
(:name xproc-mode
       :type git
       :url "http://github.com/bertfrees/xproc-mode.git"
       :checkout "alpha"
       :depends (auto-complete)
       :prepare (autoload 'xproc-mode "xproc-mode" nil t))
```

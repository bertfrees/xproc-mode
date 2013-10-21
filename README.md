[xproc-mode][]
==============
An XProc mode for Emacs.

Dependencies
------------
* [nxml-mode][]
* [auto-complete][]
* [auto-complete-nxml][]
* [yasnippet][]

Installation
------------
### Manual installation
Clone xproc-mode, build with `make`, and add the root directory to your load-path: 
```lisp
(add-to-list 'load-path "/path/to/xproc-mode")
(autoload 'xproc-mode "xproc-mode" nil t)
```

### el-get
el-get users can install xproc-mode with the following recipe:
```lisp
(:name xproc-mode
       :type git
       :url "http://github.com/bertfrees/xproc-mode.git"
       :checkout "alpha"
       :depends (auto-complete auto-complete-nxml)
       :build (("make")))
```

### package.el
xproc-mode is also available as an ELPA package. First you need to add
[bertfrees.github.com/elpa](http://bertfrees.github.com/elpa) to the list of repositories:
```lisp
(add-to-list 'package-archives '("bertfrees" . "http://bertfrees.github.com/elpa/packages/"))
(package-install 'xproc-mode)
```

Setup
-----
```lisp
(add-to-list 'auto-mode-alist '("\\.xpl$" . xproc-mode))
(eval-after-load 'xproc-mode
  '(progn
    (add-hook 'xproc-mode-hook
      (lambda ()
        (setq ac-sources '(ac-source-xproc-tag
                           ac-source-nxml-attr
                           ac-source-nxml-attr-value))
        (auto-complete-mode t)
        (yas-minor-mode)))))
```

License
-------
Copyright 2013 [Bert Frees][bert]

This program is free software: you can redistribute it and/or modify
it under the terms of the [GNU Lesser General Public License][lgpl]
as published by the Free Software Foundation, either version 3 of
the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.


[xproc-mode]: http://github.com/bertfrees/xproc-mode
[nxml-mode]: http://www.thaiopensource.com/nxml-mode
[auto-complete]: http://github.com/auto-complete/auto-complete
[auto-complete-nxml]: http://github.com/aki2o/auto-complete-nxml
[yasnippet]: http://github.com/capitaomorte/yasnippet
[bert]: http://github.com/bertfrees
[lgpl]: http://www.gnu.org/licenses/lgpl.html

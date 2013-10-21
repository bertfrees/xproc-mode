(require 'nxml-mode)
(require 'ac-xproc)

;;;###autoload
(define-derived-mode xproc-mode nxml-mode "XProc"
  "Major mode for editing XProc")

(push (expand-file-name "schema/schemas.xml" (file-name-directory load-file-name))
      rng-schema-locating-files)

(push (expand-file-name "snippets" (file-name-directory load-file-name))
      yas/snippet-dirs)

(yas-reload-all)

(provide 'xproc-mode)

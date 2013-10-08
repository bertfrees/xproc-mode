(require 'auto-complete)
(require 'auto-complete-nxml)

(defface ac-xproc-tag-candidate-face
  '((t (:inherit ac-candidate-face)))
  "Face for XProc candidates."
  :group 'auto-complete)

(defface ac-xproc-tag-selection-face
  '((t (:inherit ac-selection-face)))
  "Face for the XProc selected candidate."
  :group 'auto-complete)

(defconst ac-xproc-steps-alist
  (let* ((filter (lambda (pred nodes) (delq nil (mapcar (lambda (x) (and (funcall pred x) x)) nodes))))
         (is-elem (lambda (tag node) (and (consp node) (eq tag (car node)))))
         (children (lambda (tag elem) (funcall filter (apply-partially is-elem tag) (nthcdr 2 elem))))
         (string-value (lambda (elem) (replace-regexp-in-string "[ \t\n]+" " " (or (nth 2 elem) "")))))
    (with-temp-buffer
      (insert-file-contents-literally
        (expand-file-name "steps.html" (file-name-directory load-file-name)))
      (let* ((tree (libxml-parse-html-region (point-min) (point-max)))
             (rows (funcall children 'tr
                     (car (funcall children 'tbody
                       (car (funcall children 'table
                         (nth 1 (funcall children 'div
                           (car (funcall children 'div
                             (car (funcall children 'body tree))))))))))))
             steps)
        (dolist (row rows steps)
          (let* ((cols (funcall children 'td row))
                 (name (concat "p:" (funcall string-value (car (funcall children 'a (nth 0 cols))))))
                 (description (mapconcat 'identity (mapcar string-value (funcall children 'p (nth 4 cols))) "\n"))
                 (inputs (mapconcat 'identity (mapcar (apply-partially 'concat "[i] ") (delq "" (mapcar string-value (funcall children 'p (nth 1 cols))))) "\n"))
                 (outputs (mapconcat 'identity (mapcar (apply-partially 'concat "[o] ") (delq "" (mapcar string-value (funcall children 'p (nth 2 cols))))) "\n"))
                 (options (mapconcat 'identity (mapcar (apply-partially 'concat "[x] ") (delq "" (mapcar string-value (funcall children 'p (nth 3 cols))))) "\n")))
            (setq steps (cons (list name (mapconcat 'identity (list description  "" inputs outputs options) "\n")) steps))))))))

(defun ac-xproc-tag-document (step)
  (nth 1 (assoc step ac-xproc-steps-alist)))

(ac-define-source xproc-tag
  '((candidate-face . ac-xproc-tag-candidate-face)
    (selection-face . ac-xproc-tag-selection-face)
    (prefix         . "<\\([a-zA-Z0-9:-]*\\)")
    (document       . ac-xproc-tag-document)
    (candidates     . auto-complete-nxml-get-candidates)
    (symbol         . "f")
    (cache)))

(provide 'ac-xproc)

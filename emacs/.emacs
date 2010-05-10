(setq load-path (cons "~/.emacs.d/elisp" load-path))

(add-to-list 'load-path "~/.emacs.d/elisp/feature-mode")
;; and load it
(autoload 'feature-mode "feature-mode" "Mode for editing cucumber files" t)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

(require 'find-recursive)
(require 'snippet)
(setq load-path (cons "~/.emacs.d/emacs-rails" load-path))
(require 'rails)

(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(setq auto-mode-alist
      (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
				     interpreter-mode-alist))
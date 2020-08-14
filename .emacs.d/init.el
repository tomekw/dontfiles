(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(require 'use-package-ensure)
(setq use-package-always-ensure t)

(setq initial-scratch-message nil)
(setq inhibit-startup-screen t)
(setq make-backup-files nil)
(setq auto-save-default nil)
(global-linum-mode t)
(line-number-mode 1)
(setq linum-format "%5d ")
(column-number-mode 1)
(scroll-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
(tool-bar-mode -1)
(set-fringe-mode '(0 . 0))
(setq-default indent-tabs-mode nil)
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)
(setq mac-allow-anti-aliasing t)
(setq ns-right-alternate-modifier nil)
(setq require-final-newline t)
(setq exec-path (append exec-path '("/usr/local/bin")))

(setq custom-file "~/.emacs.d/custom.el")

(use-package aggressive-indent
  :init (add-hook 'prog-mode-hook #'aggressive-indent-mode))

(use-package cider)

(use-package clojure-mode
  :init (add-hook 'clojure-mode-hook #'subword-mode))

(use-package company
  :init (add-hook 'after-init-hook 'global-company-mode))

(use-package darcula-theme
  :config (set-frame-font "Monaco 13")
  :init (load-theme 'darcula t))

(use-package expand-region
  :bind (("s-<up>" . 'er/expand-region)
         ("s-<down>" . 'er/contract-region)))

(use-package helm
  :init (helm-mode 1)
  :bind (("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)))

(use-package helm-ag
  :init (defalias 'ag 'projectile-helm-ag))

(use-package helm-projectile
  :init (progn (helm-projectile-on)
               (defun projectile-helm-ag ()
                 (interactive)
                 (helm-ag (projectile-project-root)))))

(use-package highlight-parentheses
  :init (progn (define-globalized-minor-mode global-highlight-parentheses-mode
                 highlight-parentheses-mode
                 (lambda ()
                   (highlight-parentheses-mode t)))
               (global-highlight-parentheses-mode t)))

(use-package projectile
  :init (progn (projectile-mode 1)
               (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)))

(use-package rainbow-delimiters
  :init (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package recentf
  :init (progn (recentf-mode 1)
               (add-to-list 'recentf-exclude ".git")
               (add-to-list 'recentf-exclude "elpa"))
  :bind ("C-x C-r" . helm-recentf))

(use-package smartparens
  :init (add-hook 'prog-mode-hook #'smartparens-mode))

(use-package whitespace-cleanup-mode
  :init (global-whitespace-cleanup-mode t))

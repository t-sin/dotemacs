;;;; basic config


;; encodings
(set-language-environment "utf-8")
;(prefer-coding-system 'utf-8)

(setq inhibit-startup-message t)

;; indent with spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4 indent-tabs-mode nil)

;; killring and clipboard
(cond (window-system
	  (setq x-select-enable-clipboard t)))

;; selection behavior
(cua-mode t)
(setq cua-enable-cua-keys nil)

;; selection area with color
(transient-mark-mode)

;; show correspond paren
(show-paren-mode)

;;; keybinding syntax
;;; sypnosis: (define-key keymap keys definition)
;;; keymap: global-map, xxx-mode-map...
;;; keys: ex; C-x M-x a -> "\C-x\A-xa"
;;; definition: func

(define-key key-translation-map [?\C-h] [?\C-?])


;;; PATH from shell
(el-get-bundle exec-path-from-shell)
(exec-path-from-shell-initialize)

;;; popwin.el
(el-get-bundle popwin)
(require 'popwin)
(popwin-mode 1)

;;; elscreen
(el-get-bundle elscreen)
(elscreen-start)

;;; visual-regexp
(el-get-bundle visual-regexp)

(define-key global-map (kbd "C-M-%") 'vr/replace)
(define-key global-map (kbd "M-%") 'vr/query-replace)


;;; major modes

;; markdown-mode
(el-get-bundle markdown-mode)
(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; Re:VIEW mode
(el-get-bundle kmuto/review-el)
(require 'review-mode)
(add-to-list 'auto-mode-alist '("\\.re\\'" . review-mode))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(custom-enabled-themes (quote (molokai)))
 '(custom-safe-themes
   (quote
    ("b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "81936f208fbb93c5770f8303890e534fd5764507eb7b62d00b3c3c21adbdb41a" default)))
 '(package-selected-packages (quote (mmm-mode guide-key projectile molokai-theme magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "/home/cveasey/.emacs.d/lisp/")

;; php mode
(load "php-mode-improved.el")
;; php beautifier
(load "php-beautifier.el")
(setq php-beautifier-executable-path "/usr/bin/php_beautifier")
(setq php-beautifier-indent-method "spaces")

;; multi-mode
(require 'mmm-auto)
(setq mmm-global-mode 'maybe)
(mmm-add-mode-ext-class 'html-mode "\\.phtml\\'" 'html-php)
(mmm-add-mode-ext-class 'html-mode "\\.html\\'" 'html-php)

;; add mela package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; old skool
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; line numbers, please
(global-linum-mode 1)

;; disable splash screen
(setq inhibit-startup-message t
inhibit-startup-echo-area-message t)  

;; magit quick key for - git status
(global-set-key (kbd "C-x g") 'magit-status)

;; projectile
(projectile-mode)

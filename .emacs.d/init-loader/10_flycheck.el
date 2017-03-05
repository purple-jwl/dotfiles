;; flycheckを全拡張子に適応
(add-hook 'after-init-hook 'global-flycheck-mode)

;; c++-mode
(add-hook 'c++-mode-hook
          (lambda ()
            (flycheck-select-checker 'c/c++-gcc)
            (setq flycheck-c/c++-gcc-executable "/usr/local/bin/gcc-6")))

;; flycheck-color-mode-line-mode
(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

;; flycheck-pos-tip-mode
(eval-after-load "flycheck"
  '(flycheck-pos-tip-mode))

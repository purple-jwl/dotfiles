;; flycheckを全拡張子に適応
(add-hook 'after-init-hook 'global-flycheck-mode)

;; c++-mode (c++11でチェックできるようにする)
(setq-default flycheck-disabled-checkers '(c/c++-clang))
(add-hook 'c++-mode-hook
          (lambda () (setq flycheck-gcc-language-standard "c++11")))

;; flycheck-color-mode-line-mode
(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

;; flycheck-pos-tip-mode
(eval-after-load "flycheck"
  '(flycheck-pos-tip-mode))

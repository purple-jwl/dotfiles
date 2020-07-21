;; encoding
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

;; カラーテーマ設定
(load-theme 'tango-dark t)

;; 初期画面を表示しない
(setq inhibit-startup-message t)

;; 行番号を表示
(line-number-mode t)

;; 列番号を表示
(column-number-mode t)

;; 行数表示
(global-linum-mode t)
(setq linum-format "%4d   ")

;; メニューバー非表示
(menu-bar-mode 0)

;; バックアップファイルを作らない
(setq make-backup-files nil)
(setq auto-save-default nil)

;; ビープ音を消す
(setq ring-bell-function 'ignore)

;; 対応するカッコを強調表示
(show-paren-mode t)

;; タブインデント禁止
(setq-default indent-tabs-mode nil)

;; インデント幅設定
(setq-default c-basic-offset 4)

;; 時刻表示
(display-time-mode t)
(setq display-time-24hr-format t)

;; ファイル保存時に行末の空白を削除
(add-hook 'before-save-hook 'whitespace-cleanup)

;; キー設定
(global-set-key "\C-h" 'backward-delete-char)
(global-set-key "\C-z" 'scroll-down-command)

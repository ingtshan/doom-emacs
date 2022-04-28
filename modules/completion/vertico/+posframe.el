;;; +childframe.el --- postframe of vertico          -*- lexical-binding: t; -*-

;; Copyright (C) 2022  ingtshan

;; Author: ingtshan <rongcanyo@gmail.com>
;; Keywords:

;; posframes for vertico
(defface vertico-posframe-border
  '((t (:inherit default :background "gray50")))
  "Face used by the vertico-posframe's border."
  :group 'vertico-posframe)

(use-package! vertico-posframe
  :config
  (vertico-posframe-mode 1))

(defun +vertico-stop-using-minibuffer ()
  "kill the minibuffer"
  (when (and (>= (recursion-depth) 1)
             (active-minibuffer-window))
    (abort-recursive-edit)))
;; kill minibuffer while unfocus
(add-hook 'mouse-leave-buffer-hook '+vertico-stop-using-minibuffer)

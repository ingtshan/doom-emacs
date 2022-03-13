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
  (vertico-posframe-mode 1)
  :custom
  (
  (vertico-posframe-poshandler
   #'posframe-poshandler-p0.5p0-to-f0.5p1
   ;;#'posframe-poshandler-point-top-left-corner
   )
  (vertico-posframe-font "Sarasa Mono SC Nerd 15")
  (vertico-posframe-parameters
   ;;nil
   ;;背景RGB (51,62,80)#BDC0C5，前景(189,192,197)#333E50
   '((foreground-color . "#BDC0C5")
     (background-color . "#333E50")))))

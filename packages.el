(defconst org-unit-test-layer-packages
  '(
    org
    parsec
    )
  )

(defun org-unit-test-layer/init-parsec ()
  (use-package parsec
    :commands (parsec-with-input)
    :defer t)
  )

(defun org-unit-test-layer/post-init-org ()
  (defun org-unit-test-layer/org-mod-map ()
    (spacemacs/set-leader-keys-for-major-mode 'org-mode
      ". T" 'org-unit-test-layer/test-org-file)
    )
  (add-hook 'org-mode-hook 'org-unit-test-layer/org-mod-map)
  )

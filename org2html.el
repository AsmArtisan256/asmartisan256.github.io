(require 'ox-publish)

(let ((local-directory default-directory))
  (setq org-publish-project-alist
	`(
	  ("org-website"
	   :base-directory ,local-directory
	   :base-extension "org"
	   :publishing-directory ,local-directory
	   :recursive t
	   :publishing-function org-html-publish-to-html
	   :headline-levels 4
	   :auto-preamble t
	   )
	  ))
  )

(org-publish "org-website" t)

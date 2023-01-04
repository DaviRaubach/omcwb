(define-key global-map (kbd "C-q")
	    (lambda () (interactive) (async-shell-command "python -m omcwb")))

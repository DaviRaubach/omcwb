(define-key python-mode-map (kbd "C-c C-c")
	    (lambda () (interactive) (async-shell-command "python -m omcwb")))
(define-key python-mode-map (kbd "C-c C-s")
	    (lambda () (interactive) (async-shell-command "python -m segment")))

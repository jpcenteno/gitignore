all:
	# Nothing to do here.

shellcheck: gitignore
	shellcheck -a \
		-o add-default-case \
		-o avoid-nullary-conditions \
		-o check-unassigned-uppercase \
		-o quote-safe-variables \
		-o require-variable-braces \
		-s sh \
		$<

DESTDIR = /usr/local
COMPLETIONDIR = /etc/bash_completion.d/

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

shellcheck-bash-completion: gitignore-completion.bash
	shellcheck -a \
		-o add-default-case \
		-o avoid-nullary-conditions \
		-o check-unassigned-uppercase \
		-o quote-safe-variables \
		-o require-variable-braces \
		-s bash \
		$<

test: shellcheck shellcheck-bash-completion

install: gitignore gitignore-completion.bash
	mkdir -p ${DESTDIR}/bin
	cp -f gitignore ${DESTDIR}/bin
	chmod 755 ${DESTDIR}/bin/gitignore
	mkdir -p ${COMPLETIONDIR}
	cp -f gitignore-completion.bash ${COMPLETIONDIR}/

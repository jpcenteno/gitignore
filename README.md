# gitignore

_Gitignore_ is a small utility for quick `.gitignore` boilerplate. Calling
`gitignore <Language>` will append `$PWD/.gitignore` with a reasonable
boilerplate from the [Github collection of .gitignore
files](https://github.com/github/gitignore).

## Usage

```
# We start with an empty directory
$  ls -a
.		..

# Then we create a new .gitignore for a Python project
$ gitignore Python

# Now we have a gitignore with defaults for a python project
$ ls -a
.		..		.gitignore

# It also provides Bash completion.
$ gitignore C
C             C++           CFWheels      CMake         ...
```

## Install

```
sudo make install
```

For bash completion, add this to `.bash_profile` or `.bashrc`:
```
source "/etc/bash_completion.d/gitignore-completion.bash"
```

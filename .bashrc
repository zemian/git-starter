# == Git shortcuts

# Change given files permissions
gitchmod() {
	git add --chmod=+x "$@"
	git commit -m "Change file mode to +x"
	git checkout "$@"
}

# Quick add and commit files
gitci() {
	# Use default commit msg if first arg does not exists
	MSG="Update $@"
	if [[ ! -e $1 ]]; then
		MSG=$1
		shift
	fi
	git add "$@"
	git commit -m "$MSG"
}

# Create an empty git repo
gitinit() {
	git init
echo '.DS_Store
tmp/
target/
.idea/
*.iml
' > .gitignore
	git add .gitignore; git commit -m 'Add ignore file'
	touch readme.adoc
	git add readme.adoc; git commit -m 'Add readme file'
}

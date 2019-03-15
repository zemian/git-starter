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
	MSG="Add $@"
	if [[ ! -e $1 ]]; then
		MSG=$1
		shift
	fi
	git add "$@"
	git commit -m "$MSG"
}

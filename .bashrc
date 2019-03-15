# == Git shortcuts

# Change given files permissions
gitchmod() {
	git add --chmod=+x "$@"
	git commit -m "\"Change file mode to +x\""
	git checkout "$@"
}

# Quick add and commit files
gitci() {
	git add "$@"
	git commit -m "\"Add $@\""
}

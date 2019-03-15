
# == Git shortcuts

# Change given files permissions
gitchmod() {
	git add --chmod=+x "$@"
	git commit -m \"Change file mode to +x\"
	git checkout "$@"
}

# Quick add files
gitadd() {
	echo git add "$@"
	echo git commit -m \"Add $@\"
}

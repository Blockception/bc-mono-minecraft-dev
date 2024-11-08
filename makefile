update:
	git submodule update --init --recursive

main:
	git submodule foreach git checkout main
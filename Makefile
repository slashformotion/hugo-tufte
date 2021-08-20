# VARIABLE
NPM := npm
SCSS_DIR := "assets/scss/vendor"

# LIST OF THE COMMANDS
help:
	@echo "Commands available:"
	@echo "- 'rebuild': rebuild the public directory in the 'exampleSite'"
	@echo "- 'vendor': copy the files from the 'node_modules' folder to the 'assets' directory (Please note that the 'node_modules' folder need to exist)"
	@echo "- 'install-npm': install (or reinstall) the nodes modules"
	@echo "- 'install': shortcut for 'make install-npm && make vendor'"

# COMMANDS
install-npm:
	@rm -r node_modules
	@rm package-lock.json
	@$(NPM) install
	@sudo $(NPM) install -g postcss-cli #needs to install globally
	@echo "NPM INSTALL" 
vendor:
	@mkdir -p $(SCSS_DIR)
	@cp -r node_modules/normalize-scss/sass/** $(SCSS_DIR)
	@echo "VENDORING" 
rebuild:
	@rm -rf exampleSite/public
	@cd exampleSite && hugo && cd .. 
	@echo "SITE REBUILT"
install:
	@make install-npm
	@make vendor 

chroma:
	hugo gen chromastyles --style=monokai > assets/scss/syntax/syntax-dark.scss
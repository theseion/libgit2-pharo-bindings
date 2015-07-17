operations
initializeWithDefaults
	self withReturnHandlerDo: [
		self
			checkout_init_options: self
			version: LGitOptionsVersionsEnum GIT_CHECKOUT_OPTIONS_VERSION_1 ]
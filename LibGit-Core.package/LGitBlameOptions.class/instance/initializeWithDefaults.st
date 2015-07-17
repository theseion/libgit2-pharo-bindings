operations
initializeWithDefaults
	self withReturnHandlerDo: [
		self
			blame_init_options: self
			version: LGitOptionsVersionsEnum GIT_BLAME_OPTIONS_VERSION_1 ]
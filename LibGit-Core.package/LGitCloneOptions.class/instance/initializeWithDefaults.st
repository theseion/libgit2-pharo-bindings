operations
initializeWithDefaults
	self withReturnHandlerDo: [
		self
			clone_init_options: self
			version: LGitOptionsVersionsEnum GIT_CLONE_OPTIONS_VERSION_1 ]
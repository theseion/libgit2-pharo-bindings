operations
initializeWithDefaults
	self withReturnHandlerDo: [
		self push_init_options: self
		version: LGitOptionsVersionsEnum GIT_PUSH_OPTIONS_VERSION_1 ]
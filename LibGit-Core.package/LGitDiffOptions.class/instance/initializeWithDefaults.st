operations
initializeWithDefaults
	self withReturnHandlerDo: [
		self
			diff_init_options: self
			version: LGitOptionsVersionsEnum GIT_DIFF_OPTIONS_VERSION_1 ]
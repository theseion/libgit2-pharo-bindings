operations
initializeWithDefaults
	self withReturnHandlerDo: [
		self
			diff_find_init_options: self
			version: LGitOptionsVersionsEnum GIT_DIFF_FIND_OPTIONS_VERSION_1 ]
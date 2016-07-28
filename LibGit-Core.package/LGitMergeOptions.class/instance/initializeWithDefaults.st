operations
initializeWithDefaults
	self withReturnHandlerDo: [
		self
			merge_init_options: self
			version: LGitOptionsVersionsEnum git_checkout_options_version_1 ]
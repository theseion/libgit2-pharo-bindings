operations
defaultDiffOptions
	| options |
	options := LGitDiffOptions externalNew.
	self withReturnHandlerDo: [
		self
			diff_init_options: options
			version: LGitDiffOptionsVersionEnum GIT_DIFF_OPTIONS_VERSION ].
		
	^ options
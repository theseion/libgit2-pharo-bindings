operations
defaultBlameOptions
	| options |
	options := LGitBlameOptions externalNew.
	self withReturnHandlerDo: [
		self
			blame_init_options: options
			version: LGitBlameVersionEnum GIT_BLAME_OPTIONS_VERSION ].
		
	^ options
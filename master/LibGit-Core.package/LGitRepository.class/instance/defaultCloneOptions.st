accessing-defaults
defaultCloneOptions
	| options |
	options := LGitCloneOptions externalNew.
	
	self withReturnHandlerDo: [
		self clone_init_options: options version: 1 ].

	^ options
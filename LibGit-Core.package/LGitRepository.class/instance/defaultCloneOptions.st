accessing-defaults
defaultCloneOptions
	| options |
	options := LG2GitCloneOptionsS externalNew.
	
	self withReturnHandlerDo: [
		self clone_init_options: options version: 1 ].

	^ options
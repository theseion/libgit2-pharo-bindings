accessing-defaults
defaultCheckoutOptions
	| options |
	options := LGitCheckoutOptions new.
	
	self withReturnHandlerDo: [
		self checkout_init_options: options version: 1 ].

	^ options
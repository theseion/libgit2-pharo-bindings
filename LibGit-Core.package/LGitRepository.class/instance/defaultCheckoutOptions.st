accessing-defaults
defaultCheckoutOptions
	| options |
	options := LG2GitCheckoutOptionsS new.
	
	self withReturnHandlerDo: [
		self checkout_init_options: options version: 1 ].

	^ options
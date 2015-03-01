operations
resolve
	| resolved |
	resolved := self class
		of: self repository
		freeAfterUse: true.
	
	self withReturnHandlerDo: [
		self
			reference_resolve: resolved
			ref: self ].
		
	^  resolved
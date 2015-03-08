operations
resolve
	| resolved |
	resolved := self class of: self repository.
	self withReturnHandlerDo: [ self reference_resolve: resolved ref: self ].
	^ resolved
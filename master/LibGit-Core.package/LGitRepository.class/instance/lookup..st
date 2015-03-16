lookup
lookup: name
	| reference |
	self signalIfNotReady.
	reference := LGitReference of: self.
	self withReturnHandlerDo: [
		self
			reference_lookup: reference
			repo: self
			shorthand: name ].
		
	^ reference
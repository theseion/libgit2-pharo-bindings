operations
lookup
	self withReturnHandlerDo: [ 
		self
			remote_lookup: self
			repo: self repository
			name: self remoteName ]
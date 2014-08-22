operations
load
	self withReturnHandlerDo: [ 
		self
			remote_load: self
			repo: self repository
			name: self remoteName ]
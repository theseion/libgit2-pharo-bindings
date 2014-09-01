operations
setUrl: aString
	self withReturnHandlerDo: [ 
		self
			remote_set_url: self
			url: aString]
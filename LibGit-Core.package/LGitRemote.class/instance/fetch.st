operations
fetch
	self 
		create;
		initializeCallbacks.
		
	self withReturnHandlerDo: [ 
		self
			remote_fetch: self
			signature: self repository defaultSignature
			reflog_message: nil ]
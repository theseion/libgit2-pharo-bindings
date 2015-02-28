operations
fetch
	self 
		create;
		setCallbacksFinally.
		
	self withReturnHandlerDo: [ 
		self
			remote_fetch: self
			signature: self repository defaultSignature
			reflog_message: nil ]
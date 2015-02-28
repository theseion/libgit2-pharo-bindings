operations
fetchWithSignature: aSignature message: aString
	self 
		create;
		setCallbacksFinally.
		
	self withReturnHandlerDo: [ 
		self
			remote_fetch: self
			signature: aSignature
			reflog_message: aString ]
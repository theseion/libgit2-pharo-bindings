operations
fetchWithSignature: aSignature message: aString
	self 
		create;
		setCallbacksFinally.
		
	self withReturnHandlerDo: [ 
		self
			remote_fetch: self
			refspecs: nil
			signature: aSignature
			reflog_message: aString ]
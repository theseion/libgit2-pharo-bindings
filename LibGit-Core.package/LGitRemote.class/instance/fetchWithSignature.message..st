operations
fetchWithSignature: aSignature message: aString
	self 
		create;
		initializeCallbacks.
		
	self withReturnHandlerDo: [ 
		self
			remote_fetch: self
			signature: aSignature asSignatureStruct
			reflog_message: aString ]
operations
fetch
	self 
		create;
		setCallbacksFinally.
		
	self withReturnHandlerDo: [ 
		self
			remote_fetch: self
			refspecs: nil
			signature: (self repository defaultSignature
				freeAfterUse: true;
				yourself)
			reflog_message: nil ]
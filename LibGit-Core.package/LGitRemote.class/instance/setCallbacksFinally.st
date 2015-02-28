operations
setCallbacksFinally
	self initializeCallbacks.
	self withReturnHandlerDo: [
		self remote_set_callbacks: self callbacks: self callbacks ]
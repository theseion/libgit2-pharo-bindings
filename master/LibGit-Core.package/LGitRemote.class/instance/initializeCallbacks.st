operations
initializeCallbacks
	self areCallbacksInitialized ifTrue: [ ^ self ].
	
	self areCallbacksInitialized: true.
	self withReturnHandlerDo: [ 
		self remote_init_callbacks: self callbacks version: 1 ]
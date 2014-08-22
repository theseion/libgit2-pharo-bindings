operations
initializeCallbacks
	self areCallbacksInitialized ifTrue: [  ^ self ].
	
	self withReturnHandlerDo: [ 
		self remote_init_callbacks: self callbacks structure version: 1 ].
	
	self areCallbacksInitialized: true
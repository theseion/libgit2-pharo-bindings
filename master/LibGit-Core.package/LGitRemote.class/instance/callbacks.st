accessing
callbacks
	callbacks ifNil: [ callbacks := LGitRemoteCallbacks new ].
	self areCallbacksInitialized ifFalse: [ self initializeCallbacks ].
	^ callbacks
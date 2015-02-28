operations
pull
	<todo: 'check for conflicts'>
	| credentials credentialsCallback |
	self repository isReady ifFalse: [  ^ self ].

	self
		load;
		initializeCallbacks.
	
	credentials := self class credentialsSsh.
	credentialsCallback := LGitCredentialsCallback on: [ :cred :theUrl :username_from_url :allowed_types :data | 
		credentials createWith: cred.
		0 ].
	self callbacks credentials: credentialsCallback.
	self setCallbacksFinally.
	
	
	self withReturnHandlerDo: [ 
		self
			remote_fetch: self
			signature: self repository defaultSignature
			reflog_message: 'automatic pull from libgit2' ].
	
	"assume that there are no confilcts and fast-forwad to FETCH_HEAD"
	self repository fastForward
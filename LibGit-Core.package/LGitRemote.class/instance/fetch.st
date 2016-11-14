operations
fetch
	| credentialsCallback |
	self isReady ifFalse: [ self create ].

	credentialsCallback := LGitCredAcquireCallback
		on: [ :cred :callBackURL :username_from_url :allowed_types :data | 
			self class credentialsSsh createWith: cred.
			0 ].
		
	self withReturnHandlerDo: [ 
		self
			remote_fetch: self
			refspecs: self ffiNull handle
			opts: (LGitFetchOptions defaults
				callbacks: (LGitRemoteCallbacks defaults
					credentials: credentialsCallback;
					yourself);
				yourself)
			reflog_message: nil ]
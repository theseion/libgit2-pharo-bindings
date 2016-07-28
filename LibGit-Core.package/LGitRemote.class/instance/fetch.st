operations
fetch
	self isReady ifFalse: [ self create ].
		
	self withReturnHandlerDo: [ 
		self
			remote_fetch: self
			refspecs: nil
			opts: LGitFetchOptions defaults
			reflog_message: nil ]
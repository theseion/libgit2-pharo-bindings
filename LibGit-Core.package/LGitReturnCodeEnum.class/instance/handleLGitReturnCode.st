handling
handleLGitReturnCode
	^ (self handlers
		at: self
		ifAbsent: [ LGitNoReturnCodeHandlerDefined signalWith: self ]) signal
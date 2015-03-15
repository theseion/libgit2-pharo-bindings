handling
handleLGitReturnCode
	| handler |
	handler := self handlers
		at: self
		ifAbsent: [ LGitNoReturnCodeHandlerDefined signalWith: self ].
	^ handler isError
		ifTrue: [ handler signalWith: LGitError last ]
		ifFalse: [  self ]
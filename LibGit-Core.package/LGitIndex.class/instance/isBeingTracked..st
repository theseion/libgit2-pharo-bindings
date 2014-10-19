testing
isBeingTracked: aString
	| intValue untracked |
	(self repository repositoryReference resolve: aString) isDirectory ifTrue: [ ^ true ].
	
	intValue := LGitWriteBackValueInt new.
	self withReturnHandlerDo: [ 
		self
			status_file: intValue
			repo: self repository
			path: aString ].

	untracked := LG2GitStatusTE at: #GIT_STATUS_WT_NEW.
	^ intValue value isZero
		ifTrue: [ true ]
		ifFalse: [ 
			| states |
			states := LG2GitStatusTE declaration select: [ :status || result |
				result := status value bitAnd: intValue value.
				result isZero not and: [ result = status value ] ].
			 (states includes: untracked) not ]
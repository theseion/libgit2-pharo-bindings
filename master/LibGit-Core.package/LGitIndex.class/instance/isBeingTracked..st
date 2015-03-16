testing
isBeingTracked: aString
	| intValue |
	(self repository repositoryReference resolve: aString) isDirectory ifTrue: [ ^ true ].
	
	intValue := LGitWriteBackValueInt new.
	self withReturnHandlerDo: [ 
		self
			status_file: intValue
			repo: self repository
			path: aString ].

	^ (LGitStatusTypeEnum GIT_STATUS_WT_NEW isPartOfBitFlag: intValue value) not
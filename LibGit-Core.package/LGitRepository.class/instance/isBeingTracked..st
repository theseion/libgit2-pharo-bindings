testing
isBeingTracked: aString
	| intValue enum |
	(self repositoryReference resolve: aString) isDirectory ifTrue: [ ^ true ].
	
	intValue := LGitWriteBackValueInt new.
	self withReturnHandlerDo: [ 
		self
			status_file: intValue
			repo: self
			path: aString ].
	
	enum := LG2GitStatusTE fromInteger: intValue value.
	^ enum ~= (LG2GitStatusTE at: #GIT_STATUS_WT_NEW)
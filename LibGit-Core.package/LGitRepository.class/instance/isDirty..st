testing
isDirty: aFileReference
	| intValue |
	intValue := LGitWriteBackValueInt new.
	self withReturnHandlerDo: [
		self
			status_file: intValue
			repo: self
			path: (aFileReference relativeTo: self repositoryReference) relativeString ].
		
	^ intValue isZero
testing
isDirty: aFileReference
	| intValue enum |
	intValue := LGitWriteBackValueInt new.
	self withReturnHandlerDo: [
		self
			status_file: intValue
			repo: self
			path: (aFileReference relativeTo: self repositoryReference) relativeString ].
		
	enum := LG2GitStatusTE fromInteger: intValue value.
	^ enum ~= (LG2GitStatusTE at: #GIT_STATUS_CURRENT)
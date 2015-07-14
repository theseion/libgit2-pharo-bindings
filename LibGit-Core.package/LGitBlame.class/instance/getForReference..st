operations
getForReference: aFileReference
	^ self withReturnHandlerDo: [
		self
			blame_file: self
			repo: self repository
			path: (aFileReference relativeTo: self repository repositoryReference) relativeString
			options: self defaultBlameOptions ]
operations
addEntry: aBlob filename: aString
	self withReturnHandlerDo: [
		self
			treebuilder_insert: (LGitTreeEntry
				of: self repository
				freeAfterUse: true)
			bld: self 
			filename: aString
			id: aBlob id
			filemode: (LG2GitFilemodeTE at: #GIT_FILEMODE_BLOB) value ]
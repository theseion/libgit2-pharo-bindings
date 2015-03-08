operations
addEntry: aBlob filename: aString
	self
		withReturnHandlerDo: [ 
			self
				treebuilder_insert: (LGitTreeEntry of: self repository)
				bld: self
				filename: aString
				id: aBlob id
				filemode: (LGitFilemodeEnum at: #GIT_FILEMODE_BLOB) value ]
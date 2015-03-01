operations
addEntryWithId: oidStruct filename: aString filemode: anInteger
	self withReturnHandlerDo: [
		self
			treebuilder_insert: (LGitTreeEntry
				of: self repository
				freeAfterUse: true)
			bld: self 
			filename: aString
			id: oidStruct
			filemode: anInteger ]
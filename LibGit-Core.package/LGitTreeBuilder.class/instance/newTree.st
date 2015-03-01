accessing
newTree
	^ LGitTree 
		of: self repository
		freeAfterUse: false
		fromId: self write
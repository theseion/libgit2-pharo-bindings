accessing
newTree
	^ LGitTree 
		fromId: self write
		of: self repository
operations
clone: aString
	| cloneOptions |
	cloneOptions := LGitCloneOptions withCredentialsProvider: (IceCredentialsProvider default).
	
	self
		clone: aString
		options: cloneOptions	

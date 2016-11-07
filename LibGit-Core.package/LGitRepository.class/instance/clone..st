operations
clone: aString
	| cloneOptions |
	cloneOptions := LGitCloneOptions withCredentialsProvider: (IceCredentialsProvider new).
	
	self
		clone: aString
		options: cloneOptions	

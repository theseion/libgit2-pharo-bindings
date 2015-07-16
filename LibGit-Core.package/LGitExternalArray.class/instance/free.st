initialize-release
free
	self isExternal ifFalse: [ ^ self ].
	
	LGitGlobal free: data
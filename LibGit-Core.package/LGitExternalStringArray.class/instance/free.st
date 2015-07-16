initialize-release
free
	self isExternal ifFalse: [ ^ self ].
	1 to: self size do: [ :index |
		LGitGlobal free: (self primAt: index) ].
	
	super free
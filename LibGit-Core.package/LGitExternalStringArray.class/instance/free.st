initialize-release
free
	self isExternal ifFalse: [ ^ self ].
	1 to: self size do: [ :index |
		(self primAt: index) free ].
	
	super free
*LibGit-GT
relativeString
	^ String streamContents: [ :stream |
		stream nextPutAll: (self at: 1).
		2 to: self size do:
			[:i |
				stream
					nextPutAll: '/';
					nextPutAll: (self at: i) ] ]
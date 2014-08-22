instance creation
remote: aRemote refSpec: aRefSpec
	^ (self of: aRemote repository)
		remote: aRemote;
		createNew;
		addRefSpec: aRefSpec asString;
		yourself
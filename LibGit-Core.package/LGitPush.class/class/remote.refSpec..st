instance creation
remote: aRemote refSpec: aRefSpec
	^ (self of: aRemote repository freeAfterUse: true)
		remote: aRemote;
		createNew;
		addRefSpec: aRefSpec asString;
		yourself
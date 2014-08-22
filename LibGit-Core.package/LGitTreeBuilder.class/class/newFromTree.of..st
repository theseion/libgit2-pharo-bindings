instance creation
newFromTree: aTree of: repository
	^ (self of: repository)
		initializeWithTree: aTree;
		yourself
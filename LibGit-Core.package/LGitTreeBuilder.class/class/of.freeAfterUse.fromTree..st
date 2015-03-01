instance creation
of: repository freeAfterUse: aBoolean fromTree: aTree 
	^ (self of: repository freeAfterUse: true)
		initializeWithTree: aTree;
		yourself
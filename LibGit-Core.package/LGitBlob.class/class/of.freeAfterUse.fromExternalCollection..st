instance creation
of: aRepository freeAfterUse: aBoolen fromExternalCollection: aCollection 
	| id |
	self assert: (aCollection class theMetaClass canUnderstand: #asNBExternalType:).
	id := LGitId new.
	self 
		blob_create_frombuffer: id
		repo: aRepository
		buffer: aCollection
		len: aCollection size.
		
	^ (self of: aRepository freeAfterUse: false) 
		initializeWithId: id;
		yourself
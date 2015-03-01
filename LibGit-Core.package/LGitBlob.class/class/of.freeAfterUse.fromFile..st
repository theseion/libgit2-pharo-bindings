instance creation
of: aRepository freeAfterUse: aBoolean fromFile: aFileReference 
	| id |
	id := LGitId new.
	self 
		blob_create_fromdisk: id
		repo: aRepository
		path: aFileReference fullName.
		
	^ (self of: aRepository freeAfterUse: aBoolean) 
		initializeWithId: id;
		yourself
instance creation
newFromExternalCollection: aCollection of: aRepository
	| id |
	self assert: (aCollection class theMetaClass canUnderstand: #asNBExternalType:).
	id := LG2GitOidS new.
	self 
		blob_create_frombuffer: id
		repo: aRepository
		buffer: aCollection
		len: aCollection size.
		
	^ (self of: aRepository) 
		initializeWithId: id;
		yourself
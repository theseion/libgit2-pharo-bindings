instance creation
newFromFile: aFileReference of: aRepository
	| id |
	id := LG2GitOidS new.
	self 
		blob_create_fromdisk: id
		repo: aRepository
		path: aFileReference fullName.
		
	^ (self of: aRepository) 
		initializeWithId: id;
		yourself
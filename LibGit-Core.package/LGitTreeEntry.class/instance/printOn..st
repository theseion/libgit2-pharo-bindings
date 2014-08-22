printing
printOn: aStream 
	super printOn: aStream.
	
	self ifNotReady: [ ^ '(*not loaded*)' ].
	
	aStream nextPut: $(;
	        nextPutAll: self filename;
	        nextPut: $)
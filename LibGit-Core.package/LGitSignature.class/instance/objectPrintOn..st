printing
objectPrintOn: aStream
	aStream
		nextPutAll: self getName;
		nextPutAll: ' <';
		nextPutAll: self getEmail;
		nextPutAll: '> '.
	self when objectPrintOn: aStream
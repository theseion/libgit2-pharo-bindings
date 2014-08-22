printing
printOn: aStream
	self ifNotReady: [ ^ super printOn: aStream ].
	
	aStream
		nextPutAll: self className;
		nextPutAll: '( "';
		nextPutAll: self name;
		nextPutAll: '" )'
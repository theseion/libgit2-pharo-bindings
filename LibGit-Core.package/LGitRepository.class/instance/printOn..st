printing
printOn: aStream
	aStream nextPutAll: 'a Git repository ('.
	self isReady
		ifTrue: [ aStream
			nextPut: $";
			nextPutAll: self workingDirectoryName;
			nextPutAll: '")' ]
		ifFalse: [ aStream nextPutAll: 'not initialized)' ]
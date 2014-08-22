printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' ('.
	[ 
		aStream
			nextPutAll: self name;
			nextPutAll: ' <';
			nextPutAll: self email;
			nextPutAll: '> '.
		self when printOn: aStream
	]
		on: MessageNotUnderstood
		do: [ :ex | ex return: '' ].
	aStream nextPut: $)
printing
objectPrintOn: aStream
	| names |
	names := self names.
	names isEmpty ifTrue: [ ^ aStream nextPutAll: '<root tree>' ].
	
	names
		do: [ :name | aStream nextPutAll: name surroundedBySingleQuotes ]
		separatedBy: [ aStream nextPutAll: ', ' ]
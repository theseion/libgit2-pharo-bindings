printing
objectPrintOn: aStream
	self names
		do: [ :name | aStream nextPutAll: name surroundedBySingleQuotes ]
		separatedBy: [ aStream nextPutAll: ', ' ]
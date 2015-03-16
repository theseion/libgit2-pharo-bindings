printing
printOn: stream
	super printOn: stream.

	stream nextPut: $(;
		nextPutAll: self symbol printString;
		nextPutAll: ' [';
		nextPutAll: self value asString;
		nextPut: $];
		nextPut: $)
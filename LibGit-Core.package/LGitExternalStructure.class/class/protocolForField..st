managing accessors
protocolForField: aString
	^ self fieldNamesAndProtocols
		at: aString
		ifAbsent: [ 'as yet unclassified' ]
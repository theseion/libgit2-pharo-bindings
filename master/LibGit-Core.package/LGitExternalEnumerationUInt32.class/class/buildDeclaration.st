class initialization
buildDeclaration
	^ (self initializeEnum associations collect: [ :assoc |
		assoc key -> (self basicNew value: assoc value) ]) asDictionary
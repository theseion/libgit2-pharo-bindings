operations
hasEntry: aString
	^ self withReturnHandlerDo: [ 
		self
			index_find: NBExternalAddress null
			index: self
			path: aString ]
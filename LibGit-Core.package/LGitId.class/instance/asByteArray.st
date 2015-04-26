converting
asByteArray
	| byteArray |
	byteArray := ByteArray new: 20.
	byteArray withIndexDo: [ :value :index |
		byteArray
			at: index
			put: (self perform: ('prim_data', index asString) asSymbol) ].
	^ byteArray
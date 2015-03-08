converting
asByteArray
	| byteArray |
	byteArray := ByteArray new: 20.
	byteArray do: [ :index |
		byteArray
			at: index
			put: (self perform: ('prim_data', index asString) asSymbol) ].
	^ byteArray
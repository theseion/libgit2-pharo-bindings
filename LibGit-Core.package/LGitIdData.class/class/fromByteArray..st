instance creation
fromByteArray: aByteArray
	| instance |
	instance := self new.
	1 to: 20 do: [ :index |
		instance 
			perform: ('prim_data', index asString) asSymbol asMutator
			with: (aByteArray at: index) ].
		
	^ instance
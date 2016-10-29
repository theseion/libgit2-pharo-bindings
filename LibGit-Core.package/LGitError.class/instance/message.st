accessing
message
	^ self isNull
		ifFalse: [ self prim_message fromCString ]
		ifTrue: [ 'no error message set by libgit2' ]
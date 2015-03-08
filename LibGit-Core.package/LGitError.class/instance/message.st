accessing
message
	^ self isNull
		ifFalse: [ self prim_message ]
		ifTrue: [ 'no error message set by libgit2' ]
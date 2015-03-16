testing
isNull
	^ self isExternal
		ifTrue: [ data isNull ]
		ifFalse: [ data asInteger isZero ]
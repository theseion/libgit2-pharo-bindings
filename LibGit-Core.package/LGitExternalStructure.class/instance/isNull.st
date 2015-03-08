testing
isNull
	^ (self isExternal not and: [ data isEmpty ]) or:[
		data isNull ]
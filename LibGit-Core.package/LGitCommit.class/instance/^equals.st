comparing
= anObject
	^ self == anObject
		or: [ self class = anObject class
			and: [ self id = anObject id ] ]
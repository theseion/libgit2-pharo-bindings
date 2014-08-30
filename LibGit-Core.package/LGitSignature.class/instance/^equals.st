comparing
= anObject
	^ self == anObject
		or: [ self class == anObject class
			and: [ self getName = anObject getName
				and: [ self getEmail = anObject getEmail
					and: [ self when = anObject when ] ] ] ]
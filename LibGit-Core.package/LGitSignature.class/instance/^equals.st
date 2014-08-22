comparing
= anObject
	^ self == anObject
		or: [ self class == anObject class
			and: [ self name = anObject name
				and: [ self email = anObject email
					and: [ self when asUnixTime = anObject when asUnixTime
						and: [  self when offset = anObject when offset ] ] ] ] ]
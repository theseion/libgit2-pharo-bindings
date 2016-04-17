accessing
id
	(id notNil or: [ self isNull ]) ifTrue: [ ^ id ].

	id := self blob_id: self.
	id internalize.
	^ id	

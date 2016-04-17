accessing
id
	(id notNil or: [ self isNull ]) ifTrue: [ ^ id ].

	id := self commit_id: self.
	id internalize.
	^ id	

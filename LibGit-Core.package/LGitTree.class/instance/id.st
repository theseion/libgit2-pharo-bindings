accessing
id
	(id notNil or: [ self isNull ]) ifTrue: [ ^ id ].

	id := self tree_id: self.
	id internalize.
	^ id
accessing
id
	| data |
	(id notNil or: [ self isNull ]) ifTrue: [ ^ id ].

	data := self object_id: self.
	id := LGitId fromHandle: data getHandle.
	id internalize.
	^ id	

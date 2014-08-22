accessing
parents
	| parentCount |
	parentCount := self commit_parentcount: self.
	
	^ Array new: parentCount streamContents: [ :stream |
		0 to: parentCount - 1 do: [ :i || parentOid parent |
			parentOid := self commit_parent_id: self n: i.
			
			parent := self class of: self repository.
			self 
				commit_lookup: parent 
				repo: self repository
				id: parentOid.
			
			stream nextPut: parent ] ]
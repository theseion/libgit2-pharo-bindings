printing
asRelativePathString
	| string |
	string := String new: 41.
	self
		oid_pathfmt: string
		id: self.
	
	^ string
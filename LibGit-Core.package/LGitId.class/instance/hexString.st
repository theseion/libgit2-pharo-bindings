printing
hexString
	| string |
	string := String new: 40.
	self
		oid_fmt: string
		id: self.
	
	^ string
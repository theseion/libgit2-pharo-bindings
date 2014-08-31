printing
hexString
	| address |
	address := (String new: 40) asNBExternalString.
	self
		oid_fmt: address
		id: self.
		
	^ address readString
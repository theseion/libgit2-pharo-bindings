printing
hexString
	| address string |
	address := (String new: 40) asNBExternalString.
	self
		oid_fmt: address
		id: self.
	
	"The string is written without \0 terminator explicitly by libgit2.
	Adjacent memory might hold data."
	string := address readString first: 40.
	address free.
	^ string
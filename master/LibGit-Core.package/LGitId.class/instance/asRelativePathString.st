printing
asRelativePathString
	| address string |
	address := (String new: 41) asNBExternalString.
	self
		oid_pathfmt: address
		id: self.
	
	"The string is written without \0 terminator explicitly by libgit2.
	Adjacent memory might hold data."
	string := address readString first: 41.
	address free.
	^ string
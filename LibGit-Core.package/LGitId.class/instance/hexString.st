printing
hexString
	| address string |
	address := (String new: 40) asLGitExternalString.
	self
		oid_fmt: address
		id: self.
	
	"The string is written without \0 terminator explicitly by libgit2.
	Adjacent memory might hold data."
	string := address readString first: 40.
	LGitGlobal free: address.
	^ string
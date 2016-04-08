printing
hexString
	| address string |
	address := LGitGlobal allocate: 40.
	self
		oid_fmt: address
		id: self.
	
	"The string is written without \0 terminator explicitly by libgit2.
	Adjacent memory might hold data."
	string := (address copyFrom: 1 to: 40) asString.
	address free.
	^ string
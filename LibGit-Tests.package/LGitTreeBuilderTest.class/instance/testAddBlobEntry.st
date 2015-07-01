tests
testAddBlobEntry
	| blob entry |
	"crate blob"
	blob := LGitBlob of: repository fromString: 'some string'.
	
	"create entry"
	builder createNew.
	builder addEntry: blob filename: 'foo'.
	entry := builder getEntryNamed: 'foo'.
	
	self assert: entry class equals: LGitTreeEntry.
	self assert: entry filename equals: 'foo'.
	self assert: entry object equals: blob
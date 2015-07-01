tests
testAddTreeEntry
	| tree entry |
	"create tree"
	builder createNew.
	tree := builder newTree.

	"create entry"
	builder := LGitTreeBuilder of: repository.
	builder createNew.
	builder addEntry: tree filename: 'foo'.
	entry := builder getEntryNamed: 'foo'.
	
	self assert: entry class equals: LGitTreeEntry.
	self assert: entry filename equals: 'foo'.
	self assert: entry object equals: tree
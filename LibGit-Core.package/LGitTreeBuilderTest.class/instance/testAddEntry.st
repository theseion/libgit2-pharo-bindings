tests
testAddEntry
	| blob entry |
	blob := LGitBlob
		newFromString: 'some string'
		of: repository.
	builder createNew.
	builder
		addEntry: blob
		filename: 'foo'.
		
	entry := builder getEntryNamed: 'foo'.
	self assert: entry class equals: LGitTreeEntry.
	self assert: entry filename equals: 'foo'.
	self assert: entry object equals: blob
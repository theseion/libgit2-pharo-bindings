tests
testWriteBlob
	| blob entry treeId tree entryBlob |
	"crate blob"
	blob := LGitBlob of: repository fromString: 'some string'.
	
	"create entry"
	builder createNew.
	builder addEntry: blob filename: 'foo'.
	treeId := builder write.

	"retrieve the tree"
	tree := LGitTree of: repository fromId: treeId.
	self assert: tree entries size equals: 1.
	entry := tree entries first.
	self assert: entry filename equals: 'foo'.
	
	entryBlob := entry object.
	self assert: entryBlob isBlob.
	self assert: entryBlob id equals: blob id.
	self deny: entryBlob == blob.
	self assert: entryBlob = blob.
	
	"id should not use external memory"
	self deny: entryBlob id getHandle isExternalAddress 
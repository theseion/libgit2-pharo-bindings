tests
testCreateCommit
	| blob subTreeId rootTree author commit head headRef |
	blob := self createBlob.
	subTreeId := self createSubTreeWith: blob.
	rootTree := self createRootTreeWith: subTreeId.
	author := self createAuthor.
	
	commit := LGitCommit of: repository.
	commit
		writeTree: rootTree
		message: 'eat my shorts'
		parents: { }
		reference: 'refs/heads/master'
		author: author
		committer: author.
	
	headRef := repository head.
	self assert: headRef class equals: LGitReference.
	head := headRef object.
	self assert: head class equals: LGitCommit.
	self deny: head hasParents.
	self assert: head message equals: 'eat my shorts'.
	self assert: head author equals: author.
	self assert: head committer equals: author.
	self deny: head tree isLeaf.
	self deny: head tree entries isEmpty.
	self assert: head tree entries size equals: 1.
	self assert: head tree entries first object isLeaf.
	self assert: head tree entries first object entries first object equals: blob
	
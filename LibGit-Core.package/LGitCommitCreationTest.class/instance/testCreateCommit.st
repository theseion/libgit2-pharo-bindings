tests
testCreateCommit
	| blob subTreeId rootTree author  head headRef builder |
	blob := self createBlob.
	subTreeId := self createSubTreeWith: blob.
	rootTree := self createRootTreeWith: subTreeId.
	author := self createAuthor.
	
	(builder := LGitCommitBuilder of: repository)
		tree: rootTree;
		message: 'eat my shorts';
		parents: { };
		updateReference: 'refs/heads/master';
		author: author;
		committer: author;
		writeCommit.
	self assert: builder writtenCommit tree equals: rootTree.
	
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
	
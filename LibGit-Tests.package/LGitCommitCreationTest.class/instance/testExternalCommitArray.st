tests
testExternalCommitArray
	| blob subTree rootTree author head headRef array |
	blob := self createBlob.
	subTree := self createSubTreeWith: blob.
	rootTree := self createRootTreeWith: subTree.
	author := self createAuthor.
	(LGitCommitBuilder of: repository)
		tree: rootTree;
		message: 'eat my shorts';
		parents: {};
		updateReference: repository master;
		author: author;
		committer: author;
		writeCommit.
	headRef := repository head.
	self assert: headRef class equals: LGitReference.
	head := headRef object.

	array := LGitExternalCommitArray fromCollection: (Array with: head)
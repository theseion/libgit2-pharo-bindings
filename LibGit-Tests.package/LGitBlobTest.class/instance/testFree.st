tests
testFree
	self
		assertGarbageCollectAll: LGitBlob
		after: [ 
			| blob repo |
			repo := self newRepo state3Opened.
			blob := LGitBlob of: repo fromString: 'eat my shorts' ]
tests
testFree
	self
		assertGarbageCollectAll: LGitBlob
		after: [ 
			| blob repository |
			repository := self newRepo state3Opened.
			blob := LGitBlob of: repository fromString: 'eat my shorts' ]
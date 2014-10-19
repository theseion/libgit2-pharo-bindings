tests
testFree

	self 
		assertGarbageCollectAll: LGitBlob
		after: [ 
			| blob repository |
			repository := self newRepo state3Opened.
			blob := LGitBlob newFromString: 'eat my shorts' of: repository ]
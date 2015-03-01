tests
testFree
	self 
		assertGarbageCollectAll: LGitBlob
		after: [ 
			| blob repository |
			repository := self newRepo state3Opened.
			blob := LGitBlob
				of: repository
				freeAfterUse: true
				fromString: 'eat my shorts' ]
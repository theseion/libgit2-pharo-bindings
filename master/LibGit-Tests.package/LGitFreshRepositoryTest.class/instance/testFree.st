tests
testFree

	self 
		assertGarbageCollectAll: LGitRepository 
		after: [ self newRepo state0MissingReference ]
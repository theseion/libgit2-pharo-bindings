tests
testVersion

	| version |
	
	LGitLibrary uniqueInstance libgit2_init.
	version := LGitLibrary uniqueInstance version.
	LGitLibrary uniqueInstance libgit2_shutdown.
	
	self assert: (version allSatisfy: [ :each | each >= 0 ])

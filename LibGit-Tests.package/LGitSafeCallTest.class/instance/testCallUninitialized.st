tests
testCallUninitialized
	| repo |
	repo := LGitTestRepository state1ExistingReference.
	self deny: repo isReady.
	self
		should: [ repo head ]
		raise: LGitObjectNotInitialized.
	"Call a second time, now the ffi method has been translated"
	self
		should: [ repo head ]
		raise: LGitObjectNotInitialized.
	
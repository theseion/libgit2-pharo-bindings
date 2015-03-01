tests
testEqualsUninitialized
	| repo commit |
	repo := self newRepo state0MissingReference.
	commit := LGitCommit of: repo freeAfterUse: true.
	self assert: commit equals: commit.
	"two uninitialized commits are assumed to be different"
	self deny: commit = (LGitCommit of: repo freeAfterUse: true).
	self deny: commit == (LGitCommit of: repo freeAfterUse: true).
	
	repo := self newRepo state4WithCommit.
	commit := repo head object.
	self deny: commit = (LGitCommit of: repo freeAfterUse: true).
	self deny: (LGitCommit of: repo freeAfterUse: true) = commit
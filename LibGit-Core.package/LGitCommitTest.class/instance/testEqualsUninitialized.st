tests
testEqualsUninitialized
	| repo commit |
	repo := self newRepo state0MissingReference.
	commit := LGitCommit of: repo.
	self assert: commit equals: commit.
	"two uninitialized commits are assumed to be different"
	self deny: commit = (LGitCommit of: repo).
	self deny: commit == (LGitCommit of: repo).
	
	repo := self newRepo state4WithCommit.
	commit := repo head object.
	self deny: commit = (LGitCommit of: repo).
	self deny: (LGitCommit of: repo) = commit
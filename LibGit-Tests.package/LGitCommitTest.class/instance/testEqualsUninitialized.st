tests
testEqualsUninitialized
	| repo commit |
	repo := self newRepo state0MissingReference.
	commit := LGitCommit of: repo.
	"two uninitialized commits are different"
	self assert: commit equals: commit.
	self deny: commit = (LGitCommit of: repo).
	self deny: commit == (LGitCommit of: repo).
	
	"an initialized commit and an uninitialized commit are different"
	repo := self newRepo state4WithCommit.
	commit := repo head object.
	self deny: commit = (LGitCommit of: repo).
	self deny: (LGitCommit of: repo) = commit
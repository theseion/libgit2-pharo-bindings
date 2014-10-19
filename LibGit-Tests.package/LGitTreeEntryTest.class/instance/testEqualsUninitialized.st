tests
testEqualsUninitialized
	| repo entry |
	repo := self newRepo state0MissingReference.
	entry := LGitTreeEntry of: repo.
	self assert: entry equals: entry.
	"two uninitialized entries are assumed to be different"
	self deny: entry = (LGitTreeEntry of: repo).
	self deny: entry == (LGitTreeEntry of: repo).
	
	repo := self newRepo state4WithCommit.
	entry := repo head object tree entries first.
	self deny: entry = (LGitTreeEntry of: repo).
	self deny: (LGitTreeEntry of: repo) = entry
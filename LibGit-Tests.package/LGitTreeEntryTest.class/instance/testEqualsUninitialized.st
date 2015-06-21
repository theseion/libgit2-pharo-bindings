tests
testEqualsUninitialized
	| repo entry |
	repo := self newRepo state0MissingReference.
	entry := LGitTreeEntry of: repo.
	"two uninitialized entries are different"
	self assert: entry equals: entry.
	self deny: entry = (LGitTreeEntry of: repo).
	self deny: entry == (LGitTreeEntry of: repo).
	
	"an initialized entry and an uninitialized entry are different"
	repo := self newRepo state4WithCommit.
	entry := repo head object tree entries first.
	self deny: entry = (LGitTreeEntry of: repo).
	self deny: (LGitTreeEntry of: repo) = entry
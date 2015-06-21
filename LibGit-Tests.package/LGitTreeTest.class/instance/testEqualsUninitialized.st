tests
testEqualsUninitialized
	| tree repo |
	repo := self newRepo state0MissingReference.
	tree := LGitTree of: repo.
	"two uninitialized trees are different"
	self assert: tree equals: tree.
	self deny: tree = (LGitTree of: repo).
	
	"an initialized tree and an uninitialized tree are different"
	repo := self newRepo state4WithCommit.
	tree := repo head object tree.
	self deny: tree = (LGitTree of: repo).
	self deny: (LGitTree of: repo) = tree
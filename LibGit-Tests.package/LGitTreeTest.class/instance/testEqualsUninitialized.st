tests
testEqualsUninitialized
	| tree repo |
	repo := self newRepo state0MissingReference.
	tree := LGitTree of: repo.
	self assert: tree equals: tree.	"two different trees that are uninitialized are assumed to be different"
	self deny: tree = (LGitTree of: repo).
	repo := self newRepo state4WithCommit.
	tree := repo head object tree.
	self deny: tree = (LGitTree of: repo).
	self deny: (LGitTree of: repo) = tree
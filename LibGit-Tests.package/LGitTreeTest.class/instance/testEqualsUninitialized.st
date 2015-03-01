tests
testEqualsUninitialized
	| tree repo |
	repo := self newRepo state0MissingReference.
	tree := LGitTree of: repo freeAfterUse: true.
	self assert: tree equals: tree.
	"two different trees that are uninitialized are assumed to be different"
	self deny: tree = (LGitTree of: repo freeAfterUse: true).
	
	repo := self newRepo state4WithCommit.
	tree := repo head object tree.
	self deny: tree = (LGitTree of: repo freeAfterUse: true).
	self deny: (LGitTree of: repo freeAfterUse: true) = tree
tests
testEqualsUninitialized
	| repo blob |
	repo := self newRepo state0MissingReference.
	blob := LGitBlob of: repo freeAfterUse: true.
	self assert: blob equals: blob.
	"two uninitialized blobs are assumed to be different"
	self deny: blob = (LGitBlob of: repo freeAfterUse: true).
	self deny: blob == (LGitBlob of: repo freeAfterUse: true).
	
	repo := self newRepo state4WithCommit.
	blob := repo head object.
	self deny: blob = (LGitBlob of: repo freeAfterUse: true).
	self deny: (LGitBlob of: repo freeAfterUse: true) = blob
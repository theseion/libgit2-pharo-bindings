tests
testEqualsUninitialized
	| repo blob |
	repo := self newRepo state0MissingReference.
	blob := LGitBlob of: repo.
	"two uninitialized blobs are different"
	self assert: blob equals: blob.
	self deny: blob = (LGitBlob of: repo).
	self deny: blob == (LGitBlob of: repo).
	
	"an initialized blob and an uninitialized blob are different"
	repo := self newRepo state4WithCommit.
	blob := repo head object.
	self deny: blob = (LGitBlob of: repo).
	self deny: (LGitBlob of: repo) = blob
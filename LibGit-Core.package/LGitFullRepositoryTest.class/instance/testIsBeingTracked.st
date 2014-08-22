tests
testIsBeingTracked
	| repo |
	repo := self newRepo state4WithCommit.
	(repo repositoryReference / 'new file') writeStreamDo: [ :stream |
		stream nextPutAll: 'content' ].
	self assert: (repo index hasEntry: 'libgit_tests')
	"self assert: (repo isBeingTracked: 'libgit_tests/foo' asFileReference).
	self deny: (repo isBeingTracked: 'new file' asFileReference)"
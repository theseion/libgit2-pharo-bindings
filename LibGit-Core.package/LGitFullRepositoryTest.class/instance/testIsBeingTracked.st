tests
testIsBeingTracked
	| repo |
	repo := self newRepo state4WithCommit.
	(repo repositoryReference / 'new file') writeStreamDo: [ :stream |
		stream nextPutAll: 'content' ].
	self assert: (repo isBeingTracked: 'libgit_tests').
	self deny: (repo isBeingTracked: 'new file').
	
	repo index addAll.
	self assert: (repo isBeingTracked: 'new file')
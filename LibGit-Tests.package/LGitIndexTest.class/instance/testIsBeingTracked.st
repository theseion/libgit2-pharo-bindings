tests
testIsBeingTracked
	| repo index  |
	repo := self newRepo state4WithCommit.
	(repo repositoryReference / 'new file') writeStreamDo: [ :stream |
		stream nextPutAll: 'content' ].
	index := repo index.
	self assert: (index isBeingTracked: 'libgit_tests').
	self deny: (index isBeingTracked: 'new file').
	
	index addAll.
	self assert: (index isBeingTracked: 'new file')
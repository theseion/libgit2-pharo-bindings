tests
testAddAll
	| repo index file allFiles |
	repo := self newRepo state4WithCommit.
	index := repo index.
	allFiles := index entriesSelect: [ :path :status | true ].
	self assert: allFiles size equals: 2.
	file := (repo repositoryReference / 'a new file.ext').
	file writeStreamDo: [ :stream |
		stream nextPutAll: 'When I grow up, I wanna be a blob!' ].
	allFiles := index entriesSelect: [ :path :status | true ].
	self assert: allFiles size equals: 3.
	self deny: (index isBeingTracked: file basename).
	
	index addAll.
	self assert: (index isBeingTracked: file basename)
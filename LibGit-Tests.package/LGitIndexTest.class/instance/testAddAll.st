tests
testAddAll
	| repo index allFiles |
	repo := self newRepo state4WithCommit.
	index := repo index.
	allFiles := index entriesSelect: [ :path :status | true ].
	self assert: allFiles isEmpty. "repo is clean after commit"
	file := (repo repositoryReference / 'a new file.ext').
	file writeStreamDo: [ :stream |
		stream nextPutAll: 'When I grow up, I wanna be a blob!' ].
	allFiles := index entriesSelect: [ :path :status | true ].
	self assert: allFiles size equals: 1.
	self deny: (index isBeingTracked: file basename).

	index addAll.
	self assert: (index isBeingTracked: file basename)
tests
testEntryByNameAbsent
	| repo headTree entry |
	repo := self newRepo state4WithCommit.
	headTree := repo head resolve object tree.
	entry := headTree entryByName: 'xxx' ifAbsent: [ #absent ].
	self assert: entry = #absent
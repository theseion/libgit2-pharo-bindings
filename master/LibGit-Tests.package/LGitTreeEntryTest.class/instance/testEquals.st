tests
testEquals
	| repo entry entry2 |
	repo := self newRepo state4WithCommit.
	entry := repo head resolve object tree entries first.
	entry2 := repo head resolve object tree entries first.
	self assert: entry equals: entry.
	self assert: entry equals: entry2.
	self deny: entry == entry2.
	self assert: entry filename equals: entry2 filename.
	self assert: entry object equals: entry2 object
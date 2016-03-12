tests
testEntryByPathAbsent
	| repo headTree entry |
	repo := self newRepo state4WithCommit.
	headTree := repo head resolve object tree.

	entry := headTree entryByPath: 'xxx' ifAbsent: [ #absent ].
	self assert: entry = #absent.
	
	entry := headTree entryByPath: 'libgit_tests/xxx' ifAbsent: [ #absent ].
	self assert: entry = #absent.

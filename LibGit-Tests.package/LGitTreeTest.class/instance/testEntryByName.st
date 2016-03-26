tests
testEntryByName
	| repo headTree entry |
	repo := self newRepo state4WithCommit.
	headTree := repo head resolve object tree.
	entry := headTree entryByName: 'libgit_tests' ifAbsent: [ nil ].
	self assert: entry filename = 'libgit_tests'.
	self assert: entry type = LGitObjectTypeEnum git_obj_tree
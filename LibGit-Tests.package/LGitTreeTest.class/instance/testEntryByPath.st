tests
testEntryByPath
	| repo headTree entry |
	repo := self newRepo state4WithCommit.
	headTree := repo head resolve object tree.

	entry := headTree entryByPath: 'libgit_tests' ifAbsent: [ nil ].
	self assert: entry filename = 'libgit_tests'.
	self assert: entry type = LGitObjectTypeEnum git_obj_tree.
	
	entry := headTree entryByPath: 'libgit_tests/foo' ifAbsent: [ nil ].
	self assert: entry filename = 'foo'.
	self assert: entry type = LGitObjectTypeEnum git_obj_blob.

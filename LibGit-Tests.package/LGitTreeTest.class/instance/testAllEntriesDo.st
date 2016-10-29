tests
testAllEntriesDo
	| repo directory blob builder treeId rootBuilder tree entries |
	repo := self newRepo state3Opened.
	directory := (repo workingDirectory / 'libgit_tests') ensureCreateDirectory.
	directory / 'foo' writeStreamDo: [ :stream | stream nextPutAll: 'eat my shorts' ].
	blob := LGitBlob of: repo fromFile: directory / 'foo'.
	builder := LGitTreeBuilder of: repo.
	builder createNew.
	builder addEntry: blob filename: 'foo'.
	treeId := builder write.
	rootBuilder := LGitTreeBuilder of: repo.
	rootBuilder createNew.
	rootBuilder addEntryWithId: treeId filename: 'libgit_tests' filemode: LGitFilemodeEnum git_filemode_tree.

	tree := rootBuilder newTree.
	entries := OrderedCollection new.
	tree allEntriesDo: [ :rootPath :entry :payload |
		entries add: rootPath -> entry filename.
		0 ].
	
	self assert: entries asArray equals: (Array 
		with: '' -> 'libgit_tests' 
		with: 'libgit_tests/' -> 'foo')
	
	

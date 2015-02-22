repository states
state4WithCommit
	| repo directory blob builder treeId rootBuilder tree author commitBuilder |
	<todo: 'see what cnm has to say about the update-ref change'>
	repo := self state3Opened.
	directory := (repo workingDirectory / 'libgit_tests') ensureCreateDirectory.
	directory / 'foo' writeStreamDo: [ :stream | stream nextPutAll: 'eat my shorts' ].
	blob := LGitBlob newFromFile: directory / 'foo' of: repo.
	builder := LGitTreeBuilder of: repo.
	builder createNew.
	builder addEntry: blob filename: 'foo'.
	treeId := builder write.
	rootBuilder := LGitTreeBuilder of: repo.
	rootBuilder createNew.
	rootBuilder addEntryWithId: treeId filename: 'libgit_tests' filemode: (LG2GitFilemodeTE at: #GIT_FILEMODE_TREE) value.
	tree := rootBuilder newTree.
	author := LGitSignature new
		setName: 'Bart Simpson';
		setEmail: 'bartman@gotham.com';
		setDateAndTime: DateAndTime now;
		yourself.
	
	(commitBuilder := LGitCommitBuilder of: repo)
		tree: tree;
		message: 'push test';
		parents: { };
		updateReference: repo master;
		author: author;
		committer: author;
		writeCommit;
		yourself.
	
	"temporary workaround for updating the reference"
	repo head resolve isHead ifFalse: [ 
		repo
			createBranch: 'master'
			targetId: commitBuilder commitId
			force: true ].
	
	repo index
		addAll;
		updateAll;
		writeToDisk.
	
	^ repo
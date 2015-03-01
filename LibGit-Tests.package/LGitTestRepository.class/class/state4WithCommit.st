repository states
state4WithCommit
	| repo directory blob builder treeId rootBuilder tree author commitBuilder |
	<todo: 'see what cnm has to say about the update-ref change'>
	repo := self state3Opened.
	directory := (repo workingDirectory / 'libgit_tests') ensureCreateDirectory.
	directory / 'foo' writeStreamDo: [ :stream | stream nextPutAll: 'eat my shorts' ].
	blob := LGitBlob
		of: repo
		freeAfterUse: true
		fromFile: directory / 'foo'.
	builder := LGitTreeBuilder of: repo freeAfterUse: true.
	builder createNew.
	builder addEntry: blob filename: 'foo'.
	treeId := builder write.
	rootBuilder := LGitTreeBuilder of: repo freeAfterUse: true.
	rootBuilder createNew.
	rootBuilder addEntryWithId: treeId filename: 'libgit_tests' filemode: (LG2GitFilemodeTE at: #GIT_FILEMODE_TREE) value.
	tree := rootBuilder newTree.
	author := LGitSignature new
		name: 'Bart Simpson';
		email: 'bartman@gotham.com';
		dateAndTime: DateAndTime now;
		yourself.
	
	(commitBuilder := LGitCommitBuilder of: repo freeAfterUse: true)
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
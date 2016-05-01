repository states
state4WithCommit
	<todo: 'see what cnm has to say about the update-ref change'>
	| repo directory blob builder treeId rootBuilder tree author commitBuilder |
	repo := self state3Opened.
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
	author := LGitSignature name: 'Bart Simpson' email: 'bartman@gotham.com'.
	(commitBuilder := LGitCommitBuilder of: repo)
		tree: tree;
		message: 'push test';
		parents: {};
		updateReference: repo master;
		author: author;
		committer: author;
		writeCommit;
		yourself.	"temporary workaround for updating the reference"
	repo head resolve isHead
		ifFalse: [ repo createBranch: 'master' targetId: commitBuilder commitId force: true ].
	repo index
		addAll;
		updateAll;
		writeToDisk.
	^ repo
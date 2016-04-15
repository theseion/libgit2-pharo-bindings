tests
testLibGit2Loadable

	self assert: LGitLibrary uniqueInstance libgit2_init > 0.
	LGitLibrary uniqueInstance libgit2_shutdown
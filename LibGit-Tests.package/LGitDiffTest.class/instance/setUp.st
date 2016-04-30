running
setUp
	super setUp.
	repository := self newRepo state4WithCommit.
	file := self repository repositoryReference / 'libgit_tests' / 'foo'
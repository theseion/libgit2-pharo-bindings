running
setUp
	super setUp.
	repository := self newRepo state4WithCommit.
	builder := LGitTreeBuilder of: repository
running
setUp
	super setUp.
	repository := self newRepo state3Opened.
	builder := LGitTreeBuilder of: repository
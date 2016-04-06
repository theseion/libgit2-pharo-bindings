tests
testInitAndShutdown

	| initNr shutdownNr |
	
	initNr := LGitLibrary uniqueInstance libgit2_init.
	shutdownNr := LGitLibrary uniqueInstance libgit2_shutdown.
	self assert: initNr >= 1.
	self assert: initNr equals: shutdownNr + 1.
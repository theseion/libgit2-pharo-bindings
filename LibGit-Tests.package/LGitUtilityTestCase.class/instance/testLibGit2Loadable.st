tests
testLibGit2Loadable
	self assert: (NativeBoost forCurrentPlatform loadModule: LGitExternalObject libraryNameOrHandle) > 0
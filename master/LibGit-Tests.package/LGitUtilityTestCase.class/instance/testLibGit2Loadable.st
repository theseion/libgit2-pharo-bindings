tests
testLibGit2Loadable
	self assert: (NativeBoost forCurrentPlatform loadModule: LGitExternalObject libraryName) > 0
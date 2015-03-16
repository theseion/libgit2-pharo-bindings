tests
testLibGit2Loadable
	self assert: (NativeBoost forCurrentPlatform loadModule: LGitGlobal libraryName) > 0
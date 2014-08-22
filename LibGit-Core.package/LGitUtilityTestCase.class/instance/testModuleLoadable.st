tests
testModuleLoadable
	self assert: (NativeBoost forCurrentPlatform loadModule: LGitExternalObject libraryNameOrHandle) > 0
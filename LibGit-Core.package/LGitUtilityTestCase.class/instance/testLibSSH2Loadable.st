tests
testLibSSH2Loadable
	self assert: (NativeBoost forCurrentPlatform loadModule: 'libssh2.dylib') > 0
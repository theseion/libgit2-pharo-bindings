tests
testLibSSH2Loadable
	| libraryName |
	libraryName := OSPlatform current isMacOSX
		ifTrue: [ 'libssh2.1.dylib' ]
		ifFalse: [ 'libssh2.so.1.0.1' ].
	self assert: (NativeBoost forCurrentPlatform loadModule: libraryName) > 0
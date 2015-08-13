tests
testLibSSH2Loadable
	| libraryName |
	libraryName := OSPlatform current isMacOSX
		ifTrue: [ 'libssh2.1.dylib' ]
		ifFalse: [
			OSPlatform current isUnix
				ifTrue: [ 'libssh2.so.1' ]
				ifFalse: [ 'libssh2-1.dll' ] ].
	self assert: (NativeBoost forCurrentPlatform loadModule: libraryName) > 0
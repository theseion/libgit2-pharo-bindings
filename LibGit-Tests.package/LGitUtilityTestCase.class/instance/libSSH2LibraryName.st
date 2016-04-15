resources
libSSH2LibraryName
	^OSPlatform current isMacOSX
		ifTrue: [ 'libssh2.1.dylib' ]
		ifFalse: [
			OSPlatform current isUnix
				ifTrue: [ 'libssh2.so.1' ]
				ifFalse: [ 'libssh2-1.dll' ] ]
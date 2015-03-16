native-boost
libraryName
	^ OSPlatform current isMacOSX
		ifTrue: [ 'libgit2.0.22.0.dylib' ]
		ifFalse: [ 'libgit2.so.0.22.0' ]
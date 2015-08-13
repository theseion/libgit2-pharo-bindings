native-boost
libraryName
	^ OSPlatform current isMacOSX
		ifTrue: [ 'libgit2.0.dylib' ]
		ifFalse: [
			OSPlatform current isUnix
				ifTrue: [ 'libgit2.so.0' ]
				ifFalse: [  'libgit2.dll' ] ]
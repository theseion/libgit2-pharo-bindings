native-boost
libraryNameOrHandle
	^ (LibraryHandle isNil or: [
		NativeBoost sessionChanged: Session ])
			ifTrue: [
				Session := NativeBoost uniqueSessionObject.
				LibraryHandle := NativeBoost forCurrentPlatform loadModule: self libraryName ]
			ifFalse: [ LibraryHandle ]
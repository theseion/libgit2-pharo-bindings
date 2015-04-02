libgit-finalization
getHandles
	^ self prim_strings
		ifNotNil: [ :strings | super getHandles copyWith: strings ]
		ifNil: [ super getHandles ]
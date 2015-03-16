libgit-finalization
finalizeResourceData: aFinalizer
	aFinalizer isGarbageCollectionDisabled ifTrue: [ ^ self ].
	aFinalizer performFinalization
libgit-finalization
freeAfterUse: aBoolean
	aBoolean
		ifTrue: [ self finalizer enableGarbageCollection ]
		ifFalse: [ self finalizer disableGarbageCollection ]
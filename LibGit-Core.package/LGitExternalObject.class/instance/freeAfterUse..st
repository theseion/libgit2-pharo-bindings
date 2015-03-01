native-boost
freeAfterUse: aBoolean
	aBoolean
		ifTrue: [ self finalizer enable ]
		ifFalse: [ self finalizer disable ]
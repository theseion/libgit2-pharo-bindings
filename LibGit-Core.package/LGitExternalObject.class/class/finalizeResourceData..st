native boost
finalizeResourceData: aFinalizer
	aFinalizer isEnabled ifFalse: [ ^ self ].
	self object_free: aFinalizer value
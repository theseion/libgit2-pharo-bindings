native boost
finalizeResourceData: aHandle
	"Don't make the call if object not in external memory"
	aHandle isNull ifTrue: [ ^ self ].
	self object_free: aHandle value
helpers
assertGarbageCollectAll: aClass after: aBlock

	| instanceCount |
	3 timesRepeat: [ Smalltalk garbageCollect ].
	instanceCount := aClass allInstances size.
	
	aBlock value.
	
	3 timesRepeat: [ Smalltalk garbageCollect ].
	self assert: aClass allInstances size equals: instanceCount.
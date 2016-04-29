as yet unclassified
fromExternalAddress: anAddress
	anAddress isNull
		ifTrue: [ ^ nil ].
	^ self fromHandle: anAddress getHandle
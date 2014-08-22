printing
printOn: aStream
	self isReady
		ifTrue: [ super printOn: aStream ]
		ifFalse: [ | title |
			title := self class name.
			aStream
				nextPutAll: (title first isVowel ifTrue: [ 'an ' ] ifFalse: [ 'a ' ]);
				nextPutAll: title ]
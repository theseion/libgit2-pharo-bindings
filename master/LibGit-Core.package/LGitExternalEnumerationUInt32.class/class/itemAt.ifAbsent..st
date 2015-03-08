accessing
itemAt: aValue ifAbsent: exceptionBlock
	self declaration
		associationsDo: [ :assoc | 
			aValue = assoc value value
				ifTrue: [ ^ assoc key ] ].
	^ exceptionBlock value
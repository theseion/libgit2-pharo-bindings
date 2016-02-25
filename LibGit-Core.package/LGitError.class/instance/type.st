accessing
type
	^ self isNull
		ifFalse: [ self klass ]
		ifTrue: [ nil ]
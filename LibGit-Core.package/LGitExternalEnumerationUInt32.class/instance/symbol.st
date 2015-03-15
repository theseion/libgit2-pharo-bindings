accessing
symbol
	^ self class declaration
		at: self value
		ifAbsent: [ nil ]
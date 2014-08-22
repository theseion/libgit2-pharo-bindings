class initialization
initialize
	self isAbstract ifTrue: [ ^ self ].
	
	self initValueType: self valueTypeName
accessing
declaration
	^ declaration ifNil: [ self buildDeclaration ]
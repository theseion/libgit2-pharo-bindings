accessing
declaration
	^ declaration ifNil: [ declaration := self buildDeclaration ]
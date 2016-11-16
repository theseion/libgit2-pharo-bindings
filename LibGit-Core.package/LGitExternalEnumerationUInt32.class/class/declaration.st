accessing
declaration
	^ declaration ifNil: [ self literalDeclaration ]
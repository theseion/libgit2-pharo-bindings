class initialization
buildDeclaration
	| dictionary |
	dictionary := self literalDeclaration.
	self compileAccessorsFrom: dictionary.
	
	^ dictionary
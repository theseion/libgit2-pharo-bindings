enum declaration
literalDeclaration
	^ self enumDecl in: [ :decl |
		decl isDictionary
			ifTrue: [ decl ]
			ifFalse: [ Dictionary newFromPairs: decl ] ]
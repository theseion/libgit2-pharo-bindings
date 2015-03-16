enum declaration
literalDeclaration
	| decl |
	decl := self enumDecl.
	decl := decl isDictionary
		ifTrue: [ decl ]
		ifFalse: [ Dictionary newFromPairs: decl ].
		
	"Make values point to names. An instance always knows its
	value but not its name."
	^ (decl keys collect: [ :symbol |
		(decl at: symbol) -> symbol ]) asDictionary
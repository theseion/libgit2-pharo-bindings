operations
checkout: aString
	<todo: 'use proper exceptions'>
	| branch |
	self assert: aString notNil.
	self assert: aString trimBoth notEmpty.
	branch := (self lookupBranch: aString).
	self checkout_treeish: branch object.
	self setHead: branch.


tests
testLookupHead
	| repo ref |
	repo := self newRepo state3Opened.
	ref := repo lookup: 'HEAD'.
	
	self assert: ref class equals: LGitReference.
	self assert: ref name equals: 'HEAD'.
	self 
		should: [ ref resolve ] "refs/heads/master not found"
		raise: LGitAbstractError
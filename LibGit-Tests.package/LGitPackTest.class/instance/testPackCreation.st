tests
testPackCreation
	| repo packReference |
	repo := self newRepo state4WithCommit.
	packReference := repo repositoryReference / '.git/objects/pack'.
	self assert: packReference entries isEmpty.
	
	repo createPackForReference: repo head.
	self assert: packReference exists.
	self assert: packReference files size equals: 2.
	#('.idx' '.pack') do: [ :suffix |
		self assert: (packReference files contains: [ :theFile |
			theFile basename endsWith: suffix ]) ]
	
	
tests
testCreateTag
	| repo |
	repo := self newRepo state4WithCommit.

	repo 
		createTag: 'simpson' 
		targetId: repo head object id 
		force: true.
	
	self 
		assert: (repo revparse: 'refs/tags/simpson')
		equals: repo head object

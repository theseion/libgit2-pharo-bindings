tests
testEquals
	| repo head |
	repo := self newRepo state4WithCommit.
	head := repo head object.
	self assert: head class equals: LGitCommit.
	self assert: head id class equals: LGitId.
	
	self assert: head id = head id.
	self deny: head id = LGitId new.
	self deny: head id = Object.
	
	self assert: head tree id class equals: LGitId.
	self deny: head id = head tree id
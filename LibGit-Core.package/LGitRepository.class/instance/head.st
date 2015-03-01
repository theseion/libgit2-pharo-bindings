accessing
head
	| head |
	head := LGitReference of: self freeAfterUse: true.
	self withReturnHandlerDo: [ self repository_head: head of: self ].
	
	^ head
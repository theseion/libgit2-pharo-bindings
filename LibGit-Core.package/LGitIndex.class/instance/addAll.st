operations
addAll
	| pathspec |
	pathspec := LGitStringArray externalNew
		freeAfterUse: true;
		count: 0;
		yourself.
	self withReturnHandlerDo: [ 
		self
			index_add_all: self
			pathspec: pathspec
			flags: 0
			callback: (LGitIndexMatchedPathCallback on: [ :a :b :c | 0 ])
			payload: nil ]
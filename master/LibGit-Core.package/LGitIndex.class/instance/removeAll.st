operations
removeAll
	| pathspec |
	pathspec := LGitStringArray externalNew
		count: 0;
		yourself.
	self withReturnHandlerDo: [ 
		self
			index_remove_all: self
			pathspec: pathspec
			callback: (LGitIndexMatchedPathCallback on: [ :a :b :c | 0 ])
			payload: nil ].
		
	pathspec free
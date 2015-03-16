operations
updateAll
	| pathspec |
	pathspec := LGitStringArray externalNew
		freeAfterUse: true;
		count: 1;
		strings: { '*' };
		yourself.
	self withReturnHandlerDo: [ 
		self
			index_update_all: self
			pathspec: pathspec
			callback: (LGitIndexMatchedPathCallback on: [ :a :b :c | 0 ])
			payload: nil ]
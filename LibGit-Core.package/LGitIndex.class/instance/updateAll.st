operations
updateAll
	| pathspec stringsPointer |
	stringsPointer :=  (LGitExternalStringArray fromCollection: { '*' }) address.
	pathspec := LG2GitStrarrayS new
		count: 1;
		strings: stringsPointer;
		yourself.
	self withReturnHandlerDo: [ 
		self
			index_update_all: self
			pathspec: pathspec
			callback: (LG2GitIndexMatchedPathCb on: [ :a :b :c | 0 ])
			payload: nil ]
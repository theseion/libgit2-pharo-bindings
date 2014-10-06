operations
updateAll
	| pathspec stringsPointer |
	stringsPointer :=  (LGitStringArray fromCollection: { '*' }) address.
	pathspec := LG2GitStrarrayS new
		count: 1;
		strings: stringsPointer.
	self withReturnHandlerDo: [ 
		self
			index_update_all: self
			pathspec: pathspec
			callback: (LG2GitIndexMatchedPathCb on: [ :a :b :c | 0 ])
			payload: NBExternalAddress null ]
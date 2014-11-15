operations
removeAll
	| pathspec |
	pathspec := LG2GitStrarrayS new.
	self withReturnHandlerDo: [ 
		self
			index_remove_all: self
			pathspec: pathspec
			callback: (LG2GitIndexMatchedPathCb on: [ :a :b :c | 0 ])
			payload: nil ]
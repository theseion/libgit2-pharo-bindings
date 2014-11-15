operations
addAll
	| pathspec |
	pathspec := LG2GitStrarrayS new.
	self withReturnHandlerDo: [ 
		self
			index_add_all: self
			pathspec: pathspec
			flags: 0
			callback: (LG2GitIndexMatchedPathCb on: [ :a :b :c | 0  ])
			payload: nil ]
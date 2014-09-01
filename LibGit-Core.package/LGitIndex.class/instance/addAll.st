operations
addAll
	| pathspec |
	pathspec := LG2GitStrarrayS new.
	self withReturnHandlerDo: [ 
		self
			index_add_all: self
			pathspec: pathspec
			flags: 0
			callback: NBExternalAddress null "LG2GitIndexMatchedPathCb"
			payload: NBExternalAddress null ]
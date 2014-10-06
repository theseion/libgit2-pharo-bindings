operations
removeAll
	| pathspec |
	pathspec := LG2GitStrarrayS new.
	self withReturnHandlerDo: [ 
		self
			index_remove_all: self
			pathspec: pathspec
			callback: NBExternalAddress null "LG2GitIndexMatchedPathCb"
			payload: NBExternalAddress null ]
enumerating
allEntriesDo: aBlock
	"aBlock needs to have three parameters:
	- root path
	- entry
	- payload.
	To terminate traversal, aBlock should answer an integer ~= 0, 0 to continue"
	self withReturnHandlerDo: [ 
		self
			tree_walk: self
			mode: (LG2GitTreewalkModeE at: #GIT_TREEWALK_PRE)
			callback: (LGitTreewalkCallback on: aBlock)
			payload: NBExternalAddress null ]
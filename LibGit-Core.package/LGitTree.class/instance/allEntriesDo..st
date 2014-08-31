enumerating
allEntriesDo: aBlock
	"The entries will be traversed in the specified order, children subtrees will be automatically loaded as required, and the callback will be called once per entry with the current (relative) root for the entry and the entry data itself.

If the callback returns a positive value, the passed entry will be skipped on the traversal (in pre mode). A negative value stops the walk."
	self withReturnHandlerDo: [ 
		self
			tree_walk: self
			mode: (LG2GitTreewalkModeE at: #GIT_TREEWALK_PRE)
			callback: (LGitTreewalkCallback on: aBlock)
			payload: NBExternalAddress null ]
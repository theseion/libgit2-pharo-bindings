foreign interface
indexer_commit: idx stats: stats 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_indexer_commit(LG2GitIndexerO idx, git_transfer_progress * stats)) options: #(  )
foreign interface
indexer_append: idx data: data size: size stats: stats 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_indexer_append(LG2GitIndexerO idx, NBVoid * data, NBInt32 size, git_transfer_progress * stats)) options: #(  )
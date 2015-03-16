foreign interface
indexer_free: idx 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_indexer_free(LG2GitIndexerO idx)) options: #(  )
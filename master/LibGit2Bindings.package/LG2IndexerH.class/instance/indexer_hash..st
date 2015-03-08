foreign interface
indexer_hash: idx 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_indexer_hash(LG2GitIndexerO idx)) options: #(  )
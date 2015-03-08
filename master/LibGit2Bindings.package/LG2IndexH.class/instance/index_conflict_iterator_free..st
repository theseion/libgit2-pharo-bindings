foreign interface
index_conflict_iterator_free: iterator 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_index_conflict_iterator_free(LG2GitIndexConflictIteratorO iterator)) options: #(  )
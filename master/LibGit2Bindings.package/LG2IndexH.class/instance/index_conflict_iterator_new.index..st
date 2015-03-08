foreign interface
index_conflict_iterator_new: iterator_out index: index 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_conflict_iterator_new(LG2GitIndexConflictIteratorO * iterator_out, LG2GitIndexO index)) options: #(  )
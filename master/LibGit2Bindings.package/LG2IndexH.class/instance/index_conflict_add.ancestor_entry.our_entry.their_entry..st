foreign interface
index_conflict_add: index ancestor_entry: ancestor_entry our_entry: our_entry their_entry: their_entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_conflict_add(LG2GitIndexO index, git_index_entry * ancestor_entry, git_index_entry * our_entry, git_index_entry * their_entry)) options: #(  )
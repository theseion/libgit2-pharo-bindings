foreign interface
index_conflict_next: ancestor_out our_out: our_out their_out: their_out iterator: iterator 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_conflict_next(git_index_entry * * ancestor_out, git_index_entry * * our_out, git_index_entry * * their_out, LG2GitIndexConflictIteratorO iterator)) options: #(  )
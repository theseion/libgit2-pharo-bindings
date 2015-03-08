foreign interface
index_conflict_get: ancestor_out our_out: our_out their_out: their_out index: index path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_conflict_get(git_index_entry * * ancestor_out, git_index_entry * * our_out, git_index_entry * * their_out, LG2GitIndexO index, NBExternalString path)) options: #(  )
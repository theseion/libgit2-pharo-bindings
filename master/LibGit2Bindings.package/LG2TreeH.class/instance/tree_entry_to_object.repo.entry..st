foreign interface
tree_entry_to_object: object_out repo: repo entry: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tree_entry_to_object(LG2GitObjectO * object_out, LG2GitRepositoryO repo, LG2GitTreeEntryO entry)) options: #(  )
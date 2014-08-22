foreign interface
index_entry_stage: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_entry_stage(git_index_entry * entry)) options: #(  )
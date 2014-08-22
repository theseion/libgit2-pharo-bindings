foreign interface
index_conflict_remove: index path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_conflict_remove(LG2GitIndexO index, NBExternalString path)) options: #(  )
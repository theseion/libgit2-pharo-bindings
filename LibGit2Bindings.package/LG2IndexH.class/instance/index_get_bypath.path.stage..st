foreign interface
index_get_bypath: index path: path stage: stage 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_index_entry * git_index_get_bypath(LG2GitIndexO index, NBExternalString path, NBInt32 stage)) options: #(  )
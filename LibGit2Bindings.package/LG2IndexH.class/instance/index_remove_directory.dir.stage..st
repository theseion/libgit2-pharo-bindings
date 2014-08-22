foreign interface
index_remove_directory: index dir: dir stage: stage 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_remove_directory(LG2GitIndexO index, NBExternalString dir, NBInt32 stage)) options: #(  )
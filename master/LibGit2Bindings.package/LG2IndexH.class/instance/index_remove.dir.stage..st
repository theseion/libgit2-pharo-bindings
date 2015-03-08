foreign interface
index_remove: index dir: dir stage: stage 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_remove(LG2GitIndexO index, NBExternalString dir, NBInt32 stage)) options: #(  )
foreign interface
index_add_bypath: index path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_add_bypath(LG2GitIndexO index, NBExternalString path)) options: #(  )
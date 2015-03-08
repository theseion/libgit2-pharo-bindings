foreign interface
index_open: out index_path: index_path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_open(LG2GitIndexO * out, NBExternalString index_path)) options: #(  )
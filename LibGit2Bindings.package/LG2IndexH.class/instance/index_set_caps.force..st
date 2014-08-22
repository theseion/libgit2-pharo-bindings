foreign interface
index_set_caps: index force: force 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_set_caps(LG2GitIndexO index, NBInt32 force)) options: #(  )
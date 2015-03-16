foreign interface
index_caps: index 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_caps(LG2GitIndexO index)) options: #(  )
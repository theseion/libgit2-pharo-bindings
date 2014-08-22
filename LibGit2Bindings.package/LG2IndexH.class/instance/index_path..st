foreign interface
index_path: index 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_index_path(LG2GitIndexO index)) options: #(  )
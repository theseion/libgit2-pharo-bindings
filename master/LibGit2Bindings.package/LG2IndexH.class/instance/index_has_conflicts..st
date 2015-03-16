foreign interface
index_has_conflicts: index 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_has_conflicts(LG2GitIndexO index)) options: #(  )
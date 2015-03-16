foreign interface
index_conflict_cleanup: index 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_index_conflict_cleanup(LG2GitIndexO index)) options: #(  )
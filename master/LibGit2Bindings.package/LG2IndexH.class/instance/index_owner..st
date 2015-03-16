foreign interface
index_owner: index 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitRepositoryO git_index_owner(LG2GitIndexO index)) options: #(  )
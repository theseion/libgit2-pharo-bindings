foreign interface
index_find: at_pos index: index path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_index_find(NBInt32 * at_pos, LG2GitIndexO index, NBExternalString path)) options: #(  )
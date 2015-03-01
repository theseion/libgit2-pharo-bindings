libgit - calls
index_find: at_pos index: index path: path 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_index_find(NBInt32 * at_pos, self, String path)) options: #( optCoerceNilToNull )
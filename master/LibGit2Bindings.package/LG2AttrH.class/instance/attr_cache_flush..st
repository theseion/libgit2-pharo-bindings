foreign interface
attr_cache_flush: repo 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_attr_cache_flush(LG2GitRepositoryO repo)) options: #(  )
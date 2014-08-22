foreign interface
config_iterator_free: iter 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_config_iterator_free(LG2GitConfigIteratorO iter)) options: #(  )
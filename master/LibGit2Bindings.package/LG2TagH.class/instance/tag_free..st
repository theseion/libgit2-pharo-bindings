foreign interface
tag_free: tag 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_tag_free(LG2GitTagO tag)) options: #(  )
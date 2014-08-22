foreign interface
tag_id: tag 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_tag_id(LG2GitTagO tag)) options: #(  )
foreign interface
tag_target_id: tag 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_oid * git_tag_target_id(LG2GitTagO tag)) options: #(  )
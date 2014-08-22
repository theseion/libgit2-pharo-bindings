foreign interface
tag_target_type: tag 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_otype git_tag_target_type(LG2GitTagO tag)) options: #(  )
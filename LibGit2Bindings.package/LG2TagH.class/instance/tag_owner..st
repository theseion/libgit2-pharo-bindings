foreign interface
tag_owner: tag 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitRepositoryO git_tag_owner(LG2GitTagO tag)) options: #(  )
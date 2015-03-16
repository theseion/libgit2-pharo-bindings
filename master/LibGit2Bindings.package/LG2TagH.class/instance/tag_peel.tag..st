foreign interface
tag_peel: tag_target_out tag: tag 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tag_peel(LG2GitObjectO * tag_target_out, LG2GitTagO tag)) options: #(  )
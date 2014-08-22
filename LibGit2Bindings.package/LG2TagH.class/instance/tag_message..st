foreign interface
tag_message: tag 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_tag_message(LG2GitTagO tag)) options: #(  )
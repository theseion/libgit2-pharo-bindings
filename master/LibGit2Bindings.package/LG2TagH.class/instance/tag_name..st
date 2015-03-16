foreign interface
tag_name: tag 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBExternalString git_tag_name(LG2GitTagO tag)) options: #(  )
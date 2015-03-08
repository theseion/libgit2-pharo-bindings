foreign interface
tag_tagger: tag 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(git_signature * git_tag_tagger(LG2GitTagO tag)) options: #(  )
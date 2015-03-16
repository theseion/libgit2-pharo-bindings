foreign interface
reflog_free: reflog 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBVoid git_reflog_free(LG2GitReflogO reflog)) options: #(  )
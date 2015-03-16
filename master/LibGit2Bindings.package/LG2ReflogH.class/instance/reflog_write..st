foreign interface
reflog_write: reflog 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reflog_write(LG2GitReflogO reflog)) options: #(  )
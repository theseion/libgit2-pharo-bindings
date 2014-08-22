foreign interface
reflog_entrycount: reflog 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reflog_entrycount(LG2GitReflogO reflog)) options: #(  )
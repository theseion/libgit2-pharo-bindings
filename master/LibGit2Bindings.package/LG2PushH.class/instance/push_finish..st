foreign interface
push_finish: push 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_push_finish(LG2GitPushO push)) options: #(  )
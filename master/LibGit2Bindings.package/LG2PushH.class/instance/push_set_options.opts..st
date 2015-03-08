foreign interface
push_set_options: push opts: opts 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_push_set_options(LG2GitPushO push, git_push_options * opts)) options: #(  )
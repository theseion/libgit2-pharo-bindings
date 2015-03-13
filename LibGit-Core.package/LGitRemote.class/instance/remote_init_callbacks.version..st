libgit-calls
remote_init_callbacks: opts version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_remote_init_callbacks(LGitRemoteCallbacks * opts, int version)) options: #(  )
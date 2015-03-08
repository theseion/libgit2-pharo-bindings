libgit - calls
remote_set_callbacks: remote callbacks: callbackStruct
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_remote_set_callbacks(self, LGitRemoteCallbacks * callbackStruct)) options: #(  )
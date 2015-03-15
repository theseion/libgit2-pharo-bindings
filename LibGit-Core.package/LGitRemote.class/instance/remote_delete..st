libgit-calls
remote_delete: remote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(#LGitReturnCodeEnum git_remote_delete(LGitRemote * self)) options: #(  )
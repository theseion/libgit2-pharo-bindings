libgit - calls
push_new: out remote:  aRemote 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_push_new(LGitPush * out, LGitRemote aRemote)) options: #(  )
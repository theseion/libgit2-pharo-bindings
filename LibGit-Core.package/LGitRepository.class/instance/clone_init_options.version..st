libgit-calls
clone_init_options: opts version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		callUnchecked: #(#LGitReturnCodeEnum git_clone_init_options(LGitCloneOptions  * opts, int version))
		options: #(  )
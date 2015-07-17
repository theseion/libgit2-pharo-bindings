libgit-calls
push_init_options: options version: version
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	self
		callUnchecked: #(LGitReturnCodeEnum git_push_init_options(LGitPushOptions * self, LGitOptionsVersionsEnum version))
		options: #()
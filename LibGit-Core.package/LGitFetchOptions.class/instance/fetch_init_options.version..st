libgit-calls
fetch_init_options: opts version: version
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		callUnchecked: #(LGitReturnCodeEnum git_fetch_init_options(LGitFetchOptions * self, LGitOptionsVersionsEnum version))
		options: #(  )
libgit-calls
diff_init_options: opts version: version
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_diff_init_options(LGitDiffOptions * self, LGitDiffOptionsVersionEnum version))
		options: #(  )
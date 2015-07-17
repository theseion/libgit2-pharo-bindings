libgit-calls
diff_find_init_options: opts version: version
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		callUnchecked: #(LGitReturnCodeEnum git_diff_find_init_options(LGitDiffFindOptions * self, LGitOptionsVersionsEnum version))
		options: #(  )
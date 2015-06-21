libgit-calls
diff_find_init_options: opts version: version
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum int git_diff_find_init_options(self, LGitDiffFindOptionsVersionEnum version))
		options: #(  )
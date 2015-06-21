libgit-calls
diff_get_stats: out diff: diff
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_diff_get_stats(LGitDiffStats * out, self))
		options: #(  )
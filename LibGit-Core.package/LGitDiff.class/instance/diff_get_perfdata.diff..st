libgit-calls
diff_get_perfdata: out diff: diff
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^ self
		call: #(LGitReturnCodeEnum git_diff_get_perfdata(LGitDiffPerfData * out, self))
		options: #(  )